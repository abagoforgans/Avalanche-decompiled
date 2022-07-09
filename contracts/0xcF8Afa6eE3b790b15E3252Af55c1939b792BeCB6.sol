contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - stake(uint256 arg1, uint256 arg2)
#
const SCALE = 10^12


address owner;
uint256 stor1;
uint8 stor2;
address sub_29fd2007Address; offset 8
address sub_4f3e7ba6Address;
uint256 sub_17fb77de;
uint256 startTimestamp;
array of struct poolList;
mapping of uint256 sub_2c678a3e;
mapping of uint8 stor8;
mapping of struct userInfo;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;

function sub_17fb77de(?) payable {
    return sub_17fb77de
}

function sub_29fd2007(?) payable {
    return sub_29fd2007Address
}

function poolList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolList.length
    return poolList[arg1].field_0, 
           poolList[arg1].field_256,
           poolList[arg1].field_512,
           poolList[arg1].field_768,
           poolList[arg1].field_1024,
           poolList[arg1].field_1280,
           poolList[arg1].field_1536
}

function sub_2c678a3e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2c678a3e[arg1]
}

function sub_4f3e7ba6(?) payable {
    return sub_4f3e7ba6Address
}

function paused() payable {
    return bool(stor2)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_a06ddcb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function getUserBalance(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][address(arg2)].field_256
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
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function sub_07a96cbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4f3e7ba6Address = address(arg1)
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

function setStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    if sub_17fb77de != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not set start timestamp after adding a pool'
    startTimestamp = arg1
    emit 0xaf8fc8a4: arg1
}

function getPoolList() payable {
    mem[64] = (32 * poolList.length) + 128
    mem[96] = poolList.length
    s = 128
    idx = 0
    while idx < poolList.length:
        mem[0] = 6
        _16 = mem[64]
        mem[64] = mem[64] + 224
        mem[_16] = poolList[idx].field_0
        mem[_16 + 32] = poolList[idx].field_256
        mem[_16 + 64] = poolList[idx].field_512
        mem[_16 + 96] = poolList[idx].field_768
        mem[_16 + 128] = poolList[idx].field_1024
        mem[_16 + 160] = poolList[idx].field_1280
        mem[_16 + 192] = poolList[idx].field_1536
        mem[s] = _16
        s = s + 32
        idx = idx + 1
        continue 
    _17 = mem[64]
    mem[mem[64]] = 32
    _18 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _18:
        _28 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_28 + 32]
        mem[t + 64] = mem[_28 + 64]
        mem[t + 96] = mem[_28 + 96]
        mem[t + 128] = mem[_28 + 128]
        mem[t + 160] = mem[_28 + 160]
        mem[t + 192] = mem[_28 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _17 + (224 * _18) + -mem[64] + 64
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolList.length:
        revert with 0, 50
    if block.timestamp > poolList[arg1].field_768:
        staticcall poolList[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            poolList[arg1].field_768 = block.timestamp
        else:
            if block.timestamp < poolList[arg1].field_768:
                revert with 0, 17
            if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_256 > -1 / block.timestamp - poolList[arg1].field_768:
                revert with 0, 17
            if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_512 > -1 / block.timestamp - poolList[arg1].field_768:
                revert with 0, 17
            if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256):
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolList[arg1].field_1024 > !((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]):
                revert with 0, 17
            poolList[arg1].field_1024 += (10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]
            if not poolList[arg1].field_1536:
                poolList[arg1].field_1280 = 0
            else:
                if (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512):
                    revert with 0, 17
                if not poolList[arg1].field_1536:
                    revert with 0, 18
                if poolList[arg1].field_1280 > !((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536):
                    revert with 0, 17
                poolList[arg1].field_1280 += (10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536
            if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                revert with 0, 17
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[arg1].field_768 = block.timestamp
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolList.length:
        mem[0] = idx
        mem[32] = 8
        if stor8[idx]:
            if idx >= poolList.length:
                revert with 0, 50
            mem[0] = 6
            if block.timestamp > poolList[idx].field_768:
                mem[mem[64] + 4] = this.address
                staticcall poolList[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _19 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_19] == mem[_19]
                if not mem[_19]:
                    poolList[idx].field_768 = block.timestamp
                else:
                    if block.timestamp < poolList[idx].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                        revert with 0, 17
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                        revert with 0, 17
                    if not mem[_19]:
                        revert with 0, 18
                    if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_19]):
                        revert with 0, 17
                    poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_19]
                    if not poolList[idx].field_1536:
                        poolList[idx].field_1280 = 0
                    else:
                        if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                            revert with 0, 17
                        if not poolList[idx].field_1536:
                            revert with 0, 18
                        if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                            revert with 0, 17
                        poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                        revert with 0, 17
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d13f67bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if arg1 >= poolList.length:
        revert with 0, 50
    if not poolList[arg1].field_768:
        return 0
    if block.timestamp < poolList[arg1].field_768:
        return 0
    if block.timestamp < startTimestamp:
        return 0
    staticcall poolList[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if not stor8[arg1]:
        if userInfo[arg1][address(arg2)].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280):
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12 < userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        return (((userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][address(arg2)].field_0)
    if block.timestamp < poolList[arg1].field_768:
        revert with 0, 17
    if poolList[arg1].field_256 and block.timestamp - poolList[arg1].field_768 > -1 / poolList[arg1].field_256:
        revert with 0, 17
    if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256):
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolList[arg1].field_1024 > !((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]):
        revert with 0, 17
    if not poolList[arg1].field_1536:
        if userInfo[arg1][address(arg2)].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 and poolList[arg1].field_1024 + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) > !(userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280):
            revert with 0, 17
        if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12 < userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        return (((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][address(arg2)].field_0)
    if poolList[arg1].field_512 and block.timestamp - poolList[arg1].field_768 > -1 / poolList[arg1].field_512:
        revert with 0, 17
    if (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512):
        revert with 0, 17
    if not poolList[arg1].field_1536:
        revert with 0, 18
    if poolList[arg1].field_1280 > !((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_512 and poolList[arg1].field_1280 + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_256 and poolList[arg1].field_1024 + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) > !((poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512)):
        revert with 0, 17
    if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) / 10^12 < userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    return (((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) / 10^12) - userInfo[arg1][address(arg2)].field_0)
}

