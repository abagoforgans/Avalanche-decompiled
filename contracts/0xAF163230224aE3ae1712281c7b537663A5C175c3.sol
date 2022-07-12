contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2, address arg3)
#  - withdrawNFT(uint256 arg1, uint256 arg2)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - sub_9ca2cb1a(?)
#  - deposit(uint256 arg1, uint256 arg2, uint256 arg3, address arg4)
#  - _fallback()
#
const BONUS_MULTIPLIER = 2


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address WETHAddress;
address sushiAddress;
address devaddr;
uint256 bonusEndTime;
uint256 sub_4f981416;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
array of address stor79391016176638235741158274555008381105248383447821184344916839384899551908764;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908765;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908766;
array of uint8 stor79391016176638235741158274555008381105248383447821184344916839384899551908767;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908768;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908769;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908770;
array of uint256 stor79391016176638235741158274555008381105248383447821184344916839384899551908771;

function poolLength() {
    return poolInfo.length
}

function sushi() {
    return sushiAddress
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           bool(poolInfo[arg1].field_768),
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792
}

function totalAllocPoint() {
    return totalAllocPoint
}

function sub_4f981416(?) {
    return sub_4f981416
}

function startTime() {
    return startTime
}

function owner() {
    return address(owner)
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           bool(userInfo[arg1][arg2].field_1024),
           userInfo[arg1][arg2].field_1024
}

function WETH() {
    return WETHAddress
}

function devaddr() {
    return devaddr
}

function bonusEndTime() {
    return bonusEndTime
}

function setPerBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!dev addr'
    sub_4f981416 = arg1
}

function dev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function getTimeMultiplex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 100
    if arg1 <= 168 * 24 * 3600:
        return 102
    if arg1 <= 336 * 24 * 3600:
        return 104
    if arg1 <= 8568 * 24 * 3600:
        return 202
    return 204
}

