contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
array of uint256 stor2;
address owner;
mapping of uint256 stor99;
uint256 stor101;
uint8 paused;
address sub_6af66772Address;
address sub_82c780a1Address;
address stor203;
uint256 sub_9702d3e2;
uint256 sub_05ed1de4;
uint256 sub_f87bbc56;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of struct poolInfo;
array of struct stor210;
mapping of uint256 stor211;
mapping of struct userInfo;
mapping of uint256 sub_8b4d83a3;
array of address stor47661935505114017385622961611032274432992609817870001481508015138701782973667;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973668;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973669;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973670;
array of address stor47661935505114017385622961611032274432992609817870001481508015138701782973671;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973672;
array of uint256 stor47661935505114017385622961611032274432992609817870001481508015138701782973673;

function sub_05ed1de4(?) payable {
    return sub_05ed1de4
}

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return address(poolInfo[arg1].field_0), 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           address(poolInfo[arg1].field_1024),
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function paused() payable {
    return bool(paused)
}

function sub_6af66772(?) payable {
    return sub_6af66772Address
}

function sub_82c780a1(?) payable {
    return sub_82c780a1Address
}

function sub_8b4d83a3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_8b4d83a3[arg1][arg2]
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_9702d3e2(?) payable {
    return sub_9702d3e2
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_f87bbc56(?) payable {
    return sub_f87bbc56
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

function sub_7b261591(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor203 = address(arg1)
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

function sub_7dd38dcc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_6af66772Address)
    staticcall sub_6af66772Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_6af66772Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_6af66772Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function rewarderBonusTokenInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 209
    if not address(poolInfo[arg1].field_1024):
        return 0, 64, 0
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _18 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _19 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96])) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = _19
    require _18 + _19 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_19)] = mem[(2 * ceil32(return_data.size)) + _18 + 128 len ceil32(_19)]
    if ceil32(_19) > _19:
        mem[_19 + (4 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = address(ext_call.return_data[0])
    mem[mem[64] + 32] = 64
    mem[mem[64] + 64] = _19
    mem[mem[64] + 96 len ceil32(_19)] = mem[(4 * ceil32(return_data.size)) + 128 len ceil32(_19)]
    if ceil32(_19) > _19:
        mem[_19 + mem[64] + 96] = 0
    return address(ext_call.return_data[0]), Array(len=_19, data=mem[mem[64] + 96 len ceil32(_19)])
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'ptp address cannot be zero'
    if not arg2:
        revert with 0, 'vePtp address cannot be zero'
    if not arg3:
        revert with 0, 'ptp per sec cannot be zero'
    if arg4 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dialuting repartition must be in range 0, 1000'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor101 = 1
        paused = 0
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor101 = 1
            paused = 0
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor101 = 1
                paused = 0
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor101 = 1
                    paused = 0
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor101 = 1
                        paused = 0
                    else:
                        uint16(stor0.field_0) = 257
                        stor101 = 1
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint16(stor0.field_0) = 257
                            paused = 0
                            uint8(stor0.field_8) = 0
    sub_6af66772Address = arg1
    sub_82c780a1Address = arg2
    sub_9702d3e2 = arg3
    sub_05ed1de4 = arg4
    if 1000 < arg4:
        revert with 0, 17
    sub_f87bbc56 = -arg4 + 1000
    startTimestamp = arg5
    totalAllocPoint = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]
            if not poolInfo[arg1].field_1280:
                poolInfo[arg1].field_1536 = 0
            else:
                if poolInfo[arg1].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[arg1].field_1280:
                    revert with 0, 18
                if poolInfo[arg1].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280):
                    revert with 0, 17
                poolInfo[arg1].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280
            poolInfo[arg1].field_512 = block.timestamp
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 209
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14 = mem[_13]
            if not mem[_13]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_13] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_13]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_13]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_13]
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1536 = 0
                else:
                    if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * poolInfo[idx].field_1280:
                        revert with 0, 18
                    if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                        revert with 0, 17
                    poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _14
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(block.timestamp, _14, poolInfo[idx].field_768, idx);
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
        mem[0] = 209
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20 = mem[_19]
            if not mem[_19]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_19] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_19]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_19]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_19]
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1536 = 0
                else:
                    if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * poolInfo[idx].field_1280:
                        revert with 0, 18
                    if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                        revert with 0, 17
                    poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _20
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(block.timestamp, _20, poolInfo[idx].field_768, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_9702d3e2 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function sub_90d9c1c3(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require address(arg1)
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 209
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20 = mem[_19]
            if not mem[_19]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_19] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_19]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_19]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_19]
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1536 = 0
                else:
                    if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * poolInfo[idx].field_1280:
                        revert with 0, 18
                    if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                        revert with 0, 17
                    poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _20
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(block.timestamp, _20, poolInfo[idx].field_768, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_82c780a1Address = address(arg1)
    emit 0xcdc066eb: sub_82c780a1Address, address(arg1), msg.sender
}

function sub_e0a4ed43(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 1000
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 209
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[idx].field_0))
            staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _19 = mem[_17]
            if not mem[_17]:
                poolInfo[idx].field_512 = block.timestamp
            else:
                if block.timestamp < poolInfo[idx].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_17] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_17]:
                    revert with 0, 18
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_17]):
                    revert with 0, 17
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_17]
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1536 = 0
                else:
                    if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * poolInfo[idx].field_1280:
                        revert with 0, 18
                    if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                        revert with 0, 17
                    poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _19
                mem[mem[64] + 64] = poolInfo[idx].field_768
                emit UpdatePool(block.timestamp, _19, poolInfo[idx].field_768, idx);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_05ed1de4 = arg1
    if 1000 < arg1:
        revert with 0, 17
    sub_f87bbc56 = -arg1 + 1000
    emit 0xb24c3afb: arg1, -arg1 + 1000, msg.sender
}

function sub_4f00a93e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_82c780a1Address != msg.sender:
        revert with 0, 'notVePtp: wut?'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 212)
        if userInfo[idx][address(arg1)].field_0:
            if idx >= poolInfo.length:
                revert with 0, 50
            mem[0] = 209
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _29 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _30 = mem[_29]
                if not mem[_29]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_29] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * mem[_29]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_29]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_29]
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1536 = 0
                    else:
                        if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not 1000 * poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _30
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _30, poolInfo[idx].field_768, idx);
            if userInfo[idx][address(arg1)].field_512 and poolInfo[idx].field_1536 > -1 / userInfo[idx][address(arg1)].field_512:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 > !(userInfo[idx][address(arg1)].field_512 * poolInfo[idx].field_1536):
                revert with 0, 17
            if (userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768) + (userInfo[idx][address(arg1)].field_512 * poolInfo[idx].field_1536) / 10^12 < userInfo[idx][address(arg1)].field_256:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = sha3(idx, 213)
            if sub_8b4d83a3[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768) + (userInfo[idx][address(arg1)].field_512 * poolInfo[idx].field_1536) / 10^12) - userInfo[idx][address(arg1)].field_256):
                revert with 0, 17
            sub_8b4d83a3[idx][address(arg1)] = sub_8b4d83a3[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768) + (userInfo[idx][address(arg1)].field_512 * poolInfo[idx].field_1536) / 10^12) - userInfo[idx][address(arg1)].field_256
            if arg2 and userInfo[idx][address(arg1)].field_0 > -1 / arg2:
                revert with 0, 17
            if arg2 * userInfo[idx][address(arg1)].field_0 <= 3:
                if not arg2 * userInfo[idx][address(arg1)].field_0:
                    userInfo[idx][address(arg1)].field_512 = 0
                    if False and poolInfo[idx].field_1536 > 0:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 > -1:
                        revert with 0, 17
                    userInfo[idx][address(arg1)].field_256 = userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 / 10^12
                    if poolInfo[idx].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[idx].field_1280 < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolInfo[idx].field_1280 -= userInfo[idx][address(arg1)].field_512
                else:
                    userInfo[idx][address(arg1)].field_512 = 1
                    if poolInfo[idx].field_1536 > -1:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 > !poolInfo[idx].field_1536:
                        revert with 0, 17
                    userInfo[idx][address(arg1)].field_256 = (userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768) + poolInfo[idx].field_1536 / 10^12
                    if poolInfo[idx].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[idx].field_1280 + 1 < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolInfo[idx].field_1280 = poolInfo[idx].field_1280 + -userInfo[idx][address(arg1)].field_512 + 1
            else:
                if 1 > !(arg2 * userInfo[idx][address(arg1)].field_0 / 2):
                    revert with 0, 17
                s = (arg2 * userInfo[idx][address(arg1)].field_0 / 2) + 1
                t = arg2 * userInfo[idx][address(arg1)].field_0
                while s < t:
                    if not s:
                        revert with 0, 18
                    if arg2 * userInfo[idx][address(arg1)].field_0 / s > !s:
                        revert with 0, 17
                    s = (arg2 * userInfo[idx][address(arg1)].field_0 / s) + s / 2
                    t = s
                    continue 
                userInfo[idx][address(arg1)].field_512 = t
                if t and poolInfo[idx].field_1536 > -1 / t:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_0 and poolInfo[idx].field_768 > -1 / userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768 > !(t * poolInfo[idx].field_1536):
                    revert with 0, 17
                userInfo[idx][address(arg1)].field_256 = (userInfo[idx][address(arg1)].field_0 * poolInfo[idx].field_768) + (t * poolInfo[idx].field_1536) / 10^12
                if poolInfo[idx].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[idx].field_1280 + t < userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                poolInfo[idx].field_1280 = poolInfo[idx].field_1280 + t - userInfo[idx][address(arg1)].field_512
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg3):
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 209
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _53 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _55 = mem[_53]
                if not mem[_53]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_53] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * mem[_53]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_53]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_53]
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1536 = 0
                    else:
                        if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not 1000 * poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _55
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _55, poolInfo[idx].field_768, idx);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: rewarder must be contract or zero'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 209
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _54 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _56 = mem[_54]
                if not mem[_54]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_54] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * mem[_54]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_54]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_54]
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1536 = 0
                    else:
                        if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not 1000 * poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _56
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _56, poolInfo[idx].field_768, idx);
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
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if not arg4:
        emit 0xa54644aa: arg2, arg4, arg1, address(poolInfo[arg1].field_1024)
    else:
        address(poolInfo[arg1].field_1024) = arg3
        if arg4:
            emit 0xa54644aa: arg2, arg4, arg1, arg3
        else:
            if arg1 >= poolInfo.length:
                revert with 0, 50
            emit 0xa54644aa: arg2, arg4, arg1, address(poolInfo[arg1].field_1024)
}

