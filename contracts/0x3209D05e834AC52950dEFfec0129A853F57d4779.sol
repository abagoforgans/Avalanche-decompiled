contract main {




// =====================  Runtime code  =====================


const BONUS_MULTIPLIER = 1


address owner;
uint256 stor1;
address tigerAddress;
address devaddr;
uint256 tigerPerBlock;
address feeAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
mapping of uint8 stor10;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;

function poolLength() payable {
    return poolInfo.length
}

function tigerPerBlock() payable {
    return tigerPerBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function tiger() payable {
    return tigerAddress
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function devaddr() payable {
    return devaddr
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    require ext_code.size(poolInfo[arg1].field_0)
    call poolInfo[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[arg1][msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and tigerPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingTiger(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and tigerPerBlock > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
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
            if mem[_13]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and tigerPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(tigerAddress)
                    call tigerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(tigerAddress)
                    call tigerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _14:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _14):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _14
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
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
            if mem[_19]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and tigerPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(tigerAddress)
                    call tigerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(tigerAddress)
                    call tigerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _20:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _20):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _20
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    tigerPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
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
                if mem[_24]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and tigerPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(tigerAddress)
                        call tigerAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(tigerAddress)
                        call tigerAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _25:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _25):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _25
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 10
    if stor10[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _63 = mem[_48]
                if mem[_48]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and tigerPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[idx].field_512 * tigerPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(tigerAddress)
                        call tigerAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(tigerAddress)
                        call tigerAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _63:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _63):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tigerPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _63
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor10[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg3
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and tigerPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
        revert with 0, 17
    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
        require ext_code.size(tigerAddress)
        staticcall tigerAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tigerAddress)
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            call tigerAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            call tigerAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'safeTigerTransfer: transfer failed'
    if arg2:
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and tigerPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tigerPerBlock) - (poolInfo[arg1].field_512 * tigerPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tigerAddress)
                call tigerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * tigerPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tigerPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
    if userInfo[arg1][msg.sender].field_0:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256:
            require ext_code.size(tigerAddress)
            staticcall tigerAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tigerAddress)
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                call tigerAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            else:
                call tigerAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'safeTigerTransfer: transfer failed'
    if arg2:
        require ext_code.size(poolInfo[arg1].field_0)
        call poolInfo[arg1].field_0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not poolInfo[arg1].field_1024:
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 += arg2
        else:
            if arg2 and poolInfo[arg1].field_1024 > -1 / arg2:
                revert with 0, 17
            require ext_code.size(poolInfo[arg1].field_0)
            call poolInfo[arg1].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args feeAddress, arg2 * poolInfo[arg1].field_1024 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 + arg2 < arg2 * poolInfo[arg1].field_1024 / 10000:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 = userInfo[arg1][msg.sender].field_0 + arg2 - (arg2 * poolInfo[arg1].field_1024 / 10000)
    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
        revert with 0, 17
    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}



}