function formatDuration(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    if arg1 <= 168 * 24 * 3600:
        return (168 * 24 * 3600)
    if arg1 <= 336 * 24 * 3600:
        return (336 * 24 * 3600)
    if arg1 <= 8568 * 24 * 3600:
        return (8568 * 24 * 3600)
    return (8736 * 24 * 3600)
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndTime:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < arg1:
            revert with 0, 17
        if not arg2 - arg1:
            return 0
        if arg2 - arg1 and 2 > -1 / arg2 - arg1:
            revert with 0, 17
        if not arg2 - arg1:
            revert with 0, 18
        if 2 * arg2 - arg1 / arg2 - arg1 != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        return (2 * arg2 - arg1)
    if arg1 >= bonusEndTime:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if bonusEndTime > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < bonusEndTime:
        revert with 0, 17
    if arg1 > bonusEndTime:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndTime < arg1:
        revert with 0, 17
    if not bonusEndTime - arg1:
        if 0 > !(arg2 - bonusEndTime):
            revert with 0, 17
        if arg2 - bonusEndTime < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndTime)
    if bonusEndTime - arg1 and 2 > -1 / bonusEndTime - arg1:
        revert with 0, 17
    if not bonusEndTime - arg1:
        revert with 0, 18
    if 2 * bonusEndTime - arg1 / bonusEndTime - arg1 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if 2 * bonusEndTime - arg1 > !(arg2 - bonusEndTime):
        revert with 0, 17
    if (2 * bonusEndTime - arg1) + arg2 - bonusEndTime < 2 * bonusEndTime - arg1:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * bonusEndTime - arg1) + arg2 - bonusEndTime)
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
        emit OwnershipTransferred(0, msg.sender);
        sushiAddress = arg1
        devaddr = arg2
        WETHAddress = arg3
        sub_4f981416 = arg4
        startTime = arg5
        bonusEndTime = arg6
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
            emit OwnershipTransferred(0, msg.sender);
            sushiAddress = arg1
            devaddr = arg2
            WETHAddress = arg3
            sub_4f981416 = arg4
            startTime = arg5
            bonusEndTime = arg6
        else:
            uint16(stor0.field_0) = 257
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
                emit OwnershipTransferred(0, msg.sender);
                sushiAddress = arg1
                devaddr = arg2
                WETHAddress = arg3
                sub_4f981416 = arg4
                startTime = arg5
                bonusEndTime = arg6
            else:
                uint16(stor0.field_0) = 257
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
                    emit OwnershipTransferred(0, msg.sender);
                    sushiAddress = arg1
                    devaddr = arg2
                    WETHAddress = arg3
                    sub_4f981416 = arg4
                    startTime = arg5
                    bonusEndTime = arg6
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
                        emit OwnershipTransferred(0, msg.sender);
                        sushiAddress = arg1
                        devaddr = arg2
                        WETHAddress = arg3
                        sub_4f981416 = arg4
                        startTime = arg5
                        bonusEndTime = arg6
                    else:
                        uint16(stor0.field_0) = 257
                        uint256(stor101) = msg.sender or Mask(96, 160, uint256(stor101))
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sushiAddress = arg1
                        devaddr = arg2
                        WETHAddress = arg3
                        sub_4f981416 = arg4
                        startTime = arg5
                        bonusEndTime = arg6
                        uint8(stor0.field_8) = 0
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_1536:
        if poolInfo[arg1].field_512:
            if block.timestamp <= bonusEndTime:
                if poolInfo[arg1].field_1536 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < poolInfo[arg1].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[arg1].field_1536:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 0 / totalAllocPoint:
                        emit Mint(0, this.address);
                        if not poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                            revert with 0, 17
                        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                    else:
                        emit Mint((0 / totalAllocPoint), this.address);
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                            revert with 0, 17
                        if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                else:
                    if block.timestamp - poolInfo[arg1].field_1536 and 2 > -1 / block.timestamp - poolInfo[arg1].field_1536:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_1536:
                        revert with 0, 18
                    if 2 * block.timestamp - poolInfo[arg1].field_1536 / block.timestamp - poolInfo[arg1].field_1536 != 2:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not 2 * block.timestamp - poolInfo[arg1].field_1536:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / totalAllocPoint:
                            emit Mint(0, this.address);
                            if not poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                revert with 0, 17
                            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                        else:
                            emit Mint((0 / totalAllocPoint), this.address);
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                revert with 0, 17
                            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                    else:
                        if uint255(block.timestamp - poolInfo[arg1].field_1536) and sub_4f981416 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536:
                            revert with 0, 17
                        if not 2 * block.timestamp - poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 / 2 * block.timestamp - poolInfo[arg1].field_1536 != sub_4f981416:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint((0 / totalAllocPoint), this.address);
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                        else:
                            if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 and poolInfo[arg1].field_256 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
                                revert with 0, 17
                            if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
                                revert with 0, 18
                            if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint((2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint), this.address);
                                if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 0, 17
                                if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512
            else:
                if poolInfo[arg1].field_1536 >= bonusEndTime:
                    if poolInfo[arg1].field_1536 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if block.timestamp < poolInfo[arg1].field_1536:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_1536:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        if not 0 / totalAllocPoint:
                            emit Mint(0, this.address);
                            if not poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                revert with 0, 17
                            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                        else:
                            emit Mint((0 / totalAllocPoint), this.address);
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                revert with 0, 17
                            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                    else:
                        if block.timestamp - poolInfo[arg1].field_1536 and sub_4f981416 > -1 / block.timestamp - poolInfo[arg1].field_1536:
                            revert with 0, 17
                        if not block.timestamp - poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) / block.timestamp - poolInfo[arg1].field_1536 != sub_4f981416:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint((0 / totalAllocPoint), this.address);
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                        else:
                            if (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
                                revert with 0, 17
                            if not (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
                                revert with 0, 18
                            if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint(((block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint), this.address);
                                if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512
                else:
                    if bonusEndTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if block.timestamp < bonusEndTime:
                        revert with 0, 17
                    if poolInfo[arg1].field_1536 > bonusEndTime:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if bonusEndTime < poolInfo[arg1].field_1536:
                        revert with 0, 17
                    if not bonusEndTime - poolInfo[arg1].field_1536:
                        if 0 > !(block.timestamp - bonusEndTime):
                            revert with 0, 17
                        if block.timestamp - bonusEndTime < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.timestamp - bonusEndTime:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint((0 / totalAllocPoint), this.address);
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                        else:
                            if block.timestamp - bonusEndTime and sub_4f981416 > -1 / block.timestamp - bonusEndTime:
                                revert with 0, 17
                            if not block.timestamp - bonusEndTime:
                                revert with 0, 18
                            if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / block.timestamp - bonusEndTime != sub_4f981416:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not 0 / totalAllocPoint:
                                    emit Mint(0, this.address);
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                                else:
                                    emit Mint((0 / totalAllocPoint), this.address);
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                            else:
                                if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                    revert with 0, 17
                                if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                    revert with 0, 18
                                if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    emit Mint(0, this.address);
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                                else:
                                    emit Mint(((block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint), this.address);
                                    if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512
                    else:
                        if bonusEndTime - poolInfo[arg1].field_1536 and 2 > -1 / bonusEndTime - poolInfo[arg1].field_1536:
                            revert with 0, 17
                        if not bonusEndTime - poolInfo[arg1].field_1536:
                            revert with 0, 18
                        if 2 * bonusEndTime - poolInfo[arg1].field_1536 / bonusEndTime - poolInfo[arg1].field_1536 != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 2 * bonusEndTime - poolInfo[arg1].field_1536 > !(block.timestamp - bonusEndTime):
                            revert with 0, 17
                        if (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime < 2 * bonusEndTime - poolInfo[arg1].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            if not 0 / totalAllocPoint:
                                emit Mint(0, this.address);
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                            else:
                                emit Mint((0 / totalAllocPoint), this.address);
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                    revert with 0, 17
                                if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                        else:
                            if (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime and sub_4f981416 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
                                revert with 0, 17
                            if not (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
                                revert with 0, 18
                            if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime != sub_4f981416:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not 0 / totalAllocPoint:
                                    emit Mint(0, this.address);
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                                else:
                                    emit Mint((0 / totalAllocPoint), this.address);
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512
                            else:
                                if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                    revert with 0, 17
                                if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                                    revert with 0, 18
                                if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not totalAllocPoint:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                    emit Mint(0, this.address);
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_512
                                else:
                                    emit Mint(((2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint), this.address);
                                    if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if poolInfo[arg1].field_1792 > !(10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_1792 += 10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512
        poolInfo[arg1].field_1536 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 156
        if block.timestamp <= poolInfo[idx].field_1536:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_512:
            poolInfo[idx].field_1536 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp <= bonusEndTime:
            _415 = mem[64]
            mem[64] = mem[64] + 64
            mem[_415] = 30
            mem[_415 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > block.timestamp:
                _418 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _418 + 68] = mem[idx + _415 + 32]
                    idx = idx + 32
                    continue 
                mem[_418 + 98] = 0
                revert with memory
                  from mem[64]
                   len _418 + -mem[64] + 100
            if block.timestamp < poolInfo[idx].field_1536:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_1536:
                _446 = mem[64]
                mem[64] = mem[64] + 64
                mem[_446] = 26
                mem[_446 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _447 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _447 + 68] = mem[idx + _446 + 32]
                        idx = idx + 32
                        continue 
                    mem[_447 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _447 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_507] = 26
                    mem[_507 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _519 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _519 + 68] = mem[idx + _507 + 32]
                        idx = idx + 32
                        continue 
                    mem[_519 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _519 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _548 = mem[64]
                mem[64] = mem[64] + 64
                mem[_548] = 26
                mem[_548 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _562 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _562 + 68] = mem[idx + _548 + 32]
                    idx = idx + 32
                    continue 
                mem[_562 + 94] = 0
                revert with memory
                  from mem[64]
                   len _562 + -mem[64] + 100
            if block.timestamp - poolInfo[idx].field_1536 and 2 > -1 / block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 18
            if 2 * block.timestamp - poolInfo[idx].field_1536 / block.timestamp - poolInfo[idx].field_1536 != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * block.timestamp - poolInfo[idx].field_1536:
                _462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_462] = 26
                mem[_462 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _469 + 68] = mem[idx + _462 + 32]
                        idx = idx + 32
                        continue 
                    mem[_469 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _469 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_547] = 26
                    mem[_547 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _561 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _561 + 68] = mem[idx + _547 + 32]
                        idx = idx + 32
                        continue 
                    mem[_561 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _561 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _598 = mem[64]
                mem[64] = mem[64] + 64
                mem[_598] = 26
                mem[_598 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _618 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _618 + 68] = mem[idx + _598 + 32]
                    idx = idx + 32
                    continue 
                mem[_618 + 94] = 0
                revert with memory
                  from mem[64]
                   len _618 + -mem[64] + 100
            if uint255(block.timestamp - poolInfo[idx].field_1536) and sub_4f981416 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 17
            if not 2 * block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 18
            if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 / 2 * block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                revert with 0, 'SafeMath: multiplication overflow'
            if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                _487 = mem[64]
                mem[64] = mem[64] + 64
                mem[_487] = 26
                mem[_487 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _492 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _492 + 68] = mem[idx + _487 + 32]
                        idx = idx + 32
                        continue 
                    mem[_492 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _492 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _597 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_597] = 26
                    mem[_597 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _617 + 68] = mem[idx + _597 + 32]
                        idx = idx + 32
                        continue 
                    mem[_617 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _617 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _653 = mem[64]
                mem[64] = mem[64] + 64
                mem[_653] = 26
                mem[_653 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _673 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _673 + 68] = mem[idx + _653 + 32]
                    idx = idx + 32
                    continue 
                mem[_673 + 94] = 0
                revert with memory
                  from mem[64]
                   len _673 + -mem[64] + 100
            if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 and poolInfo[idx].field_256 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                revert with 0, 17
            if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                revert with 0, 18
            if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _517 = mem[64]
            mem[64] = mem[64] + 64
            mem[_517] = 26
            mem[_517 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _526 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _526 + 68] = mem[idx + _517 + 32]
                    idx = idx + 32
                    continue 
                mem[_526 + 94] = 0
                revert with memory
                  from mem[64]
                   len _526 + -mem[64] + 100
            if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_652] = 26
                mem[_652 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _672 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _672 + 68] = mem[idx + _652 + 32]
                    idx = idx + 32
                    continue 
                mem[_672 + 94] = 0
                revert with memory
                  from mem[64]
                   len _672 + -mem[64] + 100
            mem[mem[64]] = 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint
            emit Mint((2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint), this.address);
            if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                revert with 0, 17
            if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _706 = mem[64]
            mem[64] = mem[64] + 64
            mem[_706] = 26
            mem[_706 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _721 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _721 + 68] = mem[idx + _706 + 32]
                idx = idx + 32
                continue 
            mem[_721 + 94] = 0
            revert with memory
              from mem[64]
               len _721 + -mem[64] + 100
        if poolInfo[idx].field_1536 >= bonusEndTime:
            _417 = mem[64]
            mem[64] = mem[64] + 64
            mem[_417] = 30
            mem[_417 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > block.timestamp:
                _420 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _420 + 68] = mem[idx + _417 + 32]
                    idx = idx + 32
                    continue 
                mem[_420 + 98] = 0
                revert with memory
                  from mem[64]
                   len _420 + -mem[64] + 100
            if block.timestamp < poolInfo[idx].field_1536:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_1536:
                _442 = mem[64]
                mem[64] = mem[64] + 64
                mem[_442] = 26
                mem[_442 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _444 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _444 + 68] = mem[idx + _442 + 32]
                        idx = idx + 32
                        continue 
                    mem[_444 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _444 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_491] = 26
                    mem[_491 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _496 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _496 + 68] = mem[idx + _491 + 32]
                        idx = idx + 32
                        continue 
                    mem[_496 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _496 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _523 = mem[64]
                mem[64] = mem[64] + 64
                mem[_523] = 26
                mem[_523 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _533 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _533 + 68] = mem[idx + _523 + 32]
                    idx = idx + 32
                    continue 
                mem[_533 + 94] = 0
                revert with memory
                  from mem[64]
                   len _533 + -mem[64] + 100
            if block.timestamp - poolInfo[idx].field_1536 and sub_4f981416 > -1 / block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_1536:
                revert with 0, 18
            if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) / block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                _450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_450] = 26
                mem[_450 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _455 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _455 + 68] = mem[idx + _450 + 32]
                        idx = idx + 32
                        continue 
                    mem[_455 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _455 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_522] = 26
                    mem[_522 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _532 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _532 + 68] = mem[idx + _522 + 32]
                        idx = idx + 32
                        continue 
                    mem[_532 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _532 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_567] = 26
                mem[_567 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _583 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _583 + 68] = mem[idx + _567 + 32]
                    idx = idx + 32
                    continue 
                mem[_583 + 94] = 0
                revert with memory
                  from mem[64]
                   len _583 + -mem[64] + 100
            if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                revert with 0, 17
            if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                revert with 0, 18
            if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _471 = mem[64]
            mem[64] = mem[64] + 64
            mem[_471] = 26
            mem[_471 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _481 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _481 + 68] = mem[idx + _471 + 32]
                    idx = idx + 32
                    continue 
                mem[_481 + 94] = 0
                revert with memory
                  from mem[64]
                   len _481 + -mem[64] + 100
            if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _566 = mem[64]
                mem[64] = mem[64] + 64
                mem[_566] = 26
                mem[_566 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _582 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _582 + 68] = mem[idx + _566 + 32]
                    idx = idx + 32
                    continue 
                mem[_582 + 94] = 0
                revert with memory
                  from mem[64]
                   len _582 + -mem[64] + 100
            mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
            emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
            if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _625 = mem[64]
            mem[64] = mem[64] + 64
            mem[_625] = 26
            mem[_625 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _644 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _644 + 68] = mem[idx + _625 + 32]
                idx = idx + 32
                continue 
            mem[_644 + 94] = 0
            revert with memory
              from mem[64]
               len _644 + -mem[64] + 100
        _416 = mem[64]
        mem[64] = mem[64] + 64
        mem[_416] = 30
        mem[_416 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndTime > block.timestamp:
            _419 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _419 + 68] = mem[idx + _416 + 32]
                idx = idx + 32
                continue 
            mem[_419 + 98] = 0
            revert with memory
              from mem[64]
               len _419 + -mem[64] + 100
        if block.timestamp < bonusEndTime:
            revert with 0, 17
        _427 = mem[64]
        mem[64] = mem[64] + 64
        mem[_427] = 30
        mem[_427 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_1536 > bonusEndTime:
            _434 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _434 + 68] = mem[idx + _427 + 32]
                idx = idx + 32
                continue 
            mem[_434 + 98] = 0
            revert with memory
              from mem[64]
               len _434 + -mem[64] + 100
        if bonusEndTime < poolInfo[idx].field_1536:
            revert with 0, 17
        if not bonusEndTime - poolInfo[idx].field_1536:
            if 0 > !(block.timestamp - bonusEndTime):
                revert with 0, 17
            if block.timestamp - bonusEndTime < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.timestamp - bonusEndTime:
                _494 = mem[64]
                mem[64] = mem[64] + 64
                mem[_494] = 26
                mem[_494 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _508 + 68] = mem[idx + _494 + 32]
                        idx = idx + 32
                        continue 
                    mem[_508 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _508 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_624] = 26
                    mem[_624 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _643 + 68] = mem[idx + _624 + 32]
                        idx = idx + 32
                        continue 
                    mem[_643 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _643 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 26
                mem[_680 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _697 + 68] = mem[idx + _680 + 32]
                    idx = idx + 32
                    continue 
                mem[_697 + 94] = 0
                revert with memory
                  from mem[64]
                   len _697 + -mem[64] + 100
            if block.timestamp - bonusEndTime and sub_4f981416 > -1 / block.timestamp - bonusEndTime:
                revert with 0, 17
            if not block.timestamp - bonusEndTime:
                revert with 0, 18
            if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / block.timestamp - bonusEndTime != sub_4f981416:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                _530 = mem[64]
                mem[64] = mem[64] + 64
                mem[_530] = 26
                mem[_530 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _551 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _551 + 68] = mem[idx + _530 + 32]
                        idx = idx + 32
                        continue 
                    mem[_551 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _551 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_679] = 26
                    mem[_679 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _696 + 68] = mem[idx + _679 + 32]
                        idx = idx + 32
                        continue 
                    mem[_696 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _696 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _728 = mem[64]
                mem[64] = mem[64] + 64
                mem[_728] = 26
                mem[_728 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _743 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _743 + 68] = mem[idx + _728 + 32]
                    idx = idx + 32
                    continue 
                mem[_743 + 94] = 0
                revert with memory
                  from mem[64]
                   len _743 + -mem[64] + 100
            if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 17
            if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 18
            if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _580 = mem[64]
            mem[64] = mem[64] + 64
            mem[_580] = 26
            mem[_580 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _603 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _603 + 68] = mem[idx + _580 + 32]
                    idx = idx + 32
                    continue 
                mem[_603 + 94] = 0
                revert with memory
                  from mem[64]
                   len _603 + -mem[64] + 100
            if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _727 = mem[64]
                mem[64] = mem[64] + 64
                mem[_727] = 26
                mem[_727 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _742 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _742 + 68] = mem[idx + _727 + 32]
                    idx = idx + 32
                    continue 
                mem[_742 + 94] = 0
                revert with memory
                  from mem[64]
                   len _742 + -mem[64] + 100
            mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
            emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
            if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _768 = mem[64]
            mem[64] = mem[64] + 64
            mem[_768] = 26
            mem[_768 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _780 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _780 + 68] = mem[idx + _768 + 32]
                idx = idx + 32
                continue 
            mem[_780 + 94] = 0
            revert with memory
              from mem[64]
               len _780 + -mem[64] + 100
        if bonusEndTime - poolInfo[idx].field_1536 and 2 > -1 / bonusEndTime - poolInfo[idx].field_1536:
            revert with 0, 17
        if not bonusEndTime - poolInfo[idx].field_1536:
            revert with 0, 18
        if 2 * bonusEndTime - poolInfo[idx].field_1536 / bonusEndTime - poolInfo[idx].field_1536 != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if 2 * bonusEndTime - poolInfo[idx].field_1536 > !(block.timestamp - bonusEndTime):
            revert with 0, 17
        if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime < 2 * bonusEndTime - poolInfo[idx].field_1536:
            revert with 0, 'SafeMath: addition overflow'
        if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
            _529 = mem[64]
            mem[64] = mem[64] + 64
            mem[_529] = 26
            mem[_529 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _550 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _550 + 68] = mem[idx + _529 + 32]
                    idx = idx + 32
                    continue 
                mem[_550 + 94] = 0
                revert with memory
                  from mem[64]
                   len _550 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_676] = 26
                mem[_676 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _695 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _695 + 68] = mem[idx + _676 + 32]
                    idx = idx + 32
                    continue 
                mem[_695 + 94] = 0
                revert with memory
                  from mem[64]
                   len _695 + -mem[64] + 100
            mem[mem[64]] = 0 / totalAllocPoint
            emit Mint((0 / totalAllocPoint), this.address);
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_725] = 26
            mem[_725 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _741 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _741 + 68] = mem[idx + _725 + 32]
                idx = idx + 32
                continue 
            mem[_741 + 94] = 0
            revert with memory
              from mem[64]
               len _741 + -mem[64] + 100
        if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime and sub_4f981416 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
            revert with 0, 17
        if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
            revert with 0, 18
        if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime != sub_4f981416:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            _578 = mem[64]
            mem[64] = mem[64] + 64
            mem[_578] = 26
            mem[_578 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _602 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _602 + 68] = mem[idx + _578 + 32]
                    idx = idx + 32
                    continue 
                mem[_602 + 94] = 0
                revert with memory
                  from mem[64]
                   len _602 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _724 = mem[64]
                mem[64] = mem[64] + 64
                mem[_724] = 26
                mem[_724 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _740 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _740 + 68] = mem[idx + _724 + 32]
                    idx = idx + 32
                    continue 
                mem[_740 + 94] = 0
                revert with memory
                  from mem[64]
                   len _740 + -mem[64] + 100
            mem[mem[64]] = 0 / totalAllocPoint
            emit Mint((0 / totalAllocPoint), this.address);
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_764] = 26
            mem[_764 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _779 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _779 + 68] = mem[idx + _764 + 32]
                idx = idx + 32
                continue 
            mem[_779 + 94] = 0
            revert with memory
              from mem[64]
               len _779 + -mem[64] + 100
        if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            revert with 0, 17
        if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            revert with 0, 18
        if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _640 = mem[64]
        mem[64] = mem[64] + 64
        mem[_640] = 26
        mem[_640 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _658 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _658 + 68] = mem[idx + _640 + 32]
                idx = idx + 32
                continue 
            mem[_658 + 94] = 0
            revert with memory
              from mem[64]
               len _658 + -mem[64] + 100
        if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
            mem[mem[64]] = 0
            emit Mint(0, this.address);
            _763 = mem[64]
            mem[64] = mem[64] + 64
            mem[_763] = 26
            mem[_763 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _778 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _778 + 68] = mem[idx + _763 + 32]
                idx = idx + 32
                continue 
            mem[_778 + 94] = 0
            revert with memory
              from mem[64]
               len _778 + -mem[64] + 100
        mem[mem[64]] = (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
        emit Mint(((2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
        if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _796 = mem[64]
        mem[64] = mem[64] + 64
        mem[_796] = 26
        mem[_796 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_512:
            if poolInfo[idx].field_1792 > !(10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                revert with 0, 17
            if poolInfo[idx].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1792 += 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
            poolInfo[idx].field_1536 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _808 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _808 + 68] = mem[idx + _796 + 32]
            idx = idx + 32
            continue 
        mem[_808 + 94] = 0
        revert with memory
          from mem[64]
           len _808 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 128
    require arg3 == arg3
    if address(owner) != msg.sender:
        revert with 0, '!dev addr'
    if arg4 > 50:
        revert with 0, '!withdraw <= 5%'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 156
            if block.timestamp <= poolInfo[idx].field_1536:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_512:
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp <= bonusEndTime:
                _448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_448] = 30
                mem[_448 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1536 > block.timestamp:
                    _452 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _452 + 68] = mem[idx + _448 + 32]
                        idx = idx + 32
                        continue 
                    mem[_452 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _452 + -mem[64] + 100
                if block.timestamp < poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    _486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_486] = 26
                    mem[_486 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _487 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _487 + 68] = mem[idx + _486 + 32]
                            idx = idx + 32
                            continue 
                        mem[_487 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _487 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _547 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_547] = 26
                        mem[_547 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _559 + 68] = mem[idx + _547 + 32]
                            idx = idx + 32
                            continue 
                        mem[_559 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _559 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_588] = 26
                    mem[_588 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _602 + 68] = mem[idx + _588 + 32]
                        idx = idx + 32
                        continue 
                    mem[_602 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _602 + -mem[64] + 100
                if block.timestamp - poolInfo[idx].field_1536 and 2 > -1 / block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 / block.timestamp - poolInfo[idx].field_1536 != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 2 * block.timestamp - poolInfo[idx].field_1536:
                    _502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_502] = 26
                    mem[_502 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _509 + 68] = mem[idx + _502 + 32]
                            idx = idx + 32
                            continue 
                        mem[_509 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _509 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _587 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_587] = 26
                        mem[_587 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _601 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _601 + 68] = mem[idx + _587 + 32]
                            idx = idx + 32
                            continue 
                        mem[_601 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _601 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _638 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_638] = 26
                    mem[_638 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _658 + 68] = mem[idx + _638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_658 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _658 + -mem[64] + 100
                if uint255(block.timestamp - poolInfo[idx].field_1536) and sub_4f981416 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 / 2 * block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    _527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_527] = 26
                    mem[_527 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _532 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _532 + 68] = mem[idx + _527 + 32]
                            idx = idx + 32
                            continue 
                        mem[_532 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _532 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_637] = 26
                        mem[_637 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _657 + 68] = mem[idx + _637 + 32]
                            idx = idx + 32
                            continue 
                        mem[_657 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _657 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _693 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_693] = 26
                    mem[_693 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _713 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _713 + 68] = mem[idx + _693 + 32]
                        idx = idx + 32
                        continue 
                    mem[_713 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _713 + -mem[64] + 100
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 and poolInfo[idx].field_256 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _557 = mem[64]
                mem[64] = mem[64] + 64
                mem[_557] = 26
                mem[_557 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _566 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _566 + 68] = mem[idx + _557 + 32]
                        idx = idx + 32
                        continue 
                    mem[_566 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _566 + -mem[64] + 100
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _692 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_692] = 26
                    mem[_692 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _712 + 68] = mem[idx + _692 + 32]
                        idx = idx + 32
                        continue 
                    mem[_712 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _712 + -mem[64] + 100
                mem[mem[64]] = 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint
                emit Mint((2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint), this.address);
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_746] = 26
                mem[_746 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _761 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _761 + 68] = mem[idx + _746 + 32]
                    idx = idx + 32
                    continue 
                mem[_761 + 94] = 0
                revert with memory
                  from mem[64]
                   len _761 + -mem[64] + 100
            if poolInfo[idx].field_1536 >= bonusEndTime:
                _450 = mem[64]
                mem[64] = mem[64] + 64
                mem[_450] = 30
                mem[_450 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1536 > block.timestamp:
                    _454 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _454 + 68] = mem[idx + _450 + 32]
                        idx = idx + 32
                        continue 
                    mem[_454 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _454 + -mem[64] + 100
                if block.timestamp < poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    _482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_482] = 26
                    mem[_482 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _484 + 68] = mem[idx + _482 + 32]
                            idx = idx + 32
                            continue 
                        mem[_484 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _484 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_531] = 26
                        mem[_531 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _536 + 68] = mem[idx + _531 + 32]
                            idx = idx + 32
                            continue 
                        mem[_536 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _536 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_563] = 26
                    mem[_563 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _573 + 68] = mem[idx + _563 + 32]
                        idx = idx + 32
                        continue 
                    mem[_573 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _573 + -mem[64] + 100
                if block.timestamp - poolInfo[idx].field_1536 and sub_4f981416 > -1 / block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) / block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    _490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_490] = 26
                    mem[_490 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _495 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _495 + 68] = mem[idx + _490 + 32]
                            idx = idx + 32
                            continue 
                        mem[_495 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _495 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_562] = 26
                        mem[_562 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _572 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _572 + 68] = mem[idx + _562 + 32]
                            idx = idx + 32
                            continue 
                        mem[_572 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _572 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _607 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_607] = 26
                    mem[_607 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _623 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _623 + 68] = mem[idx + _607 + 32]
                        idx = idx + 32
                        continue 
                    mem[_623 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _623 + -mem[64] + 100
                if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    revert with 0, 18
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _511 = mem[64]
                mem[64] = mem[64] + 64
                mem[_511] = 26
                mem[_511 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _521 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _521 + 68] = mem[idx + _511 + 32]
                        idx = idx + 32
                        continue 
                    mem[_521 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _521 + -mem[64] + 100
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_606] = 26
                    mem[_606 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _622 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _622 + 68] = mem[idx + _606 + 32]
                        idx = idx + 32
                        continue 
                    mem[_622 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _622 + -mem[64] + 100
                mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
                emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_665] = 26
                mem[_665 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _684 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _684 + 68] = mem[idx + _665 + 32]
                    idx = idx + 32
                    continue 
                mem[_684 + 94] = 0
                revert with memory
                  from mem[64]
                   len _684 + -mem[64] + 100
            _449 = mem[64]
            mem[64] = mem[64] + 64
            mem[_449] = 30
            mem[_449 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndTime > block.timestamp:
                _453 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _453 + 68] = mem[idx + _449 + 32]
                    idx = idx + 32
                    continue 
                mem[_453 + 98] = 0
                revert with memory
                  from mem[64]
                   len _453 + -mem[64] + 100
            if block.timestamp < bonusEndTime:
                revert with 0, 17
            _465 = mem[64]
            mem[64] = mem[64] + 64
            mem[_465] = 30
            mem[_465 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > bonusEndTime:
                _474 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _474 + 68] = mem[idx + _465 + 32]
                    idx = idx + 32
                    continue 
                mem[_474 + 98] = 0
                revert with memory
                  from mem[64]
                   len _474 + -mem[64] + 100
            if bonusEndTime < poolInfo[idx].field_1536:
                revert with 0, 17
            if not bonusEndTime - poolInfo[idx].field_1536:
                if 0 > !(block.timestamp - bonusEndTime):
                    revert with 0, 17
                if block.timestamp - bonusEndTime < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.timestamp - bonusEndTime:
                    _534 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_534] = 26
                    mem[_534 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _548 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _548 + 68] = mem[idx + _534 + 32]
                            idx = idx + 32
                            continue 
                        mem[_548 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _548 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_664] = 26
                        mem[_664 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _683 + 68] = mem[idx + _664 + 32]
                            idx = idx + 32
                            continue 
                        mem[_683 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _683 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_720] = 26
                    mem[_720 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _737 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _737 + 68] = mem[idx + _720 + 32]
                        idx = idx + 32
                        continue 
                    mem[_737 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _737 + -mem[64] + 100
                if block.timestamp - bonusEndTime and sub_4f981416 > -1 / block.timestamp - bonusEndTime:
                    revert with 0, 17
                if not block.timestamp - bonusEndTime:
                    revert with 0, 18
                if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / block.timestamp - bonusEndTime != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    _570 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_570] = 26
                    mem[_570 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _591 + 68] = mem[idx + _570 + 32]
                            idx = idx + 32
                            continue 
                        mem[_591 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _591 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_719] = 26
                        mem[_719 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _736 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _736 + 68] = mem[idx + _719 + 32]
                            idx = idx + 32
                            continue 
                        mem[_736 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _736 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_768] = 26
                    mem[_768 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _783 + 68] = mem[idx + _768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_783 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _783 + -mem[64] + 100
                if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    revert with 0, 18
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _620 = mem[64]
                mem[64] = mem[64] + 64
                mem[_620] = 26
                mem[_620 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _643 + 68] = mem[idx + _620 + 32]
                        idx = idx + 32
                        continue 
                    mem[_643 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _643 + -mem[64] + 100
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _767 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_767] = 26
                    mem[_767 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _782 + 68] = mem[idx + _767 + 32]
                        idx = idx + 32
                        continue 
                    mem[_782 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _782 + -mem[64] + 100
                mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
                emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 26
                mem[_808 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _820 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _820 + 68] = mem[idx + _808 + 32]
                    idx = idx + 32
                    continue 
                mem[_820 + 94] = 0
                revert with memory
                  from mem[64]
                   len _820 + -mem[64] + 100
            if bonusEndTime - poolInfo[idx].field_1536 and 2 > -1 / bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 17
            if not bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 18
            if 2 * bonusEndTime - poolInfo[idx].field_1536 / bonusEndTime - poolInfo[idx].field_1536 != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if 2 * bonusEndTime - poolInfo[idx].field_1536 > !(block.timestamp - bonusEndTime):
                revert with 0, 17
            if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime < 2 * bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 'SafeMath: addition overflow'
            if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                _569 = mem[64]
                mem[64] = mem[64] + 64
                mem[_569] = 26
                mem[_569 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _590 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _590 + 68] = mem[idx + _569 + 32]
                        idx = idx + 32
                        continue 
                    mem[_590 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _590 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 26
                    mem[_716 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _735 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _735 + 68] = mem[idx + _716 + 32]
                        idx = idx + 32
                        continue 
                    mem[_735 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _735 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_765] = 26
                mem[_765 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _781 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _781 + 68] = mem[idx + _765 + 32]
                    idx = idx + 32
                    continue 
                mem[_781 + 94] = 0
                revert with memory
                  from mem[64]
                   len _781 + -mem[64] + 100
            if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime and sub_4f981416 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                revert with 0, 18
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime != sub_4f981416:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                _618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_618] = 26
                mem[_618 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _642 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _642 + 68] = mem[idx + _618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_642 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _642 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_764] = 26
                    mem[_764 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _780 + 68] = mem[idx + _764 + 32]
                        idx = idx + 32
                        continue 
                    mem[_780 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _780 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _804 = mem[64]
                mem[64] = mem[64] + 64
                mem[_804] = 26
                mem[_804 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _819 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _819 + 68] = mem[idx + _804 + 32]
                    idx = idx + 32
                    continue 
                mem[_819 + 94] = 0
                revert with memory
                  from mem[64]
                   len _819 + -mem[64] + 100
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 18
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _680 = mem[64]
            mem[64] = mem[64] + 64
            mem[_680] = 26
            mem[_680 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _698 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _698 + 68] = mem[idx + _680 + 32]
                    idx = idx + 32
                    continue 
                mem[_698 + 94] = 0
                revert with memory
                  from mem[64]
                   len _698 + -mem[64] + 100
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_803] = 26
                mem[_803 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _818 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _818 + 68] = mem[idx + _803 + 32]
                    idx = idx + 32
                    continue 
                mem[_818 + 94] = 0
                revert with memory
                  from mem[64]
                   len _818 + -mem[64] + 100
            mem[mem[64]] = (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
            emit Mint(((2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _836 = mem[64]
            mem[64] = mem[64] + 64
            mem[_836] = 26
            mem[_836 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _848 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _848 + 68] = mem[idx + _836 + 32]
                idx = idx + 32
                continue 
            mem[_848 + 94] = 0
            revert with memory
              from mem[64]
               len _848 + -mem[64] + 100
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg4
}

function add(uint256 arg1, address arg2, bool arg3, bool arg4, uint256 arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if address(owner) != msg.sender:
        revert with 0, '!dev addr'
    if arg5 >= 50:
        revert with 0, '!withdraw <= 5%'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 156
            if block.timestamp <= poolInfo[idx].field_1536:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_512:
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if block.timestamp <= bonusEndTime:
                _463 = mem[64]
                mem[64] = mem[64] + 64
                mem[_463] = 30
                mem[_463 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1536 > block.timestamp:
                    _488 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _488 + 68] = mem[idx + _463 + 32]
                        idx = idx + 32
                        continue 
                    mem[_488 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _488 + -mem[64] + 100
                if block.timestamp < poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    _516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_516] = 26
                    mem[_516 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _517 + 68] = mem[idx + _516 + 32]
                            idx = idx + 32
                            continue 
                        mem[_517 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _517 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_577] = 26
                        mem[_577 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _589 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _589 + 68] = mem[idx + _577 + 32]
                            idx = idx + 32
                            continue 
                        mem[_589 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _589 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_618] = 26
                    mem[_618 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _632 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _632 + 68] = mem[idx + _618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_632 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _632 + -mem[64] + 100
                if block.timestamp - poolInfo[idx].field_1536 and 2 > -1 / block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 / block.timestamp - poolInfo[idx].field_1536 != 2:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 2 * block.timestamp - poolInfo[idx].field_1536:
                    _532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_532] = 26
                    mem[_532 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _539 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _539 + 68] = mem[idx + _532 + 32]
                            idx = idx + 32
                            continue 
                        mem[_539 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _539 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _617 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_617] = 26
                        mem[_617 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _631 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _631 + 68] = mem[idx + _617 + 32]
                            idx = idx + 32
                            continue 
                        mem[_631 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _631 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _668 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_668] = 26
                    mem[_668 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _688 + 68] = mem[idx + _668 + 32]
                        idx = idx + 32
                        continue 
                    mem[_688 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _688 + -mem[64] + 100
                if uint255(block.timestamp - poolInfo[idx].field_1536) and sub_4f981416 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 / 2 * block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    _557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_557] = 26
                    mem[_557 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _562 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _562 + 68] = mem[idx + _557 + 32]
                            idx = idx + 32
                            continue 
                        mem[_562 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _562 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_667] = 26
                        mem[_667 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _687 + 68] = mem[idx + _667 + 32]
                            idx = idx + 32
                            continue 
                        mem[_687 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _687 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _723 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_723] = 26
                    mem[_723 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _743 + 68] = mem[idx + _723 + 32]
                        idx = idx + 32
                        continue 
                    mem[_743 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _743 + -mem[64] + 100
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 and poolInfo[idx].field_256 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416:
                    revert with 0, 18
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _587 = mem[64]
                mem[64] = mem[64] + 64
                mem[_587] = 26
                mem[_587 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _596 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _596 + 68] = mem[idx + _587 + 32]
                        idx = idx + 32
                        continue 
                    mem[_596 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _596 + -mem[64] + 100
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_722] = 26
                    mem[_722 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _742 + 68] = mem[idx + _722 + 32]
                        idx = idx + 32
                        continue 
                    mem[_742 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _742 + -mem[64] + 100
                mem[mem[64]] = 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint
                emit Mint((2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint), this.address);
                if 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 17
                if not 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _776 = mem[64]
                mem[64] = mem[64] + 64
                mem[_776] = 26
                mem[_776 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 2 * block.timestamp - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _791 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _791 + 68] = mem[idx + _776 + 32]
                    idx = idx + 32
                    continue 
                mem[_791 + 94] = 0
                revert with memory
                  from mem[64]
                   len _791 + -mem[64] + 100
            if poolInfo[idx].field_1536 >= bonusEndTime:
                _467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_467] = 30
                mem[_467 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1536 > block.timestamp:
                    _490 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _490 + 68] = mem[idx + _467 + 32]
                        idx = idx + 32
                        continue 
                    mem[_490 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _490 + -mem[64] + 100
                if block.timestamp < poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    _512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_512] = 26
                    mem[_512 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _514 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _514 + 68] = mem[idx + _512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_514 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _514 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_561] = 26
                        mem[_561 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _566 + 68] = mem[idx + _561 + 32]
                            idx = idx + 32
                            continue 
                        mem[_566 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _566 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_593] = 26
                    mem[_593 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _603 + 68] = mem[idx + _593 + 32]
                        idx = idx + 32
                        continue 
                    mem[_603 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _603 + -mem[64] + 100
                if block.timestamp - poolInfo[idx].field_1536 and sub_4f981416 > -1 / block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 17
                if not block.timestamp - poolInfo[idx].field_1536:
                    revert with 0, 18
                if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) / block.timestamp - poolInfo[idx].field_1536 != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    _520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_520] = 26
                    mem[_520 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _525 + 68] = mem[idx + _520 + 32]
                            idx = idx + 32
                            continue 
                        mem[_525 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _525 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_592] = 26
                        mem[_592 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _602 + 68] = mem[idx + _592 + 32]
                            idx = idx + 32
                            continue 
                        mem[_602 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _602 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_637] = 26
                    mem[_637 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _653 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _653 + 68] = mem[idx + _637 + 32]
                        idx = idx + 32
                        continue 
                    mem[_653 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _653 + -mem[64] + 100
                if (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416):
                    revert with 0, 18
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (poolInfo[idx].field_1536 * sub_4f981416) != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _541 = mem[64]
                mem[64] = mem[64] + 64
                mem[_541] = 26
                mem[_541 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _551 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _551 + 68] = mem[idx + _541 + 32]
                        idx = idx + 32
                        continue 
                    mem[_551 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _551 + -mem[64] + 100
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _636 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_636] = 26
                    mem[_636 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _652 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _652 + 68] = mem[idx + _636 + 32]
                        idx = idx + 32
                        continue 
                    mem[_652 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _652 + -mem[64] + 100
                mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
                emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_695] = 26
                mem[_695 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _714 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _714 + 68] = mem[idx + _695 + 32]
                    idx = idx + 32
                    continue 
                mem[_714 + 94] = 0
                revert with memory
                  from mem[64]
                   len _714 + -mem[64] + 100
            _466 = mem[64]
            mem[64] = mem[64] + 64
            mem[_466] = 30
            mem[_466 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndTime > block.timestamp:
                _489 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _489 + 68] = mem[idx + _466 + 32]
                    idx = idx + 32
                    continue 
                mem[_489 + 98] = 0
                revert with memory
                  from mem[64]
                   len _489 + -mem[64] + 100
            if block.timestamp < bonusEndTime:
                revert with 0, 17
            _497 = mem[64]
            mem[64] = mem[64] + 64
            mem[_497] = 30
            mem[_497 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > bonusEndTime:
                _504 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _504 + 68] = mem[idx + _497 + 32]
                    idx = idx + 32
                    continue 
                mem[_504 + 98] = 0
                revert with memory
                  from mem[64]
                   len _504 + -mem[64] + 100
            if bonusEndTime < poolInfo[idx].field_1536:
                revert with 0, 17
            if not bonusEndTime - poolInfo[idx].field_1536:
                if 0 > !(block.timestamp - bonusEndTime):
                    revert with 0, 17
                if block.timestamp - bonusEndTime < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.timestamp - bonusEndTime:
                    _564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_564] = 26
                    mem[_564 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _578 + 68] = mem[idx + _564 + 32]
                            idx = idx + 32
                            continue 
                        mem[_578 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _578 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_694] = 26
                        mem[_694 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _713 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _713 + 68] = mem[idx + _694 + 32]
                            idx = idx + 32
                            continue 
                        mem[_713 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _713 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _750 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_750] = 26
                    mem[_750 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _767 + 68] = mem[idx + _750 + 32]
                        idx = idx + 32
                        continue 
                    mem[_767 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _767 + -mem[64] + 100
                if block.timestamp - bonusEndTime and sub_4f981416 > -1 / block.timestamp - bonusEndTime:
                    revert with 0, 17
                if not block.timestamp - bonusEndTime:
                    revert with 0, 18
                if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / block.timestamp - bonusEndTime != sub_4f981416:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    _600 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_600] = 26
                    mem[_600 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _621 + 68] = mem[idx + _600 + 32]
                            idx = idx + 32
                            continue 
                        mem[_621 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _621 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        mem[mem[64]] = 0
                        emit Mint(0, this.address);
                        _749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_749] = 26
                        mem[_749 + 32] = 'SafeMath: division by zero'
                        if poolInfo[idx].field_512:
                            if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                                revert with 0, 17
                            if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                            poolInfo[idx].field_1536 = block.timestamp
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _766 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _766 + 68] = mem[idx + _749 + 32]
                            idx = idx + 32
                            continue 
                        mem[_766 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _766 + -mem[64] + 100
                    mem[mem[64]] = 0 / totalAllocPoint
                    emit Mint((0 / totalAllocPoint), this.address);
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 26
                    mem[_798 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _813 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _813 + 68] = mem[idx + _798 + 32]
                        idx = idx + 32
                        continue 
                    mem[_813 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _813 + -mem[64] + 100
                if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                    revert with 0, 18
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_650] = 26
                mem[_650 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _673 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _673 + 68] = mem[idx + _650 + 32]
                        idx = idx + 32
                        continue 
                    mem[_673 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _673 + -mem[64] + 100
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_797] = 26
                    mem[_797 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _812 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _812 + 68] = mem[idx + _797 + 32]
                        idx = idx + 32
                        continue 
                    mem[_812 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _812 + -mem[64] + 100
                mem[mem[64]] = (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
                emit Mint(((block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
                if (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 26
                mem[_838 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _850 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _850 + 68] = mem[idx + _838 + 32]
                    idx = idx + 32
                    continue 
                mem[_850 + 94] = 0
                revert with memory
                  from mem[64]
                   len _850 + -mem[64] + 100
            if bonusEndTime - poolInfo[idx].field_1536 and 2 > -1 / bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 17
            if not bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 18
            if 2 * bonusEndTime - poolInfo[idx].field_1536 / bonusEndTime - poolInfo[idx].field_1536 != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if 2 * bonusEndTime - poolInfo[idx].field_1536 > !(block.timestamp - bonusEndTime):
                revert with 0, 17
            if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime < 2 * bonusEndTime - poolInfo[idx].field_1536:
                revert with 0, 'SafeMath: addition overflow'
            if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                _599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_599] = 26
                mem[_599 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _620 + 68] = mem[idx + _599 + 32]
                        idx = idx + 32
                        continue 
                    mem[_620 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _620 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_746] = 26
                    mem[_746 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _765 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _765 + 68] = mem[idx + _746 + 32]
                        idx = idx + 32
                        continue 
                    mem[_765 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _765 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _795 = mem[64]
                mem[64] = mem[64] + 64
                mem[_795] = 26
                mem[_795 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _811 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _811 + 68] = mem[idx + _795 + 32]
                    idx = idx + 32
                    continue 
                mem[_811 + 94] = 0
                revert with memory
                  from mem[64]
                   len _811 + -mem[64] + 100
            if (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime and sub_4f981416 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime:
                revert with 0, 18
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / (2 * bonusEndTime - poolInfo[idx].field_1536) + block.timestamp - bonusEndTime != sub_4f981416:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                _648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_648] = 26
                mem[_648 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _672 + 68] = mem[idx + _648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_672 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _672 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    mem[mem[64]] = 0
                    emit Mint(0, this.address);
                    _794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_794] = 26
                    mem[_794 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_512:
                        if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                            revert with 0, 17
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                        poolInfo[idx].field_1536 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _810 + 68] = mem[idx + _794 + 32]
                        idx = idx + 32
                        continue 
                    mem[_810 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _810 + -mem[64] + 100
                mem[mem[64]] = 0 / totalAllocPoint
                emit Mint((0 / totalAllocPoint), this.address);
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _834 = mem[64]
                mem[64] = mem[64] + 64
                mem[_834] = 26
                mem[_834 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _849 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _849 + 68] = mem[idx + _834 + 32]
                    idx = idx + 32
                    continue 
                mem[_849 + 94] = 0
                revert with memory
                  from mem[64]
                   len _849 + -mem[64] + 100
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[idx].field_256 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
                revert with 0, 18
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_710] = 26
            mem[_710 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _728 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _728 + 68] = mem[idx + _710 + 32]
                    idx = idx + 32
                    continue 
                mem[_728 + 94] = 0
                revert with memory
                  from mem[64]
                   len _728 + -mem[64] + 100
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                mem[mem[64]] = 0
                emit Mint(0, this.address);
                _833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_833] = 26
                mem[_833 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_512:
                    if poolInfo[idx].field_1792 > !(0 / poolInfo[idx].field_512):
                        revert with 0, 17
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_512
                    poolInfo[idx].field_1536 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _848 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _848 + 68] = mem[idx + _833 + 32]
                    idx = idx + 32
                    continue 
                mem[_848 + 94] = 0
                revert with memory
                  from mem[64]
                   len _848 + -mem[64] + 100
            mem[mem[64]] = (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint
            emit Mint(((2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint), this.address);
            if (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _866 = mem[64]
            mem[64] = mem[64] + 64
            mem[_866] = 26
            mem[_866 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_512:
                if poolInfo[idx].field_1792 > !(10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512):
                    revert with 0, 17
                if poolInfo[idx].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 10^12 * (2 * bonusEndTime - poolInfo[idx].field_1536 * sub_4f981416 * poolInfo[idx].field_256) + (block.timestamp * sub_4f981416 * poolInfo[idx].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_512
                poolInfo[idx].field_1536 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _878 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _878 + 68] = mem[idx + _866 + 32]
                idx = idx + 32
                continue 
            mem[_878 + 94] = 0
            revert with memory
              from mem[64]
               len _878 + -mem[64] + 100
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    storAF85[stor156.length] = arg2
    storAF85[stor156.length] = arg1
    storAF85[stor156.length] = 0
    storAF85[stor156.length] = uint8(arg4)
    storAF85[stor156.length] = arg5
    storAF85[stor156.length] = 0
    if block.timestamp > startTime:
        storAF85[stor156.length] = block.timestamp
    else:
        storAF85[stor156.length] = startTime
    storAF85[stor156.length] = 0
}

function pendingSushi(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if not poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if block.timestamp <= bonusEndTime:
        if poolInfo[arg1].field_1536 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < poolInfo[arg1].field_1536:
            revert with 0, 17
        if not block.timestamp - poolInfo[arg1].field_1536:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if block.timestamp - poolInfo[arg1].field_1536 and 2 > -1 / block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 17
        if not block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 18
        if 2 * block.timestamp - poolInfo[arg1].field_1536 / block.timestamp - poolInfo[arg1].field_1536 != 2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * block.timestamp - poolInfo[arg1].field_1536:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if uint255(block.timestamp - poolInfo[arg1].field_1536) and sub_4f981416 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 17
        if not 2 * block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 18
        if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 / 2 * block.timestamp - poolInfo[arg1].field_1536 != sub_4f981416:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 and poolInfo[arg1].field_256 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
            revert with 0, 17
        if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416:
            revert with 0, 18
        if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
            revert with 0, 17
        if not 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 2 * block.timestamp - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if poolInfo[arg1].field_1536 >= bonusEndTime:
        if poolInfo[arg1].field_1536 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.timestamp < poolInfo[arg1].field_1536:
            revert with 0, 17
        if not block.timestamp - poolInfo[arg1].field_1536:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if block.timestamp - poolInfo[arg1].field_1536 and sub_4f981416 > -1 / block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 17
        if not block.timestamp - poolInfo[arg1].field_1536:
            revert with 0, 18
        if (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) / block.timestamp - poolInfo[arg1].field_1536 != sub_4f981416:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
            revert with 0, 17
        if not (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416):
            revert with 0, 18
        if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / (block.timestamp * sub_4f981416) - (poolInfo[arg1].field_1536 * sub_4f981416) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if bonusEndTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < bonusEndTime:
        revert with 0, 17
    if poolInfo[arg1].field_1536 > bonusEndTime:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if bonusEndTime < poolInfo[arg1].field_1536:
        revert with 0, 17
    if not bonusEndTime - poolInfo[arg1].field_1536:
        if 0 > !(block.timestamp - bonusEndTime):
            revert with 0, 17
        if block.timestamp - bonusEndTime < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.timestamp - bonusEndTime:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if block.timestamp - bonusEndTime and sub_4f981416 > -1 / block.timestamp - bonusEndTime:
            revert with 0, 17
        if not block.timestamp - bonusEndTime:
            revert with 0, 18
        if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / block.timestamp - bonusEndTime != sub_4f981416:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                    revert with 0, 17
                if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_768 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        return 0
                    if not -userInfo[arg1][address(arg2)].field_768:
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 'SafeMath: division by zero', 0
                        return (0 / userInfo[arg1][address(arg2)].field_0)
                    if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 17
                    if not -userInfo[arg1][address(arg2)].field_768:
                        revert with 0, 18
                    if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            revert with 0, 17
        if not (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
            revert with 0, 18
        if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if bonusEndTime - poolInfo[arg1].field_1536 and 2 > -1 / bonusEndTime - poolInfo[arg1].field_1536:
        revert with 0, 17
    if not bonusEndTime - poolInfo[arg1].field_1536:
        revert with 0, 18
    if 2 * bonusEndTime - poolInfo[arg1].field_1536 / bonusEndTime - poolInfo[arg1].field_1536 != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if 2 * bonusEndTime - poolInfo[arg1].field_1536 > !(block.timestamp - bonusEndTime):
        revert with 0, 17
    if (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime < 2 * bonusEndTime - poolInfo[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime and sub_4f981416 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
        revert with 0, 17
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime:
        revert with 0, 18
    if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) / (2 * bonusEndTime - poolInfo[arg1].field_1536) + block.timestamp - bonusEndTime != sub_4f981416:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
                revert with 0, 17
            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    return 0
                if not -userInfo[arg1][address(arg2)].field_768:
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 'SafeMath: division by zero', 0
                    return (0 / userInfo[arg1][address(arg2)].field_0)
                if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 17
                if not -userInfo[arg1][address(arg2)].field_768:
                    revert with 0, 18
                if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) and poolInfo[arg1].field_256 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
        revert with 0, 17
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416):
        revert with 0, 18
    if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416) + (block.timestamp * sub_4f981416) - (bonusEndTime * sub_4f981416) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_1792 > !(0 / poolInfo[arg1].field_512):
            revert with 0, 17
        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                return 0
            if not -userInfo[arg1][address(arg2)].field_768:
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / userInfo[arg1][address(arg2)].field_0)
            if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 17
            if not -userInfo[arg1][address(arg2)].field_768:
                revert with 0, 18
            if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_512):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
    if (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not poolInfo[arg1].field_512:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_1792 > !(10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
        revert with 0, 17
    if poolInfo[arg1].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) < poolInfo[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_768 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            return 0
        if not -userInfo[arg1][address(arg2)].field_768:
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / userInfo[arg1][address(arg2)].field_0)
        if -userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / -userInfo[arg1][address(arg2)].field_768:
            revert with 0, 17
        if not -userInfo[arg1][address(arg2)].field_768:
            revert with 0, 18
        if -1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / -userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (-1 * userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256 / userInfo[arg1][address(arg2)].field_0)
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_768 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_768:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        return 0
    if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / userInfo[arg1][address(arg2)].field_0)
    if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 and userInfo[arg1][address(arg2)].field_256 > -1 / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
        revert with 0, 17
    if not ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768:
        revert with 0, 18
    if ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / ((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_768 != userInfo[arg1][address(arg2)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 'SafeMath: division by zero', 0
    return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (2 * bonusEndTime - poolInfo[arg1].field_1536 * sub_4f981416 * poolInfo[arg1].field_256) + (block.timestamp * sub_4f981416 * poolInfo[arg1].field_256) - (bonusEndTime * sub_4f981416 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) / 10^12 * userInfo[arg1][address(arg2)].field_256) - (userInfo[arg1][address(arg2)].field_768 * userInfo[arg1][address(arg2)].field_256) / userInfo[arg1][address(arg2)].field_0)
}



}