function sub_d5446518(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_4f3e7ba6Address != msg.sender:
        revert with 0, 'Only veDEG contract'
    idx = 0
    while idx < poolList.length:
        mem[0] = idx
        mem[32] = 8
        if stor8[idx]:
            mem[0] = address(arg1)
            mem[32] = sha3(idx, 9)
            if userInfo[idx][address(arg1)].field_256:
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 6
                if block.timestamp > poolList[idx].field_768:
                    mem[mem[64] + 4] = this.address
                    staticcall poolList[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _27 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_27] == mem[_27]
                    if not mem[_27]:
                        poolList[idx].field_768 = block.timestamp
                    else:
                        if block.timestamp < poolList[idx].field_768:
                            revert with 0, 17
                        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                            revert with 0, 17
                        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                            revert with 0, 17
                        if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                            revert with 0, 17
                        if not mem[_27]:
                            revert with 0, 18
                        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_27]):
                            revert with 0, 17
                        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_27]
                        if not poolList[idx].field_1536:
                            poolList[idx].field_1280 = 0
                        else:
                            if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                                revert with 0, 17
                            if not poolList[idx].field_1536:
                                revert with 0, 18
                            if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                                revert with 0, 17
                            poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                        if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                            revert with 0, 17
                        require ext_code.size(sub_29fd2007Address)
                        call sub_29fd2007Address.0xb4767398 with:
                             gas gas_remaining wei
                            args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        poolList[idx].field_768 = block.timestamp
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if arg2 and userInfo[idx][address(arg1)].field_256 > -1 / arg2:
                    revert with 0, 17
                if arg2 * userInfo[idx][address(arg1)].field_256 <= 3:
                    if not arg2 * userInfo[idx][address(arg1)].field_256:
                        userInfo[idx][address(arg1)].field_512 = 0
                        if False and poolList[idx].field_1280 > 0:
                            revert with 0, 17
                        if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                            revert with 0, 17
                        if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > -1:
                            revert with 0, 17
                        userInfo[idx][address(arg1)].field_0 = userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 / 10^12
                        if 0 < userInfo[idx][address(arg1)].field_512:
                            revert with 0, 17
                        if poolList[idx].field_1536 > !-userInfo[idx][address(arg1)].field_512:
                            revert with 0, 17
                        poolList[idx].field_1536 -= userInfo[idx][address(arg1)].field_512
                    else:
                        userInfo[idx][address(arg1)].field_512 = 1
                        if poolList[idx].field_1280 > -1:
                            revert with 0, 17
                        if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                            revert with 0, 17
                        if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !poolList[idx].field_1280:
                            revert with 0, 17
                        userInfo[idx][address(arg1)].field_0 = (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + poolList[idx].field_1280 / 10^12
                        if 1 < userInfo[idx][address(arg1)].field_512:
                            revert with 0, 17
                        if poolList[idx].field_1536 > !(-userInfo[idx][address(arg1)].field_512 + 1):
                            revert with 0, 17
                        poolList[idx].field_1536 = poolList[idx].field_1536 + -userInfo[idx][address(arg1)].field_512 + 1
                else:
                    if 1 > !(arg2 * userInfo[idx][address(arg1)].field_256 / 2):
                        revert with 0, 17
                    s = (arg2 * userInfo[idx][address(arg1)].field_256 / 2) + 1
                    t = arg2 * userInfo[idx][address(arg1)].field_256
                    while s < t:
                        if not s:
                            revert with 0, 18
                        if arg2 * userInfo[idx][address(arg1)].field_256 / s > !s:
                            revert with 0, 17
                        s = (arg2 * userInfo[idx][address(arg1)].field_256 / s) + s / 2
                        t = s
                        continue 
                    userInfo[idx][address(arg1)].field_512 = t
                    if t and poolList[idx].field_1280 > -1 / t:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                        revert with 0, 17
                    if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(t * poolList[idx].field_1280):
                        revert with 0, 17
                    userInfo[idx][address(arg1)].field_0 = (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (t * poolList[idx].field_1280) / 10^12
                    if t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    if poolList[idx].field_1536 > !(t - userInfo[idx][address(arg1)].field_512):
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_e4a76315(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    if not address(arg1):
        revert with 0, 'Zero address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    mem[0] = address(arg1)
    mem[32] = 7
    if sub_2c678a3e[address(arg1)]:
        revert with 0, 'Already in the pool'
    if not arg3:
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 8
                if stor8[idx]:
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 6
                    if block.timestamp > poolList[idx].field_768:
                        mem[mem[64] + 4] = this.address
                        staticcall poolList[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _220 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_220] == mem[_220]
                        if not mem[_220]:
                            poolList[idx].field_768 = block.timestamp
                        else:
                            if block.timestamp < poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                                revert with 0, 17
                            if not mem[_220]:
                                revert with 0, 18
                            if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_220]):
                                revert with 0, 17
                            poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_220]
                            if not poolList[idx].field_1536:
                                poolList[idx].field_1280 = 0
                            else:
                                if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                                    revert with 0, 17
                                if not poolList[idx].field_1536:
                                    revert with 0, 18
                                if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                                    revert with 0, 17
                                poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                                revert with 0, 17
                            require ext_code.size(sub_29fd2007Address)
                            call sub_29fd2007Address.0xb4767398 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            poolList[idx].field_768 = block.timestamp
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if arg2 <= 0:
            revert with 0, 'Only bonus'
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 8
                if stor8[idx]:
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 6
                    if block.timestamp > poolList[idx].field_768:
                        mem[mem[64] + 4] = this.address
                        staticcall poolList[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_221] == mem[_221]
                        if not mem[_221]:
                            poolList[idx].field_768 = block.timestamp
                        else:
                            if block.timestamp < poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                                revert with 0, 17
                            if not mem[_221]:
                                revert with 0, 18
                            if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_221]):
                                revert with 0, 17
                            poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_221]
                            if not poolList[idx].field_1536:
                                poolList[idx].field_1280 = 0
                            else:
                                if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                                    revert with 0, 17
                                if not poolList[idx].field_1536:
                                    revert with 0, 18
                                if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                                    revert with 0, 17
                                poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                                revert with 0, 17
                            require ext_code.size(sub_29fd2007Address)
                            call sub_29fd2007Address.0xb4767398 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            poolList[idx].field_768 = block.timestamp
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    poolList.length++
    poolList[poolList.length].field_0 = address(arg1)
    storF652[stor6.length] = arg2
    storF652[stor6.length] = arg3
    if block.timestamp > startTimestamp:
        storF652[stor6.length] = block.timestamp
    else:
        storF652[stor6.length] = startTimestamp
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    storF652[stor6.length] = 0
    if arg2:
        stor8[stor4] = 1
    if sub_17fb77de == -1:
        revert with 0, 17
    sub_17fb77de++
    sub_2c678a3e[address(arg1)] = sub_17fb77de
    emit 0x5f9d2cd1: address(arg1), arg2, arg3
}