function add(uint256 arg1, address arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: LP token must be a valid contract'
    if ext_code.size(arg3):
        mem[0] = arg2
        mem[32] = 211
        if stor211[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 209
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _131 = mem[_97]
                if not mem[_97]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_97] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * mem[_97]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_97]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_97]
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1536 = 0
                    else:
                        if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not 1000 * poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _131
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _131, poolInfo[idx].field_768, idx);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: rewarder must be contract or zero'
        mem[0] = arg2
        mem[32] = 211
        if stor211[address(arg2)]:
            revert with 0, 'add: LP already added'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 209
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[idx].field_0))
                staticcall address(poolInfo[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _98 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_98]
                if not mem[_98]:
                    poolInfo[idx].field_512 = block.timestamp
                else:
                    if block.timestamp < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.timestamp - poolInfo[idx].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[idx].field_512 * sub_9702d3e2):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if mem[_98] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not 1000 * mem[_98]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_98]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_98]
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1536 = 0
                    else:
                        if poolInfo[idx].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                            revert with 0, 17
                        if (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not 1000 * poolInfo[idx].field_1280:
                            revert with 0, 18
                        if poolInfo[idx].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280):
                            revert with 0, 17
                        poolInfo[idx].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9702d3e2 * poolInfo[idx].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _132
                    mem[mem[64] + 64] = poolInfo[idx].field_768
                    emit UpdatePool(block.timestamp, _132, poolInfo[idx].field_768, idx);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor695F[stor209.length] = arg2
    stor695F[stor209.length] = arg1
    if block.timestamp > startTimestamp:
        stor695F[stor209.length] = block.timestamp
    else:
        stor695F[stor209.length] = startTimestamp
    stor695F[stor209.length] = 0
    stor695F[stor209.length] = arg3
    stor695F[stor209.length] = 0
    stor695F[stor209.length] = 0
    if not stor211[address(arg2)]:
        stor210.length++
        address(stor210[stor210.length].field_0) = arg2
        Mask(96, 0, stor210[stor210.length].field_160) = 0
        stor211[address(arg2)] = stor210.length
    if poolInfo.length < 1:
        revert with 0, 17
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}

function pendingTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[100] = this.address
    require ext_code.size(address(poolInfo[arg1].field_0))
    staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        mem[32] = sha3(arg1, 213)
        if userInfo[arg1][address(arg2)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][address(arg2)]:
            revert with 0, 17
        if ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 96] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = 209
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + (2 * ceil32(return_data.size)) + 256] = 0
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _66 = mem[(4 * ceil32(return_data.size)) + 96]
        require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _68 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _68
        require _66 + _68 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_68)] = mem[(4 * ceil32(return_data.size)) + _66 + 128 len ceil32(_68)]
        if ceil32(_68) <= _68:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _260 = mem[_252]
            mem[mem[64]] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _68
            mem[mem[64] + 160 len ceil32(_68)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_68)]
            if ceil32(_68) > _68:
                mem[_68 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _260
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_68, data=mem[mem[64] + 160 len ceil32(_68)]),
                   _260
        mem[_68 + (6 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _261 = mem[_253]
        mem[mem[64]] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _68
        mem[mem[64] + 160 len ceil32(_68)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_68)]
        if ceil32(_68) > _68:
            mem[_68 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _261
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_68, data=mem[mem[64] + 160 len ceil32(_68)]),
               _261
    if not ext_call.return_data[0]:
        mem[32] = sha3(arg1, 213)
        if userInfo[arg1][address(arg2)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][address(arg2)]:
            revert with 0, 17
        if ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 96] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = 209
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + (2 * ceil32(return_data.size)) + 256] = 0
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _67 = mem[(4 * ceil32(return_data.size)) + 96]
        require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _69 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _69
        require _67 + _69 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_69)] = mem[(4 * ceil32(return_data.size)) + _67 + 128 len ceil32(_69)]
        if ceil32(_69) <= _69:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_254]
            mem[mem[64]] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _69
            mem[mem[64] + 160 len ceil32(_69)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_69)]
            if ceil32(_69) > _69:
                mem[_69 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _262
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_69, data=mem[mem[64] + 160 len ceil32(_69)]),
                   _262
        mem[_69 + (6 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _263 = mem[_255]
        mem[mem[64]] = ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _69
        mem[mem[64] + 160 len ceil32(_69)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_69)]
        if ceil32(_69) > _69:
            mem[_69 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _263
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_69, data=mem[mem[64] + 160 len ceil32(_69)]),
               _263
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.timestamp - poolInfo[arg1].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not 1000 * ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]):
        revert with 0, 17
    if 0 == poolInfo[arg1].field_1280:
        mem[32] = sha3(arg1, 213)
        if userInfo[arg1][address(arg2)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) > !(userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][address(arg2)]:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[ceil32(return_data.size) + 128] = 0
            mem[ceil32(return_data.size) + 160] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
        if arg1 >= poolInfo.length:
            revert with 0, 50
        mem[0] = 209
        if not address(poolInfo[arg1].field_1024):
            mem[ceil32(return_data.size) + 100] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args arg2
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[(2 * ceil32(return_data.size)) + 128] = 0
            mem[(2 * ceil32(return_data.size)) + 160] = 128
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
            if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
                mem[ext_call.return_data[0] + (2 * ceil32(return_data.size)) + 256] = 0
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   0,
                   128,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _140 = mem[(4 * ceil32(return_data.size)) + 96]
        require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
        _151 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97
        mem[(6 * ceil32(return_data.size)) + 96] = _151
        require _140 + _151 + 32 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_151)] = mem[(4 * ceil32(return_data.size)) + _140 + 128 len ceil32(_151)]
        if ceil32(_151) <= _151:
            mem[mem[64] + 4] = arg2
            require ext_code.size(address(poolInfo[arg1].field_1024))
            staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _264 = mem[_256]
            mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
            mem[mem[64] + 32] = address(ext_call.return_data[0])
            mem[mem[64] + 64] = 128
            mem[mem[64] + 128] = _151
            mem[mem[64] + 160 len ceil32(_151)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_151)]
            if ceil32(_151) > _151:
                mem[_151 + mem[64] + 160] = 0
            mem[mem[64] + 96] = _264
            return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
                   address(ext_call.return_data[0]),
                   Array(len=_151, data=mem[mem[64] + 160 len ceil32(_151)]),
                   _264
        mem[_151 + (6 * ceil32(return_data.size)) + 128] = 0
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _265 = mem[_257]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _151
        mem[mem[64] + 160 len ceil32(_151)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_151)]
        if ceil32(_151) > _151:
            mem[_151 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _265
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (userInfo[arg1][address(arg2)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_151, data=mem[mem[64] + 160 len ceil32(_151)]),
               _265
    if poolInfo[arg1].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not 1000 * poolInfo[arg1].field_1280:
        revert with 0, 18
    if poolInfo[arg1].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280):
        revert with 0, 17
    mem[32] = sha3(arg1, 213)
    if userInfo[arg1][address(arg2)].field_512 and poolInfo[arg1].field_1536 + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) > !((poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512)):
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12 > !sub_8b4d83a3[arg1][address(arg2)]:
        revert with 0, 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if not address(poolInfo[arg1].field_1024):
        mem[ceil32(return_data.size) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[ceil32(return_data.size) + 128] = 0
        mem[ceil32(return_data.size) + 160] = 128
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[ext_call.return_data[0] + ceil32(return_data.size) + 256] = 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               0,
               128,
               0,
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len ceil32(ext_call.return_data[0])]
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = 209
    if not address(poolInfo[arg1].field_1024):
        mem[ceil32(return_data.size) + 100] = arg2
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                gas gas_remaining wei
               args arg2
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 96] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[(2 * ceil32(return_data.size)) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + 160] = 128
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])] = mem[128 len ceil32(ext_call.return_data[0])]
        if ceil32(ext_call.return_data[0]) > ext_call.return_data[0]:
            mem[ext_call.return_data[0] + (2 * ceil32(return_data.size)) + 256] = 0
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               0,
               128,
               ext_call.return_data[0],
               ext_call.return_data[0],
               mem[(2 * ceil32(return_data.size)) + 256 len ceil32(ext_call.return_data[0])]
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).0xf7c618c1 with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 96] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _172 = mem[(4 * ceil32(return_data.size)) + 96]
    require mem[(4 * ceil32(return_data.size)) + 96] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _175 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96] + 96])) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = _175
    require _172 + _175 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_175)] = mem[(4 * ceil32(return_data.size)) + _172 + 128 len ceil32(_175)]
    if ceil32(_175) <= _175:
        mem[mem[64] + 4] = arg2
        require ext_code.size(address(poolInfo[arg1].field_1024))
        staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _258 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _266 = mem[_258]
        mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
        mem[mem[64] + 32] = address(ext_call.return_data[0])
        mem[mem[64] + 64] = 128
        mem[mem[64] + 128] = _175
        mem[mem[64] + 160 len ceil32(_175)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_175)]
        if ceil32(_175) > _175:
            mem[_175 + mem[64] + 160] = 0
        mem[mem[64] + 96] = _266
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
               address(ext_call.return_data[0]),
               Array(len=_175, data=mem[mem[64] + 160 len ceil32(_175)]),
               _266
    mem[_175 + (6 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64] + 4] = arg2
    require ext_code.size(address(poolInfo[arg1].field_1024))
    staticcall address(poolInfo[arg1].field_1024).pendingTokens(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _259 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _267 = mem[_259]
    mem[mem[64]] = ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256
    mem[mem[64] + 32] = address(ext_call.return_data[0])
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = _175
    mem[mem[64] + 160 len ceil32(_175)] = mem[(6 * ceil32(return_data.size)) + 128 len ceil32(_175)]
    if ceil32(_175) > _175:
        mem[_175 + mem[64] + 160] = 0
    mem[mem[64] + 96] = _267
    return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) + (10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_8b4d83a3[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_256, 
           address(ext_call.return_data[0]),
           Array(len=_175, data=mem[mem[64] + 160 len ceil32(_175)]),
           _267
}

function depositFor(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if arg3 != tx.origin:
        revert with 0, 'depositFor: wut?'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg3)].field_0:
            if userInfo[arg1][address(arg3)].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_0 += arg2
            mem[100] = arg3
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg3
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(arg3)].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][address(arg3)].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][address(arg3)].field_512
                else:
                    userInfo[arg1][address(arg3)].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][address(arg3)].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][address(arg3)].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][address(arg3)].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][address(arg3)].field_512
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_256 = (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg2
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 100] = arg3
                mem[ceil32(return_data.size) + 132] = userInfo[arg1][address(arg3)].field_0
                require ext_code.size(address(poolInfo[arg1].field_1024))
                call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args address(arg3), userInfo[arg1][address(arg3)].field_0
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                        if not 0, mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            if (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][msg.sender]:
                revert with 0, 17
            if ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] < userInfo[arg1][address(arg3)].field_256:
                revert with 0, 17
            sub_8b4d83a3[arg1][msg.sender] = 0
            mem[100] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[ceil32(return_data.size) + 100] = arg3
            if ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256 <= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Harvest((((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256), arg3, arg1);
            else:
                mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Harvest(ext_call.return_data[0], arg3, arg1);
            if userInfo[arg1][address(arg3)].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_0 += arg2
            mem[(2 * ceil32(return_data.size)) + 100] = arg3
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg3
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(arg3)].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][address(arg3)].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][address(arg3)].field_512
                else:
                    userInfo[arg1][address(arg3)].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][address(arg3)].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][address(arg3)].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][address(arg3)].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][address(arg3)].field_512
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_256 = (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 96] = 100
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(4 * ceil32(return_data.size)) + 228] = 32
                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 100] = arg3
                mem[(4 * ceil32(return_data.size)) + 132] = userInfo[arg1][address(arg3)].field_0
                require ext_code.size(address(poolInfo[arg1].field_1024))
                call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args address(arg3), userInfo[arg1][address(arg3)].field_0
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 96] = 100
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(6 * ceil32(return_data.size)) + 228] = 32
                mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(6 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                        if not mem[(6 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]
            if not poolInfo[arg1].field_1280:
                poolInfo[arg1].field_1536 = 0
            else:
                if poolInfo[arg1].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[arg1].field_1280:
                    revert with 0, 18
                if poolInfo[arg1].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280):
                    revert with 0, 17
                poolInfo[arg1].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280
            poolInfo[arg1].field_512 = block.timestamp
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 160] = poolInfo[arg1].field_768
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
        if not userInfo[arg1][address(arg3)].field_0:
            if userInfo[arg1][address(arg3)].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_0 += arg2
            mem[ceil32(return_data.size) + 100] = arg3
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg3
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(arg3)].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][address(arg3)].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][address(arg3)].field_512
                else:
                    userInfo[arg1][address(arg3)].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][address(arg3)].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][address(arg3)].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][address(arg3)].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][address(arg3)].field_512
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_256 = (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = arg3
                mem[(2 * ceil32(return_data.size)) + 132] = userInfo[arg1][address(arg3)].field_0
                require ext_code.size(address(poolInfo[arg1].field_1024))
                call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args address(arg3), userInfo[arg1][address(arg3)].field_0
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 96] = 100
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(4 * ceil32(return_data.size)) + 228] = 32
                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            if (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][msg.sender]:
                revert with 0, 17
            if ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] < userInfo[arg1][address(arg3)].field_256:
                revert with 0, 17
            sub_8b4d83a3[arg1][msg.sender] = 0
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[(2 * ceil32(return_data.size)) + 100] = arg3
            if ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 132] = ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), ((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Harvest((((userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][address(arg3)].field_256), arg3, arg1);
            else:
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg3), ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Harvest(ext_call.return_data[0], arg3, arg1);
            if userInfo[arg1][address(arg3)].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_0 += arg2
            mem[(4 * ceil32(return_data.size)) + 100] = arg3
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args arg3
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][address(arg3)].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][address(arg3)].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][address(arg3)].field_512
                else:
                    userInfo[arg1][address(arg3)].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][address(arg3)].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][address(arg3)].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][address(arg3)].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][address(arg3)].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][address(arg3)].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][address(arg3)].field_512
            if userInfo[arg1][address(arg3)].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][address(arg3)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg3)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][address(arg3)].field_256 = (userInfo[arg1][address(arg3)].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][address(arg3)].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 96] = 100
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(6 * ceil32(return_data.size)) + 228] = 32
                mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(6 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                        if not mem[(6 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 100] = arg3
                mem[(6 * ceil32(return_data.size)) + 132] = userInfo[arg1][address(arg3)].field_0
                require ext_code.size(address(poolInfo[arg1].field_1024))
                call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args address(arg3), userInfo[arg1][address(arg3)].field_0
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 164] = this.address
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                        if not mem[(7 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit 0x16f3fbfd: arg2, arg3, arg1
    stor101 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 += arg2
            mem[100] = msg.sender
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][msg.sender].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
                else:
                    userInfo[arg1][msg.sender].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][msg.sender].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
            if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg2
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[ceil32(return_data.size) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Deposit(arg2, msg.sender, arg1);
                stor101 = 1
                return 0
            mem[ceil32(return_data.size) + 100] = msg.sender
            mem[ceil32(return_data.size) + 132] = userInfo[arg1][msg.sender].field_0
            require ext_code.size(address(poolInfo[arg1].field_1024))
            call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                 gas gas_remaining wei
                args msg.sender, userInfo[arg1][msg.sender].field_0
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            mem[(2 * ceil32(return_data.size)) + 196] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return 0, ext_call.return_data[0]
        if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][msg.sender]:
            revert with 0, 17
        if ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        sub_8b4d83a3[arg1][msg.sender] = 0
        mem[100] = this.address
        require ext_code.size(sub_6af66772Address)
        staticcall sub_6af66772Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No tokens to distribute'
        mem[ceil32(return_data.size) + 100] = msg.sender
        if ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_6af66772Address)
            call sub_6af66772Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest((((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 += arg2
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][msg.sender].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
                else:
                    userInfo[arg1][msg.sender].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][msg.sender].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
            if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 164] = this.address
                mem[(4 * ceil32(return_data.size)) + 196] = arg2
                mem[(4 * ceil32(return_data.size)) + 96] = 100
                mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(4 * ceil32(return_data.size)) + 228] = 32
                mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(4 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                        if not mem[(4 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Deposit(arg2, msg.sender, arg1);
                stor101 = 1
                return ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256, 
                       0
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 132] = userInfo[arg1][msg.sender].field_0
            require ext_code.size(address(poolInfo[arg1].field_1024))
            call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                 gas gas_remaining wei
                args msg.sender, userInfo[arg1][msg.sender].field_0
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = this.address
            mem[(6 * ceil32(return_data.size)) + 196] = arg2
            mem[(6 * ceil32(return_data.size)) + 96] = 100
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 228] = 32
            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                    if not mem[(6 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256, 
                   ext_call.return_data[0]
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(ext_call.return_data[0], msg.sender, arg1);
        if userInfo[arg1][msg.sender].field_0 > !arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 += arg2
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(sub_82c780a1Address)
        staticcall sub_82c780a1Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
            if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                userInfo[arg1][msg.sender].field_512 = 0
                if poolInfo[arg1].field_1280 > -1:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
            else:
                userInfo[arg1][msg.sender].field_512 = 1
                if poolInfo[arg1].field_1280 > -2:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
        else:
            if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
            t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            userInfo[arg1][msg.sender].field_512 = t
            if poolInfo[arg1].field_1280 > !t:
                revert with 0, 17
            if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
        if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
        if arg1 >= poolInfo.length:
            revert with 0, 50
        if not address(poolInfo[arg1].field_1024):
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 96] = 100
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 228] = 32
            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return ext_call.return_data[0], 0
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 132] = userInfo[arg1][msg.sender].field_0
        require ext_code.size(address(poolInfo[arg1].field_1024))
        call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 164] = this.address
        mem[(6 * ceil32(return_data.size)) + 196] = arg2
        mem[(6 * ceil32(return_data.size)) + 96] = 100
        mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(6 * ceil32(return_data.size)) + 228] = 32
        mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(poolInfo[arg1].field_0)):
            revert with 0, 'Address: call to non-contract'
        mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[(6 * ceil32(return_data.size)) + 392] = 0
        call address(poolInfo[arg1].field_0) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                if not mem[(6 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(address(poolInfo[arg1].field_0))
        staticcall address(poolInfo[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[arg1].field_512 * sub_9702d3e2):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if ext_call.return_data[0] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]):
                revert with 0, 17
            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * ext_call.return_data[0]
            if not poolInfo[arg1].field_1280:
                poolInfo[arg1].field_1536 = 0
            else:
                if poolInfo[arg1].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[arg1].field_1280:
                    revert with 0, 18
                if poolInfo[arg1].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280):
                    revert with 0, 17
                poolInfo[arg1].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9702d3e2 * poolInfo[arg1].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[arg1].field_1280
            poolInfo[arg1].field_512 = block.timestamp
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 160] = poolInfo[arg1].field_768
            emit UpdatePool(block.timestamp, ext_call.return_data[0], poolInfo[arg1].field_768, arg1);
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 += arg2
            mem[ceil32(return_data.size) + 100] = msg.sender
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][msg.sender].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
                else:
                    userInfo[arg1][msg.sender].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][msg.sender].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
            if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = this.address
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                        if not mem[(2 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Deposit(arg2, msg.sender, arg1);
                stor101 = 1
                return 0
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 132] = userInfo[arg1][msg.sender].field_0
            require ext_code.size(address(poolInfo[arg1].field_1024))
            call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                 gas gas_remaining wei
                args msg.sender, userInfo[arg1][msg.sender].field_0
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = this.address
            mem[(4 * ceil32(return_data.size)) + 196] = arg2
            mem[(4 * ceil32(return_data.size)) + 96] = 100
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(4 * ceil32(return_data.size)) + 228] = 32
            mem[(4 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(4 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 324] == bool(mem[(4 * ceil32(return_data.size)) + 324])
                    if not mem[(4 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return 0, ext_call.return_data[0]
        if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12 > !sub_8b4d83a3[arg1][msg.sender]:
            revert with 0, 17
        if ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        sub_8b4d83a3[arg1][msg.sender] = 0
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_6af66772Address)
        staticcall sub_6af66772Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No tokens to distribute'
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_6af66772Address)
            call sub_6af66772Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Harvest((((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            if userInfo[arg1][msg.sender].field_0 > !arg2:
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 += arg2
            mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
            require ext_code.size(sub_82c780a1Address)
            staticcall sub_82c780a1Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
                if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                    userInfo[arg1][msg.sender].field_512 = 0
                    if poolInfo[arg1].field_1280 > -1:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
                else:
                    userInfo[arg1][msg.sender].field_512 = 1
                    if poolInfo[arg1].field_1280 > -2:
                        revert with 0, 17
                    if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
            else:
                if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
                t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
                while s < t:
                    if not s:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                        revert with 0, 17
                    s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                    t = s
                    continue 
                userInfo[arg1][msg.sender].field_512 = t
                if poolInfo[arg1].field_1280 > !t:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
            if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
            if arg1 >= poolInfo.length:
                revert with 0, 50
            if not address(poolInfo[arg1].field_1024):
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = this.address
                mem[(6 * ceil32(return_data.size)) + 196] = arg2
                mem[(6 * ceil32(return_data.size)) + 96] = 100
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(6 * ceil32(return_data.size)) + 228] = 32
                mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(poolInfo[arg1].field_0)):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(6 * ceil32(return_data.size)) + 392] = 0
                call address(poolInfo[arg1].field_0) with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                        if not mem[(6 * ceil32(return_data.size)) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Deposit(arg2, msg.sender, arg1);
                stor101 = 1
                return ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256, 
                       0
            mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 132] = userInfo[arg1][msg.sender].field_0
            require ext_code.size(address(poolInfo[arg1].field_1024))
            call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
                 gas gas_remaining wei
                args msg.sender, userInfo[arg1][msg.sender].field_0
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 164] = this.address
            mem[(7 * ceil32(return_data.size)) + 196] = arg2
            mem[(7 * ceil32(return_data.size)) + 96] = 100
            mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(7 * ceil32(return_data.size)) + 228] = 32
            mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(7 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return ((userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12) + sub_8b4d83a3[arg1][msg.sender] - userInfo[arg1][msg.sender].field_256, 
                   ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Harvest(ext_call.return_data[0], msg.sender, arg1);
        if userInfo[arg1][msg.sender].field_0 > !arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 += arg2
        mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
        require ext_code.size(sub_82c780a1Address)
        staticcall sub_82c780a1Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if userInfo[arg1][msg.sender].field_0 and ext_call.return_data[0] > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] <= 3:
            if not userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]:
                userInfo[arg1][msg.sender].field_512 = 0
                if poolInfo[arg1].field_1280 > -1:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 -= userInfo[arg1][msg.sender].field_512
            else:
                userInfo[arg1][msg.sender].field_512 = 1
                if poolInfo[arg1].field_1280 > -2:
                    revert with 0, 17
                if poolInfo[arg1].field_1280 + 1 < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + -userInfo[arg1][msg.sender].field_512 + 1
        else:
            if 1 > !(userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / 2) + 1
            t = userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (userInfo[arg1][msg.sender].field_0 * ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            userInfo[arg1][msg.sender].field_512 = t
            if poolInfo[arg1].field_1280 > !t:
                revert with 0, 17
            if poolInfo[arg1].field_1280 + t < userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            poolInfo[arg1].field_1280 = poolInfo[arg1].field_1280 + t - userInfo[arg1][msg.sender].field_512
        if userInfo[arg1][msg.sender].field_512 and poolInfo[arg1].field_1536 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 > !(userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536):
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_512 * poolInfo[arg1].field_1536) / 10^12
        if arg1 >= poolInfo.length:
            revert with 0, 50
        if not address(poolInfo[arg1].field_1024):
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = this.address
            mem[(6 * ceil32(return_data.size)) + 196] = arg2
            mem[(6 * ceil32(return_data.size)) + 96] = 100
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(6 * ceil32(return_data.size)) + 228] = 32
            mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(poolInfo[arg1].field_0)):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            mem[(6 * ceil32(return_data.size)) + 392] = 0
            call address(poolInfo[arg1].field_0) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
                    if not mem[(6 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Deposit(arg2, msg.sender, arg1);
            stor101 = 1
            return ext_call.return_data[0], 0
        mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(6 * ceil32(return_data.size)) + 132] = userInfo[arg1][msg.sender].field_0
        require ext_code.size(address(poolInfo[arg1].field_1024))
        call address(poolInfo[arg1].field_1024).0xe26bdbfe with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(7 * ceil32(return_data.size)) + 164] = this.address
        mem[(7 * ceil32(return_data.size)) + 196] = arg2
        mem[(7 * ceil32(return_data.size)) + 96] = 100
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[(7 * ceil32(return_data.size)) + 228] = 32
        mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(poolInfo[arg1].field_0)):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[(7 * ceil32(return_data.size)) + 392] = 0
        call address(poolInfo[arg1].field_0) with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                if not mem[(7 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Deposit(arg2, msg.sender, arg1);
    stor101 = 1
    return ext_call.return_data[0], ext_call.return_data[0]
}

function multiClaim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129] = arg1.length
        mem[64] = ceil32(32 * arg1.length) + (64 * arg1.length) + 161
        if not arg1.length:
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _1192 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 209
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1226 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1252 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1289 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if address(poolInfo[_1226].field_1024):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor[_1252][msg.sender]
                        require ext_code.size(address(poolInfo[_1226].field_1024))
                        call address(poolInfo[_1226].field_1024).0xe26bdbfe with:
                             gas gas_remaining wei
                            args msg.sender, stor[_1252][msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1686]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1252][msg.sender] * poolInfo[_1226].field_768) + (stor2[('map', 'msg.sender', ('var', '_1252'))] * poolInfo[_1226].field_1536) / 10^12) + stor[_1289][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1252'))]
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[_1192].field_0))
                staticcall address(poolInfo[_1192].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1227 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1254 = mem[_1227]
                if not mem[_1227]:
                    poolInfo[_1192].field_512 = block.timestamp
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1312 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1331 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1347 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if address(poolInfo[_1312].field_1024):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor[_1331][msg.sender]
                        require ext_code.size(address(poolInfo[_1312].field_1024))
                        call address(poolInfo[_1312].field_1024).0xe26bdbfe with:
                             gas gas_remaining wei
                            args msg.sender, stor[_1331][msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1712 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1712]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1331][msg.sender] * poolInfo[_1312].field_768) + (stor2[('map', 'msg.sender', ('var', '_1331'))] * poolInfo[_1312].field_1536) / 10^12) + stor[_1347][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1331'))]
                    continue 
                if block.timestamp < poolInfo[_1192].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[_1192].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_1192].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[_1192].field_512 * sub_9702d3e2) and poolInfo[_1192].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_1192].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_1227] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_1227]:
                    revert with 0, 18
                if poolInfo[_1192].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1227]):
                    revert with 0, 17
                poolInfo[_1192].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1227]
                if not poolInfo[_1192].field_1280:
                    poolInfo[_1192].field_1536 = 0
                    poolInfo[_1192].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _1254
                    mem[mem[64] + 64] = poolInfo[_1192].field_768
                    emit UpdatePool(block.timestamp, _1254, poolInfo[_1192].field_768, _1192);
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1634 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1647 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1667 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if address(poolInfo[_1634].field_1024):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = stor[_1647][msg.sender]
                        require ext_code.size(address(poolInfo[_1634].field_1024))
                        call address(poolInfo[_1634].field_1024).0xe26bdbfe with:
                             gas gas_remaining wei
                            args msg.sender, stor[_1647][msg.sender]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1818 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                            revert with 0, 50
                        mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1818]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1647][msg.sender] * poolInfo[_1634].field_768) + (stor2[('map', 'msg.sender', ('var', '_1647'))] * poolInfo[_1634].field_1536) / 10^12) + stor[_1667][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1647'))]
                    continue 
                if poolInfo[_1192].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[_1192].field_1280:
                    revert with 0, 18
                if poolInfo[_1192].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1192].field_1280):
                    revert with 0, 17
                poolInfo[_1192].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1192].field_256) - (poolInfo[_1192].field_512 * sub_9702d3e2 * poolInfo[_1192].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1192].field_1280
                poolInfo[_1192].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _1254
                mem[mem[64] + 64] = poolInfo[_1192].field_768
                emit UpdatePool(block.timestamp, _1254, poolInfo[_1192].field_768, _1192);
                if idx >= mem[96]:
                    revert with 0, 50
                _1726 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1747 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1763 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1726].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1747][msg.sender]
                    require ext_code.size(address(poolInfo[_1726].field_1024))
                    call address(poolInfo[_1726].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1747][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1842]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1747][msg.sender] * poolInfo[_1726].field_768) + (stor2[('map', 'msg.sender', ('var', '_1747'))] * poolInfo[_1726].field_1536) / 10^12) + stor[_1763][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1747'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1218 = mem[_1202]
            if mem[_1202] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[mem[64] + 4] = msg.sender
            if s <= mem[_1202]:
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1286 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1286] == bool(mem[_1286])
                if s == s:
                    _1854 = mem[96]
                    idx = 0
                    while idx < _1854:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1886 = mem[(32 * idx) + 128]
                        if idx >= mem[ceil32(32 * arg1.length) + 97]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                        emit Harvest(mem[mem[64]], msg.sender, _1886);
                        if idx == -1:
                            revert with 0, 17
                        _1854 = mem[96]
                        idx = idx + 1
                        continue 
                    stor101 = 1
                    _1926 = mem[64]
                    mem[mem[64]] = s
                    mem[mem[64] + 32] = 96
                    _1950 = mem[ceil32(32 * arg1.length) + 97]
                    mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
                    mem[mem[64] + 128 len 32 * _1950] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1950]
                    var55001 = _1950
                    mem[mem[64] + 64] = (32 * _1950) + 128
                    _2102 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                    mem[_1926 + (32 * _1950) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                    mem[_1926 + (32 * _1950) + 160 len 32 * _2102] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2102]
                    return memory
                      from mem[64]
                       len _1926 + (32 * _1950) + (32 * _2102) + -mem[64] + 160
                _1855 = mem[96]
                idx = 0
                while idx < _1855:
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    if s and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / s:
                        revert with 0, 17
                    if not s:
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = s * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
                    if idx >= mem[96]:
                        revert with 0, 50
                    _2000 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Harvest(mem[mem[64]], msg.sender, _2000);
                    if idx == -1:
                        revert with 0, 17
                    _1855 = mem[96]
                    idx = idx + 1
                    continue 
                stor101 = 1
                _1928 = mem[64]
                mem[mem[64]] = s
                mem[mem[64] + 32] = 96
                _1951 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 128 len 32 * _1951] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1951]
                var55001 = _1951
                mem[mem[64] + 64] = (32 * _1951) + 128
                _2103 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1928 + (32 * _1951) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1928 + (32 * _1951) + 160 len 32 * _2103] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2103]
                return memory
                  from mem[64]
                   len _1928 + (32 * _1951) + (32 * _2103) + -mem[64] + 160
            mem[mem[64] + 36] = _1218
            require ext_code.size(sub_6af66772Address)
            call sub_6af66772Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _1218
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1287] == bool(mem[_1287])
            if _1218 == s:
                _1856 = mem[96]
                idx = 0
                while idx < _1856:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1889 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Harvest(mem[mem[64]], msg.sender, _1889);
                    if idx == -1:
                        revert with 0, 17
                    _1856 = mem[96]
                    idx = idx + 1
                    continue 
                stor101 = 1
                _1929 = mem[64]
                mem[mem[64]] = _1218
                mem[mem[64] + 32] = 96
                _1952 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 128 len 32 * _1952] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1952]
                var55001 = _1952
                mem[mem[64] + 64] = (32 * _1952) + 128
                _2104 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1929 + (32 * _1952) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1929 + (32 * _1952) + 160 len 32 * _2104] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2104]
                return memory
                  from mem[64]
                   len _1929 + (32 * _1952) + (32 * _2104) + -mem[64] + 160
            _1857 = mem[96]
            idx = 0
            while idx < _1857:
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                if _1218 and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / _1218:
                    revert with 0, 17
                if not s:
                    revert with 0, 18
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1218 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
                if idx >= mem[96]:
                    revert with 0, 50
                _2004 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _2004);
                if idx == -1:
                    revert with 0, 17
                _1857 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1931 = mem[64]
            mem[mem[64]] = _1218
            mem[mem[64] + 32] = 96
            _1953 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1953] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1953]
            var55001 = _1953
            mem[mem[64] + 64] = (32 * _1953) + 128
            _2105 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1931 + (32 * _1953) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1931 + (32 * _1953) + 160 len 32 * _2105] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2105]
            return memory
              from mem[64]
               len _1931 + (32 * _1953) + (32 * _2105) + -mem[64] + 160
        mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1195 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            mem[0] = 209
            if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                if idx >= mem[96]:
                    revert with 0, 50
                _1228 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1261 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1294 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1228].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1261][msg.sender]
                    require ext_code.size(address(poolInfo[_1228].field_1024))
                    call address(poolInfo[_1228].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1261][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1687]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1261][msg.sender] * poolInfo[_1228].field_768) + (stor2[('map', 'msg.sender', ('var', '_1261'))] * poolInfo[_1228].field_1536) / 10^12) + stor[_1294][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1261'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[_1195].field_0))
            staticcall address(poolInfo[_1195].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1263 = mem[_1229]
            if not mem[_1229]:
                poolInfo[_1195].field_512 = block.timestamp
                if idx >= mem[96]:
                    revert with 0, 50
                _1315 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1334 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1350 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1315].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1334][msg.sender]
                    require ext_code.size(address(poolInfo[_1315].field_1024))
                    call address(poolInfo[_1315].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1334][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1715 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1715]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1334][msg.sender] * poolInfo[_1315].field_768) + (stor2[('map', 'msg.sender', ('var', '_1334'))] * poolInfo[_1315].field_1536) / 10^12) + stor[_1350][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1334'))]
                continue 
            if block.timestamp < poolInfo[_1195].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[_1195].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_1195].field_512:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2) - (poolInfo[_1195].field_512 * sub_9702d3e2) and poolInfo[_1195].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_1195].field_512 * sub_9702d3e2):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if mem[_1229] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * mem[_1229]:
                revert with 0, 18
            if poolInfo[_1195].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1229]):
                revert with 0, 17
            poolInfo[_1195].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1229]
            if not poolInfo[_1195].field_1280:
                poolInfo[_1195].field_1536 = 0
                poolInfo[_1195].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _1263
                mem[mem[64] + 64] = poolInfo[_1195].field_768
                emit UpdatePool(block.timestamp, _1263, poolInfo[_1195].field_768, _1195);
                if idx >= mem[96]:
                    revert with 0, 50
                _1635 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1650 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1670 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1635].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1650][msg.sender]
                    require ext_code.size(address(poolInfo[_1635].field_1024))
                    call address(poolInfo[_1635].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1650][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1819 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1819]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1650][msg.sender] * poolInfo[_1635].field_768) + (stor2[('map', 'msg.sender', ('var', '_1650'))] * poolInfo[_1635].field_1536) / 10^12) + stor[_1670][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1650'))]
                continue 
            if poolInfo[_1195].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * poolInfo[_1195].field_1280:
                revert with 0, 18
            if poolInfo[_1195].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1195].field_1280):
                revert with 0, 17
            poolInfo[_1195].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1195].field_256) - (poolInfo[_1195].field_512 * sub_9702d3e2 * poolInfo[_1195].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1195].field_1280
            poolInfo[_1195].field_512 = block.timestamp
            mem[mem[64]] = block.timestamp
            mem[mem[64] + 32] = _1263
            mem[mem[64] + 64] = poolInfo[_1195].field_768
            emit UpdatePool(block.timestamp, _1263, poolInfo[_1195].field_768, _1195);
            if idx >= mem[96]:
                revert with 0, 50
            _1728 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _1750 = sha3(mem[(32 * idx) + 128], 212)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 212)
            if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _1766 = sha3(mem[(32 * idx) + 128], 213)
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                revert with 0, 17
            if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
            if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                revert with 0, 17
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
            if address(poolInfo[_1728].field_1024):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1750][msg.sender]
                require ext_code.size(address(poolInfo[_1728].field_1024))
                call address(poolInfo[_1728].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1750][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1843 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1843]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((stor[_1750][msg.sender] * poolInfo[_1728].field_768) + (stor2[('map', 'msg.sender', ('var', '_1750'))] * poolInfo[_1728].field_1536) / 10^12) + stor[_1766][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1750'))]
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_6af66772Address)
        staticcall sub_6af66772Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1220 = mem[_1204]
        if mem[_1204] <= 0:
            revert with 0, 'No tokens to distribute'
        mem[mem[64] + 4] = msg.sender
        if s <= mem[_1204]:
            mem[mem[64] + 36] = s
            require ext_code.size(sub_6af66772Address)
            call sub_6af66772Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1291] == bool(mem[_1291])
            if s == s:
                _1858 = mem[96]
                idx = 0
                while idx < _1858:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1892 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Harvest(mem[mem[64]], msg.sender, _1892);
                    if idx == -1:
                        revert with 0, 17
                    _1858 = mem[96]
                    idx = idx + 1
                    continue 
                stor101 = 1
                _1932 = mem[64]
                mem[mem[64]] = s
                mem[mem[64] + 32] = 96
                _1954 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 128 len 32 * _1954] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1954]
                mem[mem[64] + 64] = (32 * _1954) + 128
                _2106 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1932 + (32 * _1954) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1932 + (32 * _1954) + 160 len 32 * _2106] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2106]
                var61001 = _2106
                return memory
                  from mem[64]
                   len _1932 + (32 * _1954) + (32 * _2106) + -mem[64] + 160
            _1859 = mem[96]
            idx = 0
            while idx < _1859:
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                if s and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / s:
                    revert with 0, 17
                if not s:
                    revert with 0, 18
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = s * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
                if idx >= mem[96]:
                    revert with 0, 50
                _2008 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _2008);
                if idx == -1:
                    revert with 0, 17
                _1859 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1934 = mem[64]
            mem[mem[64]] = s
            mem[mem[64] + 32] = 96
            _1955 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1955] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1955]
            mem[mem[64] + 64] = (32 * _1955) + 128
            _2107 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1934 + (32 * _1955) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1934 + (32 * _1955) + 160 len 32 * _2107] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2107]
            var61001 = _2107
            return memory
              from mem[64]
               len _1934 + (32 * _1955) + (32 * _2107) + -mem[64] + 160
        mem[mem[64] + 36] = _1220
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1220
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1292] == bool(mem[_1292])
        if _1220 == s:
            _1860 = mem[96]
            idx = 0
            while idx < _1860:
                if idx >= mem[96]:
                    revert with 0, 50
                _1895 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _1895);
                if idx == -1:
                    revert with 0, 17
                _1860 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1935 = mem[64]
            mem[mem[64]] = _1220
            mem[mem[64] + 32] = 96
            _1956 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1956] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1956]
            mem[mem[64] + 64] = (32 * _1956) + 128
            _2108 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1935 + (32 * _1956) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1935 + (32 * _1956) + 160 len 32 * _2108] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2108]
            var61001 = _2108
            return memory
              from mem[64]
               len _1935 + (32 * _1956) + (32 * _2108) + -mem[64] + 160
        _1861 = mem[96]
        idx = 0
        while idx < _1861:
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            if _1220 and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / _1220:
                revert with 0, 17
            if not s:
                revert with 0, 18
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1220 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
            if idx >= mem[96]:
                revert with 0, 50
            _2012 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Harvest(mem[mem[64]], msg.sender, _2012);
            if idx == -1:
                revert with 0, 17
            _1861 = mem[96]
            idx = idx + 1
            continue 
        stor101 = 1
        _1937 = mem[64]
        mem[mem[64]] = _1220
        mem[mem[64] + 32] = 96
        _1957 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 128 len 32 * _1957] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1957]
        mem[mem[64] + 64] = (32 * _1957) + 128
        _2109 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1937 + (32 * _1957) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1937 + (32 * _1957) + 160 len 32 * _2109] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2109]
        var61001 = _2109
        return memory
          from mem[64]
           len _1937 + (32 * _1957) + (32 * _2109) + -mem[64] + 160
    mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129] = arg1.length
    mem[64] = ceil32(32 * arg1.length) + (64 * arg1.length) + 161
    if not arg1.length:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1198 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            mem[0] = 209
            if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                if idx >= mem[96]:
                    revert with 0, 50
                _1230 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1270 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1299 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1230].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1270][msg.sender]
                    require ext_code.size(address(poolInfo[_1230].field_1024))
                    call address(poolInfo[_1230].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1270][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1688]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1270][msg.sender] * poolInfo[_1230].field_768) + (stor2[('map', 'msg.sender', ('var', '_1270'))] * poolInfo[_1230].field_1536) / 10^12) + stor[_1299][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1270'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(poolInfo[_1198].field_0))
            staticcall address(poolInfo[_1198].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1272 = mem[_1231]
            if not mem[_1231]:
                poolInfo[_1198].field_512 = block.timestamp
                if idx >= mem[96]:
                    revert with 0, 50
                _1318 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1337 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1353 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1318].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1337][msg.sender]
                    require ext_code.size(address(poolInfo[_1318].field_1024))
                    call address(poolInfo[_1318].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1337][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1718]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1337][msg.sender] * poolInfo[_1318].field_768) + (stor2[('map', 'msg.sender', ('var', '_1337'))] * poolInfo[_1318].field_1536) / 10^12) + stor[_1353][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1337'))]
                continue 
            if block.timestamp < poolInfo[_1198].field_512:
                revert with 0, 17
            if block.timestamp - poolInfo[_1198].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_1198].field_512:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2) - (poolInfo[_1198].field_512 * sub_9702d3e2) and poolInfo[_1198].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_1198].field_512 * sub_9702d3e2):
                revert with 0, 17
            if not totalAllocPoint:
                revert with 0, 18
            if mem[_1231] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * mem[_1231]:
                revert with 0, 18
            if poolInfo[_1198].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1231]):
                revert with 0, 17
            poolInfo[_1198].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1231]
            if not poolInfo[_1198].field_1280:
                poolInfo[_1198].field_1536 = 0
                poolInfo[_1198].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _1272
                mem[mem[64] + 64] = poolInfo[_1198].field_768
                emit UpdatePool(block.timestamp, _1272, poolInfo[_1198].field_768, _1198);
                if idx >= mem[96]:
                    revert with 0, 50
                _1636 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1653 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1673 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if address(poolInfo[_1636].field_1024):
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1653][msg.sender]
                    require ext_code.size(address(poolInfo[_1636].field_1024))
                    call address(poolInfo[_1636].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1653][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1820]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1653][msg.sender] * poolInfo[_1636].field_768) + (stor2[('map', 'msg.sender', ('var', '_1653'))] * poolInfo[_1636].field_1536) / 10^12) + stor[_1673][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1653'))]
                continue 
            if poolInfo[_1198].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint:
                revert with 0, 17
            if not 1000 * poolInfo[_1198].field_1280:
                revert with 0, 18
            if poolInfo[_1198].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1198].field_1280):
                revert with 0, 17
            poolInfo[_1198].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1198].field_256) - (poolInfo[_1198].field_512 * sub_9702d3e2 * poolInfo[_1198].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1198].field_1280
            poolInfo[_1198].field_512 = block.timestamp
            mem[mem[64]] = block.timestamp
            mem[mem[64] + 32] = _1272
            mem[mem[64] + 64] = poolInfo[_1198].field_768
            emit UpdatePool(block.timestamp, _1272, poolInfo[_1198].field_768, _1198);
            if idx >= mem[96]:
                revert with 0, 50
            _1730 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _1753 = sha3(mem[(32 * idx) + 128], 212)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 212)
            if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _1769 = sha3(mem[(32 * idx) + 128], 213)
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                revert with 0, 17
            if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
            if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                revert with 0, 17
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
            if address(poolInfo[_1730].field_1024):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1753][msg.sender]
                require ext_code.size(address(poolInfo[_1730].field_1024))
                call address(poolInfo[_1730].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1753][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1844]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((stor[_1753][msg.sender] * poolInfo[_1730].field_768) + (stor2[('map', 'msg.sender', ('var', '_1753'))] * poolInfo[_1730].field_1536) / 10^12) + stor[_1769][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1753'))]
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_6af66772Address)
        staticcall sub_6af66772Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1222 = mem[_1206]
        if mem[_1206] <= 0:
            revert with 0, 'No tokens to distribute'
        mem[mem[64] + 4] = msg.sender
        if s <= mem[_1206]:
            mem[mem[64] + 36] = s
            require ext_code.size(sub_6af66772Address)
            call sub_6af66772Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1296] == bool(mem[_1296])
            if s == s:
                _1862 = mem[96]
                idx = 0
                while idx < _1862:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1898 = mem[(32 * idx) + 128]
                    if idx >= mem[ceil32(32 * arg1.length) + 97]:
                        revert with 0, 50
                    mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                    emit Harvest(mem[mem[64]], msg.sender, _1898);
                    if idx == -1:
                        revert with 0, 17
                    _1862 = mem[96]
                    idx = idx + 1
                    continue 
                stor101 = 1
                _1938 = mem[64]
                mem[mem[64]] = s
                mem[mem[64] + 32] = 96
                _1958 = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
                mem[mem[64] + 128 len 32 * _1958] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1958]
                mem[mem[64] + 64] = (32 * _1958) + 128
                _2110 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1938 + (32 * _1958) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
                mem[_1938 + (32 * _1958) + 160 len 32 * _2110] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2110]
                var61001 = _2110
                return memory
                  from mem[64]
                   len _1938 + (32 * _1958) + (32 * _2110) + -mem[64] + 160
            _1863 = mem[96]
            idx = 0
            while idx < _1863:
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                if s and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / s:
                    revert with 0, 17
                if not s:
                    revert with 0, 18
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = s * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
                if idx >= mem[96]:
                    revert with 0, 50
                _2016 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _2016);
                if idx == -1:
                    revert with 0, 17
                _1863 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1940 = mem[64]
            mem[mem[64]] = s
            mem[mem[64] + 32] = 96
            _1959 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1959] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1959]
            mem[mem[64] + 64] = (32 * _1959) + 128
            _2111 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1940 + (32 * _1959) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1940 + (32 * _1959) + 160 len 32 * _2111] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2111]
            var61001 = _2111
            return memory
              from mem[64]
               len _1940 + (32 * _1959) + (32 * _2111) + -mem[64] + 160
        mem[mem[64] + 36] = _1222
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _1222
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1297] == bool(mem[_1297])
        if _1222 == s:
            _1864 = mem[96]
            idx = 0
            while idx < _1864:
                if idx >= mem[96]:
                    revert with 0, 50
                _1901 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _1901);
                if idx == -1:
                    revert with 0, 17
                _1864 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1941 = mem[64]
            mem[mem[64]] = _1222
            mem[mem[64] + 32] = 96
            _1960 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1960] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1960]
            mem[mem[64] + 64] = (32 * _1960) + 128
            _2112 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1941 + (32 * _1960) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1941 + (32 * _1960) + 160 len 32 * _2112] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2112]
            var61001 = _2112
            return memory
              from mem[64]
               len _1941 + (32 * _1960) + (32 * _2112) + -mem[64] + 160
        _1865 = mem[96]
        idx = 0
        while idx < _1865:
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            if _1222 and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / _1222:
                revert with 0, 17
            if not s:
                revert with 0, 18
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1222 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
            if idx >= mem[96]:
                revert with 0, 50
            _2020 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Harvest(mem[mem[64]], msg.sender, _2020);
            if idx == -1:
                revert with 0, 17
            _1865 = mem[96]
            idx = idx + 1
            continue 
        stor101 = 1
        _1943 = mem[64]
        mem[mem[64]] = _1222
        mem[mem[64] + 32] = 96
        _1961 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 128 len 32 * _1961] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1961]
        mem[mem[64] + 64] = (32 * _1961) + 128
        _2113 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1943 + (32 * _1961) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1943 + (32 * _1961) + 160 len 32 * _2113] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2113]
        var61001 = _2113
        return memory
          from mem[64]
           len _1943 + (32 * _1961) + (32 * _2113) + -mem[64] + 160
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _1201 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= poolInfo.length:
            revert with 0, 50
        mem[0] = 209
        if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
            if idx >= mem[96]:
                revert with 0, 50
            _1232 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _1279 = sha3(mem[(32 * idx) + 128], 212)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 212)
            if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _1304 = sha3(mem[(32 * idx) + 128], 213)
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                revert with 0, 17
            if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
            if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                revert with 0, 17
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
            if address(poolInfo[_1232].field_1024):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1279][msg.sender]
                require ext_code.size(address(poolInfo[_1232].field_1024))
                call address(poolInfo[_1232].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1279][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1689]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((stor[_1279][msg.sender] * poolInfo[_1232].field_768) + (stor2[('map', 'msg.sender', ('var', '_1279'))] * poolInfo[_1232].field_1536) / 10^12) + stor[_1304][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1279'))]
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(poolInfo[_1201].field_0))
        staticcall address(poolInfo[_1201].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1281 = mem[_1233]
        if not mem[_1233]:
            poolInfo[_1201].field_512 = block.timestamp
            if idx >= mem[96]:
                revert with 0, 50
            _1321 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _1340 = sha3(mem[(32 * idx) + 128], 212)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 212)
            if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _1356 = sha3(mem[(32 * idx) + 128], 213)
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                revert with 0, 17
            if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
            if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                revert with 0, 17
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
            if address(poolInfo[_1321].field_1024):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1340][msg.sender]
                require ext_code.size(address(poolInfo[_1321].field_1024))
                call address(poolInfo[_1321].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1340][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1721]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((stor[_1340][msg.sender] * poolInfo[_1321].field_768) + (stor2[('map', 'msg.sender', ('var', '_1340'))] * poolInfo[_1321].field_1536) / 10^12) + stor[_1356][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1340'))]
            continue 
        if block.timestamp < poolInfo[_1201].field_512:
            revert with 0, 17
        if block.timestamp - poolInfo[_1201].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_1201].field_512:
            revert with 0, 17
        if (block.timestamp * sub_9702d3e2) - (poolInfo[_1201].field_512 * sub_9702d3e2) and poolInfo[_1201].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_1201].field_512 * sub_9702d3e2):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if mem[_1233] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint:
            revert with 0, 17
        if not 1000 * mem[_1233]:
            revert with 0, 18
        if poolInfo[_1201].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1233]):
            revert with 0, 17
        poolInfo[_1201].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_1233]
        if not poolInfo[_1201].field_1280:
            poolInfo[_1201].field_1536 = 0
            poolInfo[_1201].field_512 = block.timestamp
            mem[mem[64]] = block.timestamp
            mem[mem[64] + 32] = _1281
            mem[mem[64] + 64] = poolInfo[_1201].field_768
            emit UpdatePool(block.timestamp, _1281, poolInfo[_1201].field_768, _1201);
            if idx >= mem[96]:
                revert with 0, 50
            _1637 = mem[(32 * idx) + 128]
            if mem[(32 * idx) + 128] >= poolInfo.length:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _1656 = sha3(mem[(32 * idx) + 128], 212)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 212)
            if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            _1676 = sha3(mem[(32 * idx) + 128], 213)
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                revert with 0, 17
            if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                revert with 0, 17
            if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                revert with 0, 17
            userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
            if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                revert with 0, 17
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
            if address(poolInfo[_1637].field_1024):
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1656][msg.sender]
                require ext_code.size(address(poolInfo[_1637].field_1024))
                call address(poolInfo[_1637].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1656][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1821]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((stor[_1656][msg.sender] * poolInfo[_1637].field_768) + (stor2[('map', 'msg.sender', ('var', '_1656'))] * poolInfo[_1637].field_1536) / 10^12) + stor[_1676][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1656'))]
            continue 
        if poolInfo[_1201].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint:
            revert with 0, 17
        if not 1000 * poolInfo[_1201].field_1280:
            revert with 0, 18
        if poolInfo[_1201].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1201].field_1280):
            revert with 0, 17
        poolInfo[_1201].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_1201].field_256) - (poolInfo[_1201].field_512 * sub_9702d3e2 * poolInfo[_1201].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_1201].field_1280
        poolInfo[_1201].field_512 = block.timestamp
        mem[mem[64]] = block.timestamp
        mem[mem[64] + 32] = _1281
        mem[mem[64] + 64] = poolInfo[_1201].field_768
        emit UpdatePool(block.timestamp, _1281, poolInfo[_1201].field_768, _1201);
        if idx >= mem[96]:
            revert with 0, 50
        _1732 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 128] >= poolInfo.length:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        _1756 = sha3(mem[(32 * idx) + 128], 212)
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 212)
        if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        _1772 = sha3(mem[(32 * idx) + 128], 213)
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
            revert with 0, 17
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
            revert with 0, 17
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
            revert with 0, 17
        if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
            revert with 0, 17
        if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 213)
        sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
            revert with 0, 17
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
            revert with 0, 17
        if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
            revert with 0, 17
        userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
        if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
            revert with 0, 17
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
        if address(poolInfo[_1732].field_1024):
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = stor[_1756][msg.sender]
            require ext_code.size(address(poolInfo[_1732].field_1024))
            call address(poolInfo[_1732].field_1024).0xe26bdbfe with:
                 gas gas_remaining wei
                args msg.sender, stor[_1756][msg.sender]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1845 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = mem[_1845]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((stor[_1756][msg.sender] * poolInfo[_1732].field_768) + (stor2[('map', 'msg.sender', ('var', '_1756'))] * poolInfo[_1732].field_1536) / 10^12) + stor[_1772][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1756'))]
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(sub_6af66772Address)
    staticcall sub_6af66772Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1208 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1224 = mem[_1208]
    if mem[_1208] <= 0:
        revert with 0, 'No tokens to distribute'
    mem[mem[64] + 4] = msg.sender
    if s <= mem[_1208]:
        mem[mem[64] + 36] = s
        require ext_code.size(sub_6af66772Address)
        call sub_6af66772Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1301 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1301] == bool(mem[_1301])
        if s == s:
            _1866 = mem[96]
            idx = 0
            while idx < _1866:
                if idx >= mem[96]:
                    revert with 0, 50
                _1904 = mem[(32 * idx) + 128]
                if idx >= mem[ceil32(32 * arg1.length) + 97]:
                    revert with 0, 50
                mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
                emit Harvest(mem[mem[64]], msg.sender, _1904);
                if idx == -1:
                    revert with 0, 17
                _1866 = mem[96]
                idx = idx + 1
                continue 
            stor101 = 1
            _1944 = mem[64]
            mem[mem[64]] = s
            mem[mem[64] + 32] = 96
            _1962 = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
            mem[mem[64] + 128 len 32 * _1962] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1962]
            mem[mem[64] + 64] = (32 * _1962) + 128
            _2114 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1944 + (32 * _1962) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
            mem[_1944 + (32 * _1962) + 160 len 32 * _2114] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2114]
            var62001 = _2114
            return memory
              from mem[64]
               len _1944 + (32 * _1962) + (32 * _2114) + -mem[64] + 160
        _1867 = mem[96]
        idx = 0
        while idx < _1867:
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            if s and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / s:
                revert with 0, 17
            if not s:
                revert with 0, 18
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = s * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
            if idx >= mem[96]:
                revert with 0, 50
            _2024 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Harvest(mem[mem[64]], msg.sender, _2024);
            if idx == -1:
                revert with 0, 17
            _1867 = mem[96]
            idx = idx + 1
            continue 
        stor101 = 1
        _1946 = mem[64]
        mem[mem[64]] = s
        mem[mem[64] + 32] = 96
        _1963 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 128 len 32 * _1963] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1963]
        mem[mem[64] + 64] = (32 * _1963) + 128
        _2115 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1946 + (32 * _1963) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1946 + (32 * _1963) + 160 len 32 * _2115] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2115]
        var62001 = _2115
        return memory
          from mem[64]
           len _1946 + (32 * _1963) + (32 * _2115) + -mem[64] + 160
    mem[mem[64] + 36] = _1224
    require ext_code.size(sub_6af66772Address)
    call sub_6af66772Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _1224
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1302 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1302] == bool(mem[_1302])
    if _1224 == s:
        _1868 = mem[96]
        idx = 0
        while idx < _1868:
            if idx >= mem[96]:
                revert with 0, 50
            _1907 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * arg1.length) + 97]:
                revert with 0, 50
            mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            emit Harvest(mem[mem[64]], msg.sender, _1907);
            if idx == -1:
                revert with 0, 17
            _1868 = mem[96]
            idx = idx + 1
            continue 
        stor101 = 1
        _1947 = mem[64]
        mem[mem[64]] = _1224
        mem[mem[64] + 32] = 96
        _1964 = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
        mem[mem[64] + 128 len 32 * _1964] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1964]
        mem[mem[64] + 64] = (32 * _1964) + 128
        _2116 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1947 + (32 * _1964) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
        mem[_1947 + (32 * _1964) + 160 len 32 * _2116] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2116]
        var62001 = _2116
        return memory
          from mem[64]
           len _1947 + (32 * _1964) + (32 * _2116) + -mem[64] + 160
    _1869 = mem[96]
    idx = 0
    while idx < _1869:
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        if _1224 and mem[(32 * idx) + ceil32(32 * arg1.length) + 129] > -1 / _1224:
            revert with 0, 17
        if not s:
            revert with 0, 18
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = _1224 * mem[(32 * idx) + ceil32(32 * arg1.length) + 129] / s
        if idx >= mem[96]:
            revert with 0, 50
        _2028 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[mem[64]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        emit Harvest(mem[mem[64]], msg.sender, _2028);
        if idx == -1:
            revert with 0, 17
        _1869 = mem[96]
        idx = idx + 1
        continue 
    stor101 = 1
    _1949 = mem[64]
    mem[mem[64]] = _1224
    mem[mem[64] + 32] = 96
    _1965 = mem[ceil32(32 * arg1.length) + 97]
    mem[mem[64] + 96] = mem[ceil32(32 * arg1.length) + 97]
    mem[mem[64] + 128 len 32 * _1965] = mem[ceil32(32 * arg1.length) + 129 len 32 * _1965]
    mem[mem[64] + 64] = (32 * _1965) + 128
    _2117 = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
    mem[_1949 + (32 * _1965) + 128] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129]
    mem[_1949 + (32 * _1965) + 160 len 32 * _2117] = mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161 len 32 * _2117]
    var62001 = _2117
    return memory
      from mem[64]
       len _1949 + (32 * _1965) + (32 * _2117) + -mem[64] + 160
}

