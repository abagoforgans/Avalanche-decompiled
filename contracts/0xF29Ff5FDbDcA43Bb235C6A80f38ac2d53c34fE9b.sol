contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#
const BONUS_MULTIPLIER = 1


address owner;
uint256 stor1;
address tokenAddress;
uint256 maxEmissionRate;
address devaddr;
uint256 tokenPerBlock;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor11;

function poolLength() payable {
    return poolInfo.length
}

function maxEmissionRate() payable {
    return maxEmissionRate
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function tokenPerBlock() payable {
    return tokenPerBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function devaddr() payable {
    return devaddr
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
    emit SetDevAddress(msg.sender, arg1);
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It's too late to postpone mining. It has already started'
    startBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        poolInfo[idx].field_512 = startBlock
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and tokenPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.number - poolInfo[arg1].field_512 and tokenPerBlock > -1 / block.number - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14 = mem[_13]
            require mem[_13] == mem[_13]
            if mem[_13]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not _14:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _14) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _14
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20 = mem[_19]
            require mem[_19] == mem[_19]
            if mem[_19]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not _20:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _20) - 1:
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _20
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    tokenPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid withdrawal fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _24 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _25 = mem[_24]
                require mem[_24] == mem[_24]
                if mem[_24]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not _25:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _25) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _25
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 11
    if stor11[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 400:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _68 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _69 = mem[_68]
                require mem[_68] == mem[_68]
                if mem[_68]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not _69:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _69) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _69
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > -arg1 - 1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    stor11[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 > 0:
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            mem[100] = this.address
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg2
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[ceil32(return_data.size) + 100] = msg.sender
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 132] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'safeTokenTransfer: transfer failed'
                mem[(2 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 96] = 100
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(4 * ceil32(return_data.size)) + 228] = 32
                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if userInfo[arg1][address(msg.sender)].field_0 > -1:
                revert with 'NH{q', 17
    else:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and tokenPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 132] = (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
        if userInfo[arg1][address(msg.sender)].field_0 > 0:
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 'NH{q', 17
            mem[ceil32(return_data.size) + 100] = this.address
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'safeTokenTransfer: transfer failed'
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 96] = 100
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(6 * ceil32(return_data.size)) + 228] = 32
                mem[(6 * ceil32(return_data.size)) + 260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(6 * ceil32(return_data.size)) + 392] = 0
                call poolInfo[arg1].field_0 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                        if not mem[(6 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            require ext_code.size(poolInfo[arg1].field_0)
            staticcall poolInfo[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 'NH{q', 17
            if userInfo[arg1][address(msg.sender)].field_0 > -1:
                revert with 'NH{q', 17
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^18
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}



}