function sub_cdcd2907(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == bool(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg1 >= poolList.length:
        revert with 0, 50
    mem[0] = 6
    if 0 == poolList[arg1].field_768:
        revert with 0, 'Pool not exists'
    if not arg3:
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 8
                if stor8[idx]:
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 6
                    if block.timestamp > poolList[idx].field_768:
                        mem[mem[64] + 4] = this.address
                        staticcall poolList[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _348 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_348] == mem[_348]
                        if not mem[_348]:
                            poolList[idx].field_768 = block.timestamp
                        else:
                            if block.timestamp < poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                                revert with 0, 17
                            if not mem[_348]:
                                revert with 0, 18
                            if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_348]):
                                revert with 0, 17
                            poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_348]
                            if not poolList[idx].field_1536:
                                poolList[idx].field_1280 = 0
                            else:
                                if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                                    revert with 0, 17
                                if not poolList[idx].field_1536:
                                    revert with 0, 18
                                if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                                    revert with 0, 17
                                poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                                revert with 0, 17
                            require ext_code.size(sub_29fd2007Address)
                            call sub_29fd2007Address.0xb4767398 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            poolList[idx].field_768 = block.timestamp
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg1 >= poolList.length:
                revert with 0, 50
            if block.timestamp > poolList[arg1].field_768:
                staticcall poolList[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    poolList[arg1].field_768 = block.timestamp
                else:
                    if block.timestamp < poolList[arg1].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_256 > -1 / block.timestamp - poolList[arg1].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_512 > -1 / block.timestamp - poolList[arg1].field_768:
                        revert with 0, 17
                    if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolList[arg1].field_1024 > !((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolList[arg1].field_1024 += (10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]
                    if not poolList[arg1].field_1536:
                        poolList[arg1].field_1280 = 0
                    else:
                        if (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512):
                            revert with 0, 17
                        if not poolList[arg1].field_1536:
                            revert with 0, 18
                        if poolList[arg1].field_1280 > !((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536):
                            revert with 0, 17
                        poolList[arg1].field_1280 += (10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536
                    if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                        revert with 0, 17
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[arg1].field_768 = block.timestamp
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
    else:
        if arg2 <= 0:
            revert with 0, 'Only bonus'
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 8
                if stor8[idx]:
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 6
                    if block.timestamp > poolList[idx].field_768:
                        mem[mem[64] + 4] = this.address
                        staticcall poolList[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_349] == mem[_349]
                        if not mem[_349]:
                            poolList[idx].field_768 = block.timestamp
                        else:
                            if block.timestamp < poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                                revert with 0, 17
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                                revert with 0, 17
                            if not mem[_349]:
                                revert with 0, 18
                            if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_349]):
                                revert with 0, 17
                            poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_349]
                            if not poolList[idx].field_1536:
                                poolList[idx].field_1280 = 0
                            else:
                                if (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512) and 10^12 > -1 / (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512):
                                    revert with 0, 17
                                if not poolList[idx].field_1536:
                                    revert with 0, 18
                                if poolList[idx].field_1280 > !((10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536):
                                    revert with 0, 17
                                poolList[idx].field_1280 += (10^12 * block.timestamp * poolList[idx].field_512) - (10^12 * poolList[idx].field_768 * poolList[idx].field_512) / poolList[idx].field_1536
                            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                                revert with 0, 17
                            require ext_code.size(sub_29fd2007Address)
                            call sub_29fd2007Address.0xb4767398 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            poolList[idx].field_768 = block.timestamp
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if arg1 >= poolList.length:
                revert with 0, 50
            if block.timestamp > poolList[arg1].field_768:
                staticcall poolList[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    poolList[arg1].field_768 = block.timestamp
                else:
                    if block.timestamp < poolList[arg1].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_256 > -1 / block.timestamp - poolList[arg1].field_768:
                        revert with 0, 17
                    if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_512 > -1 / block.timestamp - poolList[arg1].field_768:
                        revert with 0, 17
                    if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolList[arg1].field_1024 > !((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]):
                        revert with 0, 17
                    poolList[arg1].field_1024 += (10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]
                    if not poolList[arg1].field_1536:
                        poolList[arg1].field_1280 = 0
                    else:
                        if (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512):
                            revert with 0, 17
                        if not poolList[arg1].field_1536:
                            revert with 0, 18
                        if poolList[arg1].field_1280 > !((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536):
                            revert with 0, 17
                        poolList[arg1].field_1280 += (10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536
                    if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                        revert with 0, 17
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[arg1].field_768 = block.timestamp
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
    if not stor8[arg1]:
        if arg2 > 0:
            stor8[arg1] = 1
            emit 0x6140f1d5: arg1, block.timestamp
    if not arg2:
        stor8[arg1] = 0
        emit 0x4654f9b7: arg1, block.timestamp
    else:
        if arg1 >= poolList.length:
            revert with 0, 50
        poolList[arg1].field_256 = arg2
        poolList[arg1].field_512 = arg3
        emit 0x12558fa1: arg1, arg2, arg3
}

function harvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if arg1 >= poolList.length:
        revert with 0, 50
    if not stor8[arg1]:
        mem[128] = poolList[arg1].field_256
        mem[160] = poolList[arg1].field_512
        mem[192] = poolList[arg1].field_768
        mem[224] = poolList[arg1].field_1024
        mem[256] = poolList[arg1].field_1280
        mem[288] = poolList[arg1].field_1536
        if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
            revert with 0, 17
        if (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12 < userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= 0:
            revert with 0, 'No pending reward'
        if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 = (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12
        mem[324] = this.address
        staticcall sub_29fd2007Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'No Degis token in the pool'
        mem[ceil32(return_data.size) + 356] = arg2
        if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 388] = ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0
            mem[ceil32(return_data.size) + 320] = 68
            mem[ceil32(return_data.size) + 356 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 352 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 420] = 32
            mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_29fd2007Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0
            mem[ceil32(return_data.size) + 552] = 0
            call sub_29fd2007Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if poolList[arg1].field_0:
                        revert with memory
                          from 128
                           len poolList[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolList[arg1].field_0:
                    require poolList[arg1].field_0 >= 32
                    require poolList[arg1].field_256 == bool(poolList[arg1].field_256)
                    if not poolList[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                    if not mem[ceil32(return_data.size) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Harvest(msg.sender, address(arg2), arg1, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0);
        else:
            mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 320] = 68
            mem[ceil32(return_data.size) + 356 len 28] = address(arg2) << 64
            mem[ceil32(return_data.size) + 352 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 420] = 32
            mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_29fd2007Address):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 552] = 0
            call sub_29fd2007Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if poolList[arg1].field_0:
                        revert with memory
                          from 128
                           len poolList[arg1].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if poolList[arg1].field_0:
                    require poolList[arg1].field_0 >= 32
                    require poolList[arg1].field_256 == bool(poolList[arg1].field_256)
                    if not poolList[arg1].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                    if not mem[ceil32(return_data.size) + 516]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Harvest(msg.sender, address(arg2), arg1, ext_call.return_data[0]);
    else:
        if block.timestamp <= poolList[arg1].field_768:
            if arg1 >= poolList.length:
                revert with 0, 50
            mem[128] = poolList[arg1].field_256
            mem[160] = poolList[arg1].field_512
            mem[192] = poolList[arg1].field_768
            mem[224] = poolList[arg1].field_1024
            mem[256] = poolList[arg1].field_1280
            mem[288] = poolList[arg1].field_1536
            if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
                revert with 0, 17
            if (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= 0:
                revert with 0, 'No pending reward'
            if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 = (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12
            mem[324] = this.address
            staticcall sub_29fd2007Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'No Degis token in the pool'
            mem[ceil32(return_data.size) + 356] = arg2
            if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 388] = ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0
                mem[ceil32(return_data.size) + 320] = 68
                mem[ceil32(return_data.size) + 356 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 420] = 32
                mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_29fd2007Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0
                mem[ceil32(return_data.size) + 552] = 0
                call sub_29fd2007Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if poolList[arg1].field_0:
                            revert with memory
                              from 128
                               len poolList[arg1].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if poolList[arg1].field_0:
                        require poolList[arg1].field_0 >= 32
                        require poolList[arg1].field_256 == bool(poolList[arg1].field_256)
                        if not poolList[arg1].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                        if not mem[ceil32(return_data.size) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, address(arg2), arg1, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0);
            else:
                mem[ceil32(return_data.size) + 388] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 320] = 68
                mem[ceil32(return_data.size) + 356 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 420] = 32
                mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_29fd2007Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 552] = 0
                call sub_29fd2007Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if poolList[arg1].field_0:
                            revert with memory
                              from 128
                               len poolList[arg1].field_0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if poolList[arg1].field_0:
                        require poolList[arg1].field_0 >= 32
                        require poolList[arg1].field_256 == bool(poolList[arg1].field_256)
                        if not poolList[arg1].field_256:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
                        if not mem[ceil32(return_data.size) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, address(arg2), arg1, ext_call.return_data[0]);
        else:
            mem[100] = this.address
            staticcall poolList[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_call.return_data[0]:
                poolList[arg1].field_768 = block.timestamp
            else:
                if block.timestamp < poolList[arg1].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_256 > -1 / block.timestamp - poolList[arg1].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[arg1].field_768 and poolList[arg1].field_512 > -1 / block.timestamp - poolList[arg1].field_768:
                    revert with 0, 17
                if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolList[arg1].field_1024 > !((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]):
                    revert with 0, 17
                poolList[arg1].field_1024 += (10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0]
                if not poolList[arg1].field_1536:
                    poolList[arg1].field_1280 = 0
                else:
                    if (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512) and 10^12 > -1 / (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512):
                        revert with 0, 17
                    if not poolList[arg1].field_1536:
                        revert with 0, 18
                    if poolList[arg1].field_1280 > !((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536):
                        revert with 0, 17
                    poolList[arg1].field_1280 += (10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536
                if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                    revert with 0, 17
                require ext_code.size(sub_29fd2007Address)
                call sub_29fd2007Address.0xb4767398 with:
                     gas gas_remaining wei
                    args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                poolList[arg1].field_768 = block.timestamp
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            if arg1 >= poolList.length:
                revert with 0, 50
            mem[ceil32(return_data.size) + 96] = poolList[arg1].field_0
            mem[ceil32(return_data.size) + 128] = poolList[arg1].field_256
            mem[ceil32(return_data.size) + 160] = poolList[arg1].field_512
            mem[ceil32(return_data.size) + 192] = poolList[arg1].field_768
            mem[ceil32(return_data.size) + 224] = poolList[arg1].field_1024
            mem[ceil32(return_data.size) + 256] = poolList[arg1].field_1280
            mem[ceil32(return_data.size) + 288] = poolList[arg1].field_1536
            if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
                revert with 0, 17
            if (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= 0:
                revert with 0, 'No pending reward'
            if userInfo[arg1][msg.sender].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][msg.sender].field_512:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280):
                revert with 0, 17
            userInfo[arg1][msg.sender].field_0 = (userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12
            mem[ceil32(return_data.size) + 324] = this.address
            staticcall sub_29fd2007Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'No Degis token in the pool'
            mem[(2 * ceil32(return_data.size)) + 356] = arg2
            if ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 388] = ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0
                mem[(2 * ceil32(return_data.size)) + 320] = 68
                mem[(2 * ceil32(return_data.size)) + 356 len 28] = address(arg2) << 64
                mem[(2 * ceil32(return_data.size)) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 420] = 32
                mem[(2 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_29fd2007Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0
                mem[(2 * ceil32(return_data.size)) + 552] = 0
                call sub_29fd2007Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0, 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 516] == bool(mem[(2 * ceil32(return_data.size)) + 516])
                        if not mem[(2 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, address(arg2), arg1, ((userInfo[arg1][msg.sender].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][msg.sender].field_512 * poolList[arg1].field_1280) / 10^12) - userInfo[arg1][msg.sender].field_0);
            else:
                mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 320] = 68
                mem[(2 * ceil32(return_data.size)) + 356 len 28] = address(arg2) << 64
                mem[(2 * ceil32(return_data.size)) + 352 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 420] = 32
                mem[(2 * ceil32(return_data.size)) + 452] = 'SafeERC20: low-level call failed'
                if not ext_code.size(sub_29fd2007Address):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 484 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
                mem[(2 * ceil32(return_data.size)) + 552] = 0
                call sub_29fd2007Address with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
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
                    mem[(2 * ceil32(return_data.size)) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 516] == bool(mem[(2 * ceil32(return_data.size)) + 516])
                        if not mem[(2 * ceil32(return_data.size)) + 516]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Harvest(msg.sender, address(arg2), arg1, ext_call.return_data[0]);
    stor1 = 1
}



}