function migrate(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor203:
        revert with 0, 'to where?'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 0, 65
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        if arg1.length > test266151307():
            revert with 0, 65
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _638 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 209
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _672 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _698 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _735 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_698][msg.sender]
                    require ext_code.size(address(poolInfo[_672].field_1024))
                    call address(poolInfo[_672].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_698][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1180]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_698][msg.sender] * poolInfo[_672].field_768) + (stor2[('map', 'msg.sender', ('var', '_698'))] * poolInfo[_672].field_1536) / 10^12) + stor[_735][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_698'))]
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[_638].field_0))
                staticcall address(poolInfo[_638].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _673 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _700 = mem[_673]
                if not mem[_673]:
                    poolInfo[_638].field_512 = block.timestamp
                    if idx >= mem[96]:
                        revert with 0, 50
                    _758 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _777 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _793 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_777][msg.sender]
                    require ext_code.size(address(poolInfo[_758].field_1024))
                    call address(poolInfo[_758].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_777][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1206 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1206]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_777][msg.sender] * poolInfo[_758].field_768) + (stor2[('map', 'msg.sender', ('var', '_777'))] * poolInfo[_758].field_1536) / 10^12) + stor[_793][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_777'))]
                    continue 
                if block.timestamp < poolInfo[_638].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[_638].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_638].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[_638].field_512 * sub_9702d3e2) and poolInfo[_638].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_638].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_673] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_673]:
                    revert with 0, 18
                if poolInfo[_638].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_673]):
                    revert with 0, 17
                poolInfo[_638].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_673]
                if not poolInfo[_638].field_1280:
                    poolInfo[_638].field_1536 = 0
                    poolInfo[_638].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _700
                    mem[mem[64] + 64] = poolInfo[_638].field_768
                    emit UpdatePool(block.timestamp, _700, poolInfo[_638].field_768, _638);
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1128 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1141 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1161 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1141][msg.sender]
                    require ext_code.size(address(poolInfo[_1128].field_1024))
                    call address(poolInfo[_1128].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1141][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1312]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1141][msg.sender] * poolInfo[_1128].field_768) + (stor2[('map', 'msg.sender', ('var', '_1141'))] * poolInfo[_1128].field_1536) / 10^12) + stor[_1161][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1141'))]
                    continue 
                if poolInfo[_638].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[_638].field_1280:
                    revert with 0, 18
                if poolInfo[_638].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_638].field_1280):
                    revert with 0, 17
                poolInfo[_638].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_638].field_256) - (poolInfo[_638].field_512 * sub_9702d3e2 * poolInfo[_638].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_638].field_1280
                poolInfo[_638].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _700
                mem[mem[64] + 64] = poolInfo[_638].field_768
                emit UpdatePool(block.timestamp, _700, poolInfo[_638].field_768, _638);
                if idx >= mem[96]:
                    revert with 0, 50
                _1220 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1241 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1257 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1241][msg.sender]
                require ext_code.size(address(poolInfo[_1220].field_1024))
                call address(poolInfo[_1220].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1241][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1336 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(64 * arg1.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1336]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1241][msg.sender] * poolInfo[_1220].field_768) + (stor2[('map', 'msg.sender', ('var', '_1241'))] * poolInfo[_1220].field_1536) / 10^12) + stor[_1257][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1241'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _648 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _664 = mem[_648]
            if mem[_648] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[mem[64] + 4] = msg.sender
            if s <= mem[_648]:
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _732 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_732] == bool(mem[_732])
                if s == s:
                    _1348 = mem[96]
                    idx = 0
                    while idx < _1348:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1380 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1380);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1708] == bool(mem[_1708])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1349 = mem[96]
                    idx = 0
                    while idx < _1349:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if s and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / s:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = s * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1526 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1526);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1709 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1709] == bool(mem[_1709])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[mem[64] + 36] = _664
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _664
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _733 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_733] == bool(mem[_733])
                if _664 == s:
                    _1350 = mem[96]
                    idx = 0
                    while idx < _1350:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1383 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1383);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1710] == bool(mem[_1710])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1351 = mem[96]
                    idx = 0
                    while idx < _1351:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if _664 and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / _664:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _664 * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1530 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1530);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1711 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1711] == bool(mem[_1711])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _641 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 209
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _674 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _707 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _740 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_707][msg.sender]
                    require ext_code.size(address(poolInfo[_674].field_1024))
                    call address(poolInfo[_674].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_707][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1181]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_707][msg.sender] * poolInfo[_674].field_768) + (stor2[('map', 'msg.sender', ('var', '_707'))] * poolInfo[_674].field_1536) / 10^12) + stor[_740][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_707'))]
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[_641].field_0))
                staticcall address(poolInfo[_641].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _709 = mem[_675]
                if not mem[_675]:
                    poolInfo[_641].field_512 = block.timestamp
                    if idx >= mem[96]:
                        revert with 0, 50
                    _761 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _780 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _796 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_780][msg.sender]
                    require ext_code.size(address(poolInfo[_761].field_1024))
                    call address(poolInfo[_761].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_780][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1209]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_780][msg.sender] * poolInfo[_761].field_768) + (stor2[('map', 'msg.sender', ('var', '_780'))] * poolInfo[_761].field_1536) / 10^12) + stor[_796][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_780'))]
                    continue 
                if block.timestamp < poolInfo[_641].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[_641].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_641].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[_641].field_512 * sub_9702d3e2) and poolInfo[_641].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_641].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_675] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_675]:
                    revert with 0, 18
                if poolInfo[_641].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_675]):
                    revert with 0, 17
                poolInfo[_641].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_675]
                if not poolInfo[_641].field_1280:
                    poolInfo[_641].field_1536 = 0
                    poolInfo[_641].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _709
                    mem[mem[64] + 64] = poolInfo[_641].field_768
                    emit UpdatePool(block.timestamp, _709, poolInfo[_641].field_768, _641);
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1129 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1144 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1164 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1144][msg.sender]
                    require ext_code.size(address(poolInfo[_1129].field_1024))
                    call address(poolInfo[_1129].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1144][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1313]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1144][msg.sender] * poolInfo[_1129].field_768) + (stor2[('map', 'msg.sender', ('var', '_1144'))] * poolInfo[_1129].field_1536) / 10^12) + stor[_1164][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1144'))]
                    continue 
                if poolInfo[_641].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[_641].field_1280:
                    revert with 0, 18
                if poolInfo[_641].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_641].field_1280):
                    revert with 0, 17
                poolInfo[_641].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_641].field_256) - (poolInfo[_641].field_512 * sub_9702d3e2 * poolInfo[_641].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_641].field_1280
                poolInfo[_641].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _709
                mem[mem[64] + 64] = poolInfo[_641].field_768
                emit UpdatePool(block.timestamp, _709, poolInfo[_641].field_768, _641);
                if idx >= mem[96]:
                    revert with 0, 50
                _1222 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1244 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1260 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1244][msg.sender]
                require ext_code.size(address(poolInfo[_1222].field_1024))
                call address(poolInfo[_1222].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1244][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1337 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(64 * arg1.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1337]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1244][msg.sender] * poolInfo[_1222].field_768) + (stor2[('map', 'msg.sender', ('var', '_1244'))] * poolInfo[_1222].field_1536) / 10^12) + stor[_1260][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1244'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _666 = mem[_650]
            if mem[_650] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[mem[64] + 4] = msg.sender
            if s <= mem[_650]:
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _737 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_737] == bool(mem[_737])
                if s == s:
                    _1352 = mem[96]
                    idx = 0
                    while idx < _1352:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1386 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1386);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1712 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1712] == bool(mem[_1712])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1353 = mem[96]
                    idx = 0
                    while idx < _1353:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if s and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / s:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = s * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1534 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1534);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1713 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1713] == bool(mem[_1713])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[mem[64] + 36] = _666
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _666
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _738 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_738] == bool(mem[_738])
                if _666 == s:
                    _1354 = mem[96]
                    idx = 0
                    while idx < _1354:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1389 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1389);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1714] == bool(mem[_1714])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1355 = mem[96]
                    idx = 0
                    while idx < _1355:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if _666 and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / _666:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _666 * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1538 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1538);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1715 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1715] == bool(mem[_1715])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        if arg1.length > test266151307():
            revert with 0, 65
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _644 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 209
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _676 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _716 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _745 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_716][msg.sender]
                    require ext_code.size(address(poolInfo[_676].field_1024))
                    call address(poolInfo[_676].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_716][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1182]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_716][msg.sender] * poolInfo[_676].field_768) + (stor2[('map', 'msg.sender', ('var', '_716'))] * poolInfo[_676].field_1536) / 10^12) + stor[_745][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_716'))]
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[_644].field_0))
                staticcall address(poolInfo[_644].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _677 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _718 = mem[_677]
                if not mem[_677]:
                    poolInfo[_644].field_512 = block.timestamp
                    if idx >= mem[96]:
                        revert with 0, 50
                    _764 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _783 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _799 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_783][msg.sender]
                    require ext_code.size(address(poolInfo[_764].field_1024))
                    call address(poolInfo[_764].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_783][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1212 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1212]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_783][msg.sender] * poolInfo[_764].field_768) + (stor2[('map', 'msg.sender', ('var', '_783'))] * poolInfo[_764].field_1536) / 10^12) + stor[_799][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_783'))]
                    continue 
                if block.timestamp < poolInfo[_644].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[_644].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_644].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[_644].field_512 * sub_9702d3e2) and poolInfo[_644].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_644].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_677] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_677]:
                    revert with 0, 18
                if poolInfo[_644].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_677]):
                    revert with 0, 17
                poolInfo[_644].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_677]
                if not poolInfo[_644].field_1280:
                    poolInfo[_644].field_1536 = 0
                    poolInfo[_644].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _718
                    mem[mem[64] + 64] = poolInfo[_644].field_768
                    emit UpdatePool(block.timestamp, _718, poolInfo[_644].field_768, _644);
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1130 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1147 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1167 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1147][msg.sender]
                    require ext_code.size(address(poolInfo[_1130].field_1024))
                    call address(poolInfo[_1130].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1147][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1314 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1314]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1147][msg.sender] * poolInfo[_1130].field_768) + (stor2[('map', 'msg.sender', ('var', '_1147'))] * poolInfo[_1130].field_1536) / 10^12) + stor[_1167][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1147'))]
                    continue 
                if poolInfo[_644].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[_644].field_1280:
                    revert with 0, 18
                if poolInfo[_644].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_644].field_1280):
                    revert with 0, 17
                poolInfo[_644].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_644].field_256) - (poolInfo[_644].field_512 * sub_9702d3e2 * poolInfo[_644].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_644].field_1280
                poolInfo[_644].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _718
                mem[mem[64] + 64] = poolInfo[_644].field_768
                emit UpdatePool(block.timestamp, _718, poolInfo[_644].field_768, _644);
                if idx >= mem[96]:
                    revert with 0, 50
                _1224 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1247 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1263 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1247][msg.sender]
                require ext_code.size(address(poolInfo[_1224].field_1024))
                call address(poolInfo[_1224].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1247][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(64 * arg1.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1338]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1247][msg.sender] * poolInfo[_1224].field_768) + (stor2[('map', 'msg.sender', ('var', '_1247'))] * poolInfo[_1224].field_1536) / 10^12) + stor[_1263][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1247'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _652 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _668 = mem[_652]
            if mem[_652] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[mem[64] + 4] = msg.sender
            if s <= mem[_652]:
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _742 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_742] == bool(mem[_742])
                if s == s:
                    _1356 = mem[96]
                    idx = 0
                    while idx < _1356:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1392 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1392);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1716] == bool(mem[_1716])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1357 = mem[96]
                    idx = 0
                    while idx < _1357:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if s and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / s:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = s * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1542 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1542);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1717 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1717] == bool(mem[_1717])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[mem[64] + 36] = _668
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _668
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_743] == bool(mem[_743])
                if _668 == s:
                    _1358 = mem[96]
                    idx = 0
                    while idx < _1358:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1395 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1395);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1718] == bool(mem[_1718])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1359 = mem[96]
                    idx = 0
                    while idx < _1359:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if _668 and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / _668:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _668 * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1546 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1546);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1719 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1719] == bool(mem[_1719])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
        else:
            mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            s = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _647 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                mem[0] = 209
                if block.timestamp <= poolInfo[mem[(32 * idx) + 128]].field_512:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _678 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _725 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _750 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_725][msg.sender]
                    require ext_code.size(address(poolInfo[_678].field_1024))
                    call address(poolInfo[_678].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_725][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1183 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1183]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_725][msg.sender] * poolInfo[_678].field_768) + (stor2[('map', 'msg.sender', ('var', '_725'))] * poolInfo[_678].field_1536) / 10^12) + stor[_750][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_725'))]
                    continue 
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(poolInfo[_647].field_0))
                staticcall address(poolInfo[_647].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _727 = mem[_679]
                if not mem[_679]:
                    poolInfo[_647].field_512 = block.timestamp
                    if idx >= mem[96]:
                        revert with 0, 50
                    _767 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _786 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _802 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_786][msg.sender]
                    require ext_code.size(address(poolInfo[_767].field_1024))
                    call address(poolInfo[_767].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_786][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1215]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_786][msg.sender] * poolInfo[_767].field_768) + (stor2[('map', 'msg.sender', ('var', '_786'))] * poolInfo[_767].field_1536) / 10^12) + stor[_802][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_786'))]
                    continue 
                if block.timestamp < poolInfo[_647].field_512:
                    revert with 0, 17
                if block.timestamp - poolInfo[_647].field_512 and sub_9702d3e2 > -1 / block.timestamp - poolInfo[_647].field_512:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2) - (poolInfo[_647].field_512 * sub_9702d3e2) and poolInfo[_647].field_256 > -1 / (block.timestamp * sub_9702d3e2) - (poolInfo[_647].field_512 * sub_9702d3e2):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if mem[_679] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint and sub_05ed1de4 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * mem[_679]:
                    revert with 0, 18
                if poolInfo[_647].field_768 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_679]):
                    revert with 0, 17
                poolInfo[_647].field_768 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint * sub_05ed1de4 / 1000 * mem[_679]
                if not poolInfo[_647].field_1280:
                    poolInfo[_647].field_1536 = 0
                    poolInfo[_647].field_512 = block.timestamp
                    mem[mem[64]] = block.timestamp
                    mem[mem[64] + 32] = _727
                    mem[mem[64] + 64] = poolInfo[_647].field_768
                    emit UpdatePool(block.timestamp, _727, poolInfo[_647].field_768, _647);
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1131 = mem[(32 * idx) + 128]
                    if mem[(32 * idx) + 128] >= poolInfo.length:
                        revert with 0, 50
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1150 = sha3(mem[(32 * idx) + 128], 212)
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 212)
                    if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if idx >= mem[96]:
                        revert with 0, 50
                    _1170 = sha3(mem[(32 * idx) + 128], 213)
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                        revert with 0, 17
                    if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = msg.sender
                    mem[32] = sha3(mem[(32 * idx) + 128], 213)
                    sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                        revert with 0, 17
                    if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                        revert with 0, 17
                    userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                    if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                        revert with 0, 17
                    if idx >= mem[(32 * arg1.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = stor[_1150][msg.sender]
                    require ext_code.size(address(poolInfo[_1131].field_1024))
                    call address(poolInfo[_1131].field_1024).0xe26bdbfe with:
                         gas gas_remaining wei
                        args msg.sender, stor[_1150][msg.sender]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(64 * arg1.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1315]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((stor[_1150][msg.sender] * poolInfo[_1131].field_768) + (stor2[('map', 'msg.sender', ('var', '_1150'))] * poolInfo[_1131].field_1536) / 10^12) + stor[_1170][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1150'))]
                    continue 
                if poolInfo[_647].field_1280 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint and sub_f87bbc56 > -1 / 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not 1000 * poolInfo[_647].field_1280:
                    revert with 0, 18
                if poolInfo[_647].field_1536 > !(10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_647].field_1280):
                    revert with 0, 17
                poolInfo[_647].field_1536 += 10^12 * (block.timestamp * sub_9702d3e2 * poolInfo[_647].field_256) - (poolInfo[_647].field_512 * sub_9702d3e2 * poolInfo[_647].field_256) / totalAllocPoint * sub_f87bbc56 / 1000 * poolInfo[_647].field_1280
                poolInfo[_647].field_512 = block.timestamp
                mem[mem[64]] = block.timestamp
                mem[mem[64] + 32] = _727
                mem[mem[64] + 64] = poolInfo[_647].field_768
                emit UpdatePool(block.timestamp, _727, poolInfo[_647].field_768, _647);
                if idx >= mem[96]:
                    revert with 0, 50
                _1226 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] >= poolInfo.length:
                    revert with 0, 50
                if idx >= mem[96]:
                    revert with 0, 50
                _1250 = sha3(mem[(32 * idx) + 128], 212)
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 212)
                if not userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                _1266 = sha3(mem[(32 * idx) + 128], 213)
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                if (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12 > !sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)]:
                    revert with 0, 17
                if ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] < userInfo[mem[(32 * idx) + 128]][msg.sender].field_256:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 213)
                sub_8b4d83a3[mem[(32 * idx) + 128]][msg.sender] = 0
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 and poolInfo[mem[(32 * idx) + 128]].field_1536 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 and poolInfo[mem[(32 * idx) + 128]].field_768 > -1 / userInfo[mem[(32 * idx) + 128]][msg.sender].field_0:
                    revert with 0, 17
                if userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768 > !(userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536):
                    revert with 0, 17
                userInfo[mem[(32 * idx) + 128]][msg.sender].field_256 = (userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12
                if s > !(((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256):
                    revert with 0, 17
                if idx >= mem[(32 * arg1.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                if not address(poolInfo[mem[(32 * idx) + 128]].field_1024):
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + ((userInfo[mem[(32 * idx) + 128]][msg.sender].field_0 * poolInfo[mem[(32 * idx) + 128]].field_768) + (userInfo[mem[(32 * idx) + 128]][msg.sender].field_512 * poolInfo[mem[(32 * idx) + 128]].field_1536) / 10^12) + sub_8b4d83a3[mem[(32 * idx) + 128]][address(msg.sender)] - userInfo[mem[(32 * idx) + 128]][msg.sender].field_256
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = stor[_1250][msg.sender]
                require ext_code.size(address(poolInfo[_1226].field_1024))
                call address(poolInfo[_1226].field_1024).0xe26bdbfe with:
                     gas gas_remaining wei
                    args msg.sender, stor[_1250][msg.sender]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(64 * arg1.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1339]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((stor[_1250][msg.sender] * poolInfo[_1226].field_768) + (stor2[('map', 'msg.sender', ('var', '_1250'))] * poolInfo[_1226].field_1536) / 10^12) + stor[_1266][address(msg.sender)] - stor1[('map', 'msg.sender', ('var', '_1250'))]
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6af66772Address)
            staticcall sub_6af66772Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _670 = mem[_654]
            if mem[_654] <= 0:
                revert with 0, 'No tokens to distribute'
            mem[mem[64] + 4] = msg.sender
            if s <= mem[_654]:
                mem[mem[64] + 36] = s
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_747] == bool(mem[_747])
                if s == s:
                    _1360 = mem[96]
                    idx = 0
                    while idx < _1360:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1398 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1398);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1720] == bool(mem[_1720])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1361 = mem[96]
                    idx = 0
                    while idx < _1361:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if s and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / s:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = s * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1550 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1550);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1721 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1721] == bool(mem[_1721])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                mem[mem[64] + 36] = _670
                require ext_code.size(sub_6af66772Address)
                call sub_6af66772Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _670
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _748 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_748] == bool(mem[_748])
                if _670 == s:
                    _1362 = mem[96]
                    idx = 0
                    while idx < _1362:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1401 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1401);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1722] == bool(mem[_1722])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    _1363 = mem[96]
                    idx = 0
                    while idx < _1363:
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        if _670 and mem[(32 * idx) + (32 * arg1.length) + 160] > -1 / _670:
                            revert with 0, 17
                        if not s:
                            revert with 0, 18
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * arg1.length) + 160] = _670 * mem[(32 * idx) + (32 * arg1.length) + 160] / s
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1554 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * arg1.length) + 128]:
                            revert with 0, 50
                        mem[mem[64]] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        emit Harvest(mem[mem[64]], msg.sender, _1554);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < arg1.length:
                        mem[0] = msg.sender
                        mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 212)
                        if userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0:
                            if cd[((32 * idx) + arg1 + 36)] >= poolInfo.length:
                                revert with 0, 50
                            mem[0] = 209
                            mem[mem[64] + 4] = stor203
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            require ext_code.size(address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0))
                            call address(poolInfo[cd[((32 * idx) + arg1 + 36)]].field_0).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args stor203, userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1723 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1723] == bool(mem[_1723])
                            mem[mem[64]] = 0x90210d7e00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
                            mem[mem[64] + 36] = userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(stor203)
                            call stor203.0x90210d7e with:
                                 gas gas_remaining wei
                                args cd[((32 * idx) + arg1 + 36)], userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0, msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            userInfo[cd[((32 * idx) + arg1 + 36)]][msg.sender].field_0 = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    stor101 = 1
}



}
