contract main {




// =====================  Runtime code  =====================


#
#  - harvest(uint256 arg1, address arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - stake(uint256 arg1, uint256 arg2)
#
const name = 'Degis LP Farming Pool', 0

const SCALE = 10^12


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
address sub_29fd2007Address;
address sub_4f3e7ba6Address;
uint256 sub_17fb77de;
uint256 startTimestamp;
array of struct poolList;
mapping of uint256 sub_2c678a3e;
mapping of uint8 stor207;
mapping of struct userInfo;
mapping of uint256 sub_c73d2bae;
array of uint256 sub_5e4651f9;
array of uint256 sub_5bf56068;
uint256 sub_29baefff;
array of address stor59520738474026231794348976952902667040706605150098822476031567562278569499438;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499439;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499440;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499441;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499442;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499443;
array of uint256 stor59520738474026231794348976952902667040706605150098822476031567562278569499444;

function sub_17fb77de(?) payable {
    return sub_17fb77de
}

function sub_29baefff(?) payable {
    return sub_29baefff
}

function sub_29fd2007(?) payable {
    return sub_29fd2007Address
}

function poolList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolList.length
    return address(poolList[arg1].field_0), 
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

function sub_5bf56068(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_5bf56068[arg1]
    return sub_5bf56068[arg1][arg2]
}

function paused() payable {
    return bool(stor151)
}

function sub_5e4651f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_5e4651f9[arg1]
    return sub_5e4651f9[arg1][arg2]
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
    return bool(stor207[arg1])
}

function sub_c73d2bae(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_c73d2bae[arg1][arg2]
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
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
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
    if stor151:
        revert with 0, 'Pausable: paused'
    if sub_17fb77de != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not set start timestamp after adding a pool'
    startTimestamp = arg1
    emit 0xaf8fc8a4: arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'Zero address'
    if not uint8(stor0.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
    stor151 = 0
    sub_29fd2007Address = arg1
    sub_17fb77de = 1
    poolList.length++
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
}

function getPoolList() payable {
    mem[64] = (32 * poolList.length) + 128
    mem[96] = poolList.length
    s = 128
    idx = 0
    while idx < poolList.length:
        mem[0] = 205
        _16 = mem[64]
        mem[64] = mem[64] + 224
        mem[_16] = address(poolList[idx].field_0)
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

function sub_4b34b687(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5e4651f9[cd[4]] = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_5e4651f9[cd[4]] > idx:
            sub_5e4651f9[cd[4]][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_5e4651f9[cd[4]][s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_5e4651f9[cd[4]] > idx:
            sub_5e4651f9[cd[4]][idx] = 0
            idx = idx + 1
            continue 
    sub_5bf56068[cd[4]] = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_5bf56068[cd[4]] > idx:
            sub_5bf56068[cd[4]][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_5bf56068[cd[4]][s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_5bf56068[cd[4]] > idx:
            sub_5bf56068[cd[4]][idx] = 0
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
    staticcall address(poolList[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if not stor207[arg1]:
        if userInfo[arg1][address(arg2)].field_512 and poolList[arg1].field_1280 > -1 / userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 and poolList[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024 > !(userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280):
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12 > !sub_c73d2bae[arg1][address(arg2)]:
            revert with 0, 17
        if ((userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) + sub_c73d2bae[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        return (((userInfo[arg1][address(arg2)].field_256 * poolList[arg1].field_1024) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) + sub_c73d2bae[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_0)
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
        if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12 > !sub_c73d2bae[arg1][address(arg2)]:
            revert with 0, 17
        if ((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) + sub_c73d2bae[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        return (((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (userInfo[arg1][address(arg2)].field_512 * poolList[arg1].field_1280) / 10^12) + sub_c73d2bae[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_0)
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
    if (poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) / 10^12 > !sub_c73d2bae[arg1][address(arg2)]:
        revert with 0, 17
    if ((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_c73d2bae[arg1][address(arg2)] < userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    return (((poolList[arg1].field_1024 * userInfo[arg1][address(arg2)].field_256) + ((10^12 * block.timestamp * poolList[arg1].field_256) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_256) + (poolList[arg1].field_1280 * userInfo[arg1][address(arg2)].field_512) + ((10^12 * block.timestamp * poolList[arg1].field_512) - (10^12 * poolList[arg1].field_768 * poolList[arg1].field_512) / poolList[arg1].field_1536 * userInfo[arg1][address(arg2)].field_512) / 10^12) + sub_c73d2bae[arg1][address(arg2)] - userInfo[arg1][address(arg2)].field_0)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolList.length:
        revert with 0, 50
    if block.timestamp <= poolList[arg1].field_768:
    staticcall address(poolList[arg1].field_0).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        poolList[arg1].field_768 = block.timestamp
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
        if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
            revert with 0, 17
        require ext_code.size(sub_29fd2007Address)
        call sub_29fd2007Address.0xb4767398 with:
             gas gas_remaining wei
            args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        poolList[arg1].field_768 = block.timestamp
        if not sub_5e4651f9[arg1]:
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if arg1 >= poolList.length:
            revert with 0, 50
        staticcall address(poolList[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_5e4651f9[arg1] < 1:
            revert with 0, 17
        if var96001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] >= stor[sha3(var98002) + var98001]:
            if var98003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var98003], 10, 0, 0
            if var98003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var98003], 10, 0, 0
            if var98003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var98003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if not var102001:
            revert with 0, 17
        if var108001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] >= stor[sha3(var110002) + var110001]:
            if var110003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var110003], 10, 0, 0
            if var110003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var110003], 10, 0, 0
            if var110003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var110003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if not var114001:
            revert with 0, 17
        if var120001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] < stor[sha3(var122002) + var122001]:
            if not var126001:
                revert with 0, 17
            if var132001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            # nil
        else:
            if var122003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var122003], 10, 0, 0
            if var122003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var122003], 10, 0, 0
            if var122003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var122003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
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
        if not sub_5e4651f9[arg1]:
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if arg1 >= poolList.length:
            revert with 0, 50
        staticcall address(poolList[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if sub_5e4651f9[arg1] < 1:
            revert with 0, 17
        if var105001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] >= stor[sha3(var107002) + var107001]:
            if var107003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var107003], 10, 0, 0
            if var107003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var107003], 10, 0, 0
            if var107003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var107003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if not var111001:
            revert with 0, 17
        if var117001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] >= stor[sha3(var119002) + var119001]:
            if var119003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var119003], 10, 0, 0
            if var119003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var119003], 10, 0, 0
            if var119003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var119003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if not var123001:
            revert with 0, 17
        if var129001 >= sub_5e4651f9[arg1]:
            revert with 0, 50
        if ext_call.return_data[0] < stor[sha3(var131002) + var131001]:
            if not var135001:
                revert with 0, 17
            if var141001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            # nil
        else:
            if var131003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5bf56068[arg1][var131003], 10, 0, 0
            if var131003 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args 0, 64, sub_5e4651f9[arg1][var131003], 10, 0, 0
            if var131003 >= sub_5bf56068[arg1]:
                revert with 0, 50
            if arg1 >= poolList.length:
                revert with 0, 50
            poolList[arg1].field_256 = sub_5bf56068[arg1][var131003]
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolList.length:
        mem[0] = idx
        mem[32] = 207
        if not stor207[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= poolList.length:
            revert with 0, 50
        mem[0] = 205
        if block.timestamp <= poolList[idx].field_768:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(poolList[idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_149] == mem[_149]
        if not mem[_149]:
            poolList[idx].field_768 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp < poolList[idx].field_768:
            revert with 0, 17
        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
            revert with 0, 17
        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
            revert with 0, 17
        if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
            revert with 0, 17
        if not mem[_149]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_149]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_149]
        if not poolList[idx].field_1536:
            poolList[idx].field_1280 = 0
            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                revert with 0, 17
            mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[idx].field_768 = block.timestamp
            mem[0] = idx
            mem[32] = 210
            if not sub_5e4651f9[idx]:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= poolList.length:
                revert with 0, 50
            mem[0] = 205
            mem[mem[64] + 4] = this.address
            staticcall address(poolList[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _166 = mem[_162]
            require mem[_162] == mem[_162]
            if sub_5e4651f9[idx] < 1:
                revert with 0, 17
            mem[32] = 210
            if var92001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var94002
            if _166 >= stor[sha3(var94002) + var94001]:
                _411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_411] = 10
                mem[_411 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var94003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _416 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _411 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var94003]
                _657 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_657 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_657 + 36 len 28]
                staticcall 'console.log'.mem[_657 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_657 + 36 len mem[_657] - 4]
                mem[_416 + 164] = 10
                mem[_416 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var94003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_416 + 264] = 64
                mem[_416 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _416 + 360] = mem[s + _416 + 196]
                    s = s + 32
                    continue 
                mem[_416 + 370] = 0
                mem[_416 + 296] = sub_5e4651f9[idx][var94003]
                mem[_416 + 228] = 132
                mem[64] = _416 + 392
                mem[_416 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var94003], 10, mem[_416 + 360 len 10], 0
                mem[32] = 211
                if var94003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var94003]
                mem[_416 + 392] = idx
                mem[_416 + 424] = poolList[idx].field_1024
                mem[_416 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var98001:
                revert with 0, 17
            mem[32] = 210
            if var104001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var106002
            if _166 >= stor[sha3(var106002) + var106001]:
                _1393 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1393] = 10
                mem[_1393 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var106003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _1398 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _1393 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var106003]
                _1639 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_1639 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1639 + 36 len 28]
                staticcall 'console.log'.mem[_1639 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_1639 + 36 len mem[_1639] - 4]
                mem[_1398 + 164] = 10
                mem[_1398 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var106003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_1398 + 264] = 64
                mem[_1398 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _1398 + 360] = mem[s + _1398 + 196]
                    s = s + 32
                    continue 
                mem[_1398 + 370] = 0
                mem[_1398 + 296] = sub_5e4651f9[idx][var106003]
                mem[_1398 + 228] = 132
                mem[64] = _1398 + 392
                mem[_1398 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var106003], 10, mem[_1398 + 360 len 10], 0
                mem[32] = 211
                if var106003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var106003]
                mem[_1398 + 392] = idx
                mem[_1398 + 424] = poolList[idx].field_1024
                mem[_1398 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var110001:
                revert with 0, 17
            mem[32] = 210
            if var116001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var118002
            if _166 < stor[sha3(var118002) + var118001]:
                if not var122001:
                    revert with 0, 17
                # nil
            else:
                _2375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2375] = 10
                mem[_2375 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var118003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _2380 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _2375 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var118003]
                _2621 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_2621 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2621 + 36 len 28]
                staticcall 'console.log'.mem[_2621 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_2621 + 36 len mem[_2621] - 4]
                mem[_2380 + 164] = 10
                mem[_2380 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var118003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_2380 + 264] = 64
                mem[_2380 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _2380 + 360] = mem[s + _2380 + 196]
                    s = s + 32
                    continue 
                mem[_2380 + 370] = 0
                mem[_2380 + 296] = sub_5e4651f9[idx][var118003]
                mem[_2380 + 228] = 132
                mem[64] = _2380 + 392
                mem[_2380 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var118003], 10, mem[_2380 + 360 len 10], 0
                mem[32] = 211
                if var118003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var118003]
                mem[_2380 + 392] = idx
                mem[_2380 + 424] = poolList[idx].field_1024
                mem[_2380 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
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
            mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[idx].field_768 = block.timestamp
            mem[0] = idx
            mem[32] = 210
            if not sub_5e4651f9[idx]:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= poolList.length:
                revert with 0, 50
            mem[0] = 205
            mem[mem[64] + 4] = this.address
            staticcall address(poolList[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _171 = mem[_168]
            require mem[_168] == mem[_168]
            if sub_5e4651f9[idx] < 1:
                revert with 0, 17
            mem[32] = 210
            if var101001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var103002
            if _171 >= stor[sha3(var103002) + var103001]:
                _409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_409] = 10
                mem[_409 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var103003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _415 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _409 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var103003]
                _652 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_652 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_652 + 36 len 28]
                staticcall 'console.log'.mem[_652 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_652 + 36 len mem[_652] - 4]
                mem[_415 + 164] = 10
                mem[_415 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var103003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_415 + 264] = 64
                mem[_415 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _415 + 360] = mem[s + _415 + 196]
                    s = s + 32
                    continue 
                mem[_415 + 370] = 0
                mem[_415 + 296] = sub_5e4651f9[idx][var103003]
                mem[_415 + 228] = 132
                mem[64] = _415 + 392
                mem[_415 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var103003], 10, mem[_415 + 360 len 10], 0
                mem[32] = 211
                if var103003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var103003]
                mem[_415 + 392] = idx
                mem[_415 + 424] = poolList[idx].field_1024
                mem[_415 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var107001:
                revert with 0, 17
            mem[32] = 210
            if var113001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var115002
            if _171 >= stor[sha3(var115002) + var115001]:
                _1391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1391] = 10
                mem[_1391 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var115003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _1397 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _1391 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var115003]
                _1634 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_1634 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1634 + 36 len 28]
                staticcall 'console.log'.mem[_1634 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_1634 + 36 len mem[_1634] - 4]
                mem[_1397 + 164] = 10
                mem[_1397 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var115003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_1397 + 264] = 64
                mem[_1397 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _1397 + 360] = mem[s + _1397 + 196]
                    s = s + 32
                    continue 
                mem[_1397 + 370] = 0
                mem[_1397 + 296] = sub_5e4651f9[idx][var115003]
                mem[_1397 + 228] = 132
                mem[64] = _1397 + 392
                mem[_1397 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var115003], 10, mem[_1397 + 360 len 10], 0
                mem[32] = 211
                if var115003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var115003]
                mem[_1397 + 392] = idx
                mem[_1397 + 424] = poolList[idx].field_1024
                mem[_1397 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var119001:
                revert with 0, 17
            mem[32] = 210
            if var125001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var127002
            if _171 < stor[sha3(var127002) + var127001]:
                if not var131001:
                    revert with 0, 17
                # nil
            else:
                _2373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2373] = 10
                mem[_2373 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var127003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _2379 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _2373 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var127003]
                _2616 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_2616 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2616 + 36 len 28]
                staticcall 'console.log'.mem[_2616 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_2616 + 36 len mem[_2616] - 4]
                mem[_2379 + 164] = 10
                mem[_2379 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var127003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_2379 + 264] = 64
                mem[_2379 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _2379 + 360] = mem[s + _2379 + 196]
                    s = s + 32
                    continue 
                mem[_2379 + 370] = 0
                mem[_2379 + 296] = sub_5e4651f9[idx][var127003]
                mem[_2379 + 228] = 132
                mem[64] = _2379 + 392
                mem[_2379 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var127003], 10, mem[_2379 + 360 len 10], 0
                mem[32] = 211
                if var127003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                poolList[idx].field_256 = sub_5bf56068[idx][var127003]
                mem[_2379 + 392] = idx
                mem[_2379 + 424] = poolList[idx].field_1024
                mem[_2379 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
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
    if stor151:
        revert with 0, 'Pausable: paused'
    mem[0] = address(arg1)
    mem[32] = 206
    if sub_2c678a3e[address(arg1)]:
        revert with 0, 'Already in the pool'
    if not arg3:
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 207
                if not stor207[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                if block.timestamp <= poolList[idx].field_768:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(poolList[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_480] == mem[_480]
                if not mem[_480]:
                    poolList[idx].field_768 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.timestamp < poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                    revert with 0, 17
                if not mem[_480]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_480]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_480]
                if not poolList[idx].field_1536:
                    poolList[idx].field_1280 = 0
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                        revert with 0, 17
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _522 = mem[_514]
                    require mem[_514] == mem[_514]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var132001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var134002
                    if _522 >= stor[sha3(var134002) + var134001]:
                        _1010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1010] = 10
                        mem[_1010 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var134003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1021 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1010 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var134003]
                        _1496 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1496 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1496 + 36 len 28]
                        staticcall 'console.log'.mem[_1496 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1496 + 36 len mem[_1496] - 4]
                        mem[_1021 + 164] = 10
                        mem[_1021 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var134003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_1021 + 264] = 64
                        mem[_1021 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1021 + 360] = mem[s + _1021 + 196]
                            s = s + 32
                            continue 
                        mem[_1021 + 370] = 0
                        mem[_1021 + 296] = sub_5e4651f9[idx][var134003]
                        mem[_1021 + 228] = 132
                        mem[64] = _1021 + 392
                        mem[_1021 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var134003], 10, mem[_1021 + 360 len 10], 0
                        mem[32] = 211
                        if var134003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var134003]
                        mem[_1021 + 392] = idx
                        mem[_1021 + 424] = poolList[idx].field_1024
                        mem[_1021 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var138001:
                        revert with 0, 17
                    mem[32] = 210
                    if var144001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var146002
                    if _522 >= stor[sha3(var146002) + var146001]:
                        _2974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2974] = 10
                        mem[_2974 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var146003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _2985 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _2974 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var146003]
                        _3460 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_3460 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3460 + 36 len 28]
                        staticcall 'console.log'.mem[_3460 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_3460 + 36 len mem[_3460] - 4]
                        mem[_2985 + 164] = 10
                        mem[_2985 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var146003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_2985 + 264] = 64
                        mem[_2985 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _2985 + 360] = mem[s + _2985 + 196]
                            s = s + 32
                            continue 
                        mem[_2985 + 370] = 0
                        mem[_2985 + 296] = sub_5e4651f9[idx][var146003]
                        mem[_2985 + 228] = 132
                        mem[64] = _2985 + 392
                        mem[_2985 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var146003], 10, mem[_2985 + 360 len 10], 0
                        mem[32] = 211
                        if var146003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                        mem[_2985 + 392] = idx
                        mem[_2985 + 424] = poolList[idx].field_1024
                        mem[_2985 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var150001:
                        revert with 0, 17
                    mem[32] = 210
                    if var156001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var158002
                    if _522 < stor[sha3(var158002) + var158001]:
                        if not var162001:
                            revert with 0, 17
                        # nil
                    else:
                        _4938 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4938] = 10
                        mem[_4938 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var158003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4949 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4938 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var158003]
                        _5424 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5424 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5424 + 36 len 28]
                        staticcall 'console.log'.mem[_5424 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5424 + 36 len mem[_5424] - 4]
                        mem[_4949 + 164] = 10
                        mem[_4949 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var158003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_4949 + 264] = 64
                        mem[_4949 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4949 + 360] = mem[s + _4949 + 196]
                            s = s + 32
                            continue 
                        mem[_4949 + 370] = 0
                        mem[_4949 + 296] = sub_5e4651f9[idx][var158003]
                        mem[_4949 + 228] = 132
                        mem[64] = _4949 + 392
                        mem[_4949 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var158003], 10, mem[_4949 + 360 len 10], 0
                        mem[32] = 211
                        if var158003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                        mem[_4949 + 392] = idx
                        mem[_4949 + 424] = poolList[idx].field_1024
                        mem[_4949 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _526 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _532 = mem[_526]
                    require mem[_526] == mem[_526]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var141001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var143002
                    if _532 >= stor[sha3(var143002) + var143001]:
                        _1008 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1008] = 10
                        mem[_1008 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var143003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1020 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1008 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var143003]
                        _1491 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1491 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1491 + 36 len 28]
                        staticcall 'console.log'.mem[_1491 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1491 + 36 len mem[_1491] - 4]
                        mem[_1020 + 164] = 10
                        mem[_1020 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var143003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_1020 + 264] = 64
                        mem[_1020 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1020 + 360] = mem[s + _1020 + 196]
                            s = s + 32
                            continue 
                        mem[_1020 + 370] = 0
                        mem[_1020 + 296] = sub_5e4651f9[idx][var143003]
                        mem[_1020 + 228] = 132
                        mem[64] = _1020 + 392
                        mem[_1020 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var143003], 10, mem[_1020 + 360 len 10], 0
                        mem[32] = 211
                        if var143003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var143003]
                        mem[_1020 + 392] = idx
                        mem[_1020 + 424] = poolList[idx].field_1024
                        mem[_1020 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var147001:
                        revert with 0, 17
                    mem[32] = 210
                    if var153001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var155002
                    if _532 >= stor[sha3(var155002) + var155001]:
                        _2972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2972] = 10
                        mem[_2972 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var155003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _2984 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _2972 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var155003]
                        _3455 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_3455 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3455 + 36 len 28]
                        staticcall 'console.log'.mem[_3455 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_3455 + 36 len mem[_3455] - 4]
                        mem[_2984 + 164] = 10
                        mem[_2984 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var155003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_2984 + 264] = 64
                        mem[_2984 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _2984 + 360] = mem[s + _2984 + 196]
                            s = s + 32
                            continue 
                        mem[_2984 + 370] = 0
                        mem[_2984 + 296] = sub_5e4651f9[idx][var155003]
                        mem[_2984 + 228] = 132
                        mem[64] = _2984 + 392
                        mem[_2984 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var155003], 10, mem[_2984 + 360 len 10], 0
                        mem[32] = 211
                        if var155003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var155003]
                        mem[_2984 + 392] = idx
                        mem[_2984 + 424] = poolList[idx].field_1024
                        mem[_2984 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var159001:
                        revert with 0, 17
                    mem[32] = 210
                    if var165001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var167002
                    if _532 < stor[sha3(var167002) + var167001]:
                        if not var171001:
                            revert with 0, 17
                        # nil
                    else:
                        _4936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4936] = 10
                        mem[_4936 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var167003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4948 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4936 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var167003]
                        _5419 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5419 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5419 + 36 len 28]
                        staticcall 'console.log'.mem[_5419 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5419 + 36 len mem[_5419] - 4]
                        mem[_4948 + 164] = 10
                        mem[_4948 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var167003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_4948 + 264] = 64
                        mem[_4948 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4948 + 360] = mem[s + _4948 + 196]
                            s = s + 32
                            continue 
                        mem[_4948 + 370] = 0
                        mem[_4948 + 296] = sub_5e4651f9[idx][var167003]
                        mem[_4948 + 228] = 132
                        mem[64] = _4948 + 392
                        mem[_4948 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var167003], 10, mem[_4948 + 360 len 10], 0
                        mem[32] = 211
                        if var167003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var167003]
                        mem[_4948 + 392] = idx
                        mem[_4948 + 424] = poolList[idx].field_1024
                        mem[_4948 + 456] = poolList[idx].field_1280
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
                mem[32] = 207
                if not stor207[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                if block.timestamp <= poolList[idx].field_768:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(poolList[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_481] == mem[_481]
                if not mem[_481]:
                    poolList[idx].field_768 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.timestamp < poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                    revert with 0, 17
                if not mem[_481]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_481]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_481]
                if not poolList[idx].field_1536:
                    poolList[idx].field_1280 = 0
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                        revert with 0, 17
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _523 = mem[_515]
                    require mem[_515] == mem[_515]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var133001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var135002
                    if _523 >= stor[sha3(var135002) + var135001]:
                        _1014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1014] = 10
                        mem[_1014 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var135003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1023 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1014 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var135003]
                        _1506 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1506 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1506 + 36 len 28]
                        staticcall 'console.log'.mem[_1506 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1506 + 36 len mem[_1506] - 4]
                        mem[_1023 + 164] = 10
                        mem[_1023 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var135003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_1023 + 264] = 64
                        mem[_1023 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1023 + 360] = mem[s + _1023 + 196]
                            s = s + 32
                            continue 
                        mem[_1023 + 370] = 0
                        mem[_1023 + 296] = sub_5e4651f9[idx][var135003]
                        mem[_1023 + 228] = 132
                        mem[64] = _1023 + 392
                        mem[_1023 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var135003], 10, mem[_1023 + 360 len 10], 0
                        mem[32] = 211
                        if var135003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var135003]
                        mem[_1023 + 392] = idx
                        mem[_1023 + 424] = poolList[idx].field_1024
                        mem[_1023 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var139001:
                        revert with 0, 17
                    mem[32] = 210
                    if var145001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var147002
                    if _523 >= stor[sha3(var147002) + var147001]:
                        _2978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2978] = 10
                        mem[_2978 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var147003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _2987 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _2978 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var147003]
                        _3470 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_3470 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3470 + 36 len 28]
                        staticcall 'console.log'.mem[_3470 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_3470 + 36 len mem[_3470] - 4]
                        mem[_2987 + 164] = 10
                        mem[_2987 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var147003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_2987 + 264] = 64
                        mem[_2987 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _2987 + 360] = mem[s + _2987 + 196]
                            s = s + 32
                            continue 
                        mem[_2987 + 370] = 0
                        mem[_2987 + 296] = sub_5e4651f9[idx][var147003]
                        mem[_2987 + 228] = 132
                        mem[64] = _2987 + 392
                        mem[_2987 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var147003], 10, mem[_2987 + 360 len 10], 0
                        mem[32] = 211
                        if var147003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                        mem[_2987 + 392] = idx
                        mem[_2987 + 424] = poolList[idx].field_1024
                        mem[_2987 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var151001:
                        revert with 0, 17
                    mem[32] = 210
                    if var157001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var159002
                    if _523 < stor[sha3(var159002) + var159001]:
                        if not var163001:
                            revert with 0, 17
                        # nil
                    else:
                        _4942 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4942] = 10
                        mem[_4942 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var159003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4951 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4942 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var159003]
                        _5434 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5434 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5434 + 36 len 28]
                        staticcall 'console.log'.mem[_5434 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5434 + 36 len mem[_5434] - 4]
                        mem[_4951 + 164] = 10
                        mem[_4951 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var159003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_4951 + 264] = 64
                        mem[_4951 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4951 + 360] = mem[s + _4951 + 196]
                            s = s + 32
                            continue 
                        mem[_4951 + 370] = 0
                        mem[_4951 + 296] = sub_5e4651f9[idx][var159003]
                        mem[_4951 + 228] = 132
                        mem[64] = _4951 + 392
                        mem[_4951 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var159003], 10, mem[_4951 + 360 len 10], 0
                        mem[32] = 211
                        if var159003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var159003]
                        mem[_4951 + 392] = idx
                        mem[_4951 + 424] = poolList[idx].field_1024
                        mem[_4951 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _533 = mem[_528]
                    require mem[_528] == mem[_528]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var142001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var144002
                    if _533 >= stor[sha3(var144002) + var144001]:
                        _1012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1012] = 10
                        mem[_1012 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var144003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1022 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1012 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var144003]
                        _1501 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1501 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1501 + 36 len 28]
                        staticcall 'console.log'.mem[_1501 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1501 + 36 len mem[_1501] - 4]
                        mem[_1022 + 164] = 10
                        mem[_1022 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var144003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_1022 + 264] = 64
                        mem[_1022 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1022 + 360] = mem[s + _1022 + 196]
                            s = s + 32
                            continue 
                        mem[_1022 + 370] = 0
                        mem[_1022 + 296] = sub_5e4651f9[idx][var144003]
                        mem[_1022 + 228] = 132
                        mem[64] = _1022 + 392
                        mem[_1022 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var144003], 10, mem[_1022 + 360 len 10], 0
                        mem[32] = 211
                        if var144003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var144003]
                        mem[_1022 + 392] = idx
                        mem[_1022 + 424] = poolList[idx].field_1024
                        mem[_1022 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var148001:
                        revert with 0, 17
                    mem[32] = 210
                    if var154001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var156002
                    if _533 >= stor[sha3(var156002) + var156001]:
                        _2976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2976] = 10
                        mem[_2976 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var156003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _2986 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _2976 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var156003]
                        _3465 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_3465 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3465 + 36 len 28]
                        staticcall 'console.log'.mem[_3465 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_3465 + 36 len mem[_3465] - 4]
                        mem[_2986 + 164] = 10
                        mem[_2986 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var156003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_2986 + 264] = 64
                        mem[_2986 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _2986 + 360] = mem[s + _2986 + 196]
                            s = s + 32
                            continue 
                        mem[_2986 + 370] = 0
                        mem[_2986 + 296] = sub_5e4651f9[idx][var156003]
                        mem[_2986 + 228] = 132
                        mem[64] = _2986 + 392
                        mem[_2986 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var156003], 10, mem[_2986 + 360 len 10], 0
                        mem[32] = 211
                        if var156003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var156003]
                        mem[_2986 + 392] = idx
                        mem[_2986 + 424] = poolList[idx].field_1024
                        mem[_2986 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var160001:
                        revert with 0, 17
                    mem[32] = 210
                    if var166001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var168002
                    if _533 < stor[sha3(var168002) + var168001]:
                        if not var172001:
                            revert with 0, 17
                        # nil
                    else:
                        _4940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4940] = 10
                        mem[_4940 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var168003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4950 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4940 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var168003]
                        _5429 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5429 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5429 + 36 len 28]
                        staticcall 'console.log'.mem[_5429 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5429 + 36 len mem[_5429] - 4]
                        mem[_4950 + 164] = 10
                        mem[_4950 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var168003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_4950 + 264] = 64
                        mem[_4950 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4950 + 360] = mem[s + _4950 + 196]
                            s = s + 32
                            continue 
                        mem[_4950 + 370] = 0
                        mem[_4950 + 296] = sub_5e4651f9[idx][var168003]
                        mem[_4950 + 228] = 132
                        mem[64] = _4950 + 392
                        mem[_4950 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var168003], 10, mem[_4950 + 360 len 10], 0
                        mem[32] = 211
                        if var168003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var168003]
                        mem[_4950 + 392] = idx
                        mem[_4950 + 424] = poolList[idx].field_1024
                        mem[_4950 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    poolList.length++
    stor8397[stor205.length] = address(arg1)
    stor8397[stor205.length] = arg2
    stor8397[stor205.length] = arg3
    if block.timestamp > startTimestamp:
        stor8397[stor205.length] = block.timestamp
    else:
        stor8397[stor205.length] = startTimestamp
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    stor8397[stor205.length] = 0
    if arg2:
        stor207[stor203] = 1
    if sub_17fb77de == -1:
        revert with 0, 17
    sub_17fb77de++
    sub_2c678a3e[address(arg1)] = sub_17fb77de
    emit 0x5f9d2cd1: address(arg1), arg2, arg3
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
        mem[32] = 207
        if not stor207[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = address(arg1)
        mem[32] = sha3(idx, 208)
        if not userInfo[idx][address(arg1)].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= poolList.length:
            revert with 0, 50
        mem[0] = 205
        if block.timestamp <= poolList[idx].field_768:
            if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                revert with 0, 17
            if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = sha3(idx, 209)
            if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                revert with 0, 17
            sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                    if poolList[idx].field_1536 > -1:
                        revert with 0, 17
                    if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > -2:
                        revert with 0, 17
                    if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                if poolList[idx].field_1536 > !t:
                    revert with 0, 17
                if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        staticcall address(poolList[idx].field_0).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == mem[_181]
        if not mem[_181]:
            poolList[idx].field_768 = block.timestamp
            if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                revert with 0, 17
            if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                revert with 0, 17
            if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = sha3(idx, 209)
            if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                revert with 0, 17
            sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                    if poolList[idx].field_1536 > -1:
                        revert with 0, 17
                    if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > -2:
                        revert with 0, 17
                    if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                if poolList[idx].field_1536 > !t:
                    revert with 0, 17
                if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if block.timestamp < poolList[idx].field_768:
            revert with 0, 17
        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
            revert with 0, 17
        if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
            revert with 0, 17
        if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
            revert with 0, 17
        if not mem[_181]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_181]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_181]
        if not poolList[idx].field_1536:
            poolList[idx].field_1280 = 0
            if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                revert with 0, 17
            mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[idx].field_768 = block.timestamp
            mem[32] = 210
            if not sub_5e4651f9[idx]:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= poolList.length:
                revert with 0, 50
            mem[0] = 205
            mem[mem[64] + 4] = this.address
            staticcall address(poolList[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _202 = mem[_198]
            require mem[_198] == mem[_198]
            if sub_5e4651f9[idx] < 1:
                revert with 0, 17
            mem[32] = 210
            if var112001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var114002
            if _202 >= stor[sha3(var114002) + var114001]:
                _483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_483] = 10
                mem[_483 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var114003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _488 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _483 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var114003]
                _761 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_761 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_761 + 36 len 28]
                staticcall 'console.log'.mem[_761 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_761 + 36 len mem[_761] - 4]
                mem[_488 + 164] = 10
                mem[_488 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var114003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_488 + 264] = 64
                mem[_488 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _488 + 360] = mem[s + _488 + 196]
                    s = s + 32
                    continue 
                mem[_488 + 370] = 0
                mem[_488 + 296] = sub_5e4651f9[idx][var114003]
                mem[_488 + 228] = 132
                mem[64] = _488 + 392
                mem[_488 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var114003], 10, mem[_488 + 360 len 10], 0
                if var114003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var114003]
                mem[_488 + 392] = idx
                mem[_488 + 424] = poolList[idx].field_1024
                mem[_488 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var118001:
                revert with 0, 17
            mem[32] = 210
            if var124001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var126002
            if _202 >= stor[sha3(var126002) + var126001]:
                _1609 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1609] = 10
                mem[_1609 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var126003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _1614 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _1609 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var126003]
                _1887 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_1887 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1887 + 36 len 28]
                staticcall 'console.log'.mem[_1887 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_1887 + 36 len mem[_1887] - 4]
                mem[_1614 + 164] = 10
                mem[_1614 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var126003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_1614 + 264] = 64
                mem[_1614 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _1614 + 360] = mem[s + _1614 + 196]
                    s = s + 32
                    continue 
                mem[_1614 + 370] = 0
                mem[_1614 + 296] = sub_5e4651f9[idx][var126003]
                mem[_1614 + 228] = 132
                mem[64] = _1614 + 392
                mem[_1614 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var126003], 10, mem[_1614 + 360 len 10], 0
                if var126003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var126003]
                mem[_1614 + 392] = idx
                mem[_1614 + 424] = poolList[idx].field_1024
                mem[_1614 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var130001:
                revert with 0, 17
            mem[32] = 210
            if var136001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var138002
            if _202 < stor[sha3(var138002) + var138001]:
                if not var142001:
                    revert with 0, 17
                # nil
            else:
                _2735 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2735] = 10
                mem[_2735 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var138003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _2740 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _2735 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var138003]
                _3013 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_3013 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3013 + 36 len 28]
                staticcall 'console.log'.mem[_3013 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_3013 + 36 len mem[_3013] - 4]
                mem[_2740 + 164] = 10
                mem[_2740 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var138003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_2740 + 264] = 64
                mem[_2740 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _2740 + 360] = mem[s + _2740 + 196]
                    s = s + 32
                    continue 
                mem[_2740 + 370] = 0
                mem[_2740 + 296] = sub_5e4651f9[idx][var138003]
                mem[_2740 + 228] = 132
                mem[64] = _2740 + 392
                mem[_2740 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var138003], 10, mem[_2740 + 360 len 10], 0
                if var138003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var138003]
                mem[_2740 + 392] = idx
                mem[_2740 + 424] = poolList[idx].field_1024
                mem[_2740 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
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
            mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[idx].field_768 = block.timestamp
            mem[32] = 210
            if not sub_5e4651f9[idx]:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= poolList.length:
                revert with 0, 50
            mem[0] = 205
            mem[mem[64] + 4] = this.address
            staticcall address(poolList[idx].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_204]
            require mem[_204] == mem[_204]
            if sub_5e4651f9[idx] < 1:
                revert with 0, 17
            mem[32] = 210
            if var121001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var123002
            if _207 >= stor[sha3(var123002) + var123001]:
                _481 = mem[64]
                mem[64] = mem[64] + 64
                mem[_481] = 10
                mem[_481 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var123003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _487 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _481 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var123003]
                _756 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_756 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_756 + 36 len 28]
                staticcall 'console.log'.mem[_756 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_756 + 36 len mem[_756] - 4]
                mem[_487 + 164] = 10
                mem[_487 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var123003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_487 + 264] = 64
                mem[_487 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _487 + 360] = mem[s + _487 + 196]
                    s = s + 32
                    continue 
                mem[_487 + 370] = 0
                mem[_487 + 296] = sub_5e4651f9[idx][var123003]
                mem[_487 + 228] = 132
                mem[64] = _487 + 392
                mem[_487 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var123003], 10, mem[_487 + 360 len 10], 0
                if var123003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var123003]
                mem[_487 + 392] = idx
                mem[_487 + 424] = poolList[idx].field_1024
                mem[_487 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var127001:
                revert with 0, 17
            mem[32] = 210
            if var133001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var135002
            if _207 >= stor[sha3(var135002) + var135001]:
                _1607 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1607] = 10
                mem[_1607 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var135003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _1613 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _1607 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var135003]
                _1882 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_1882 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1882 + 36 len 28]
                staticcall 'console.log'.mem[_1882 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_1882 + 36 len mem[_1882] - 4]
                mem[_1613 + 164] = 10
                mem[_1613 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var135003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_1613 + 264] = 64
                mem[_1613 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _1613 + 360] = mem[s + _1613 + 196]
                    s = s + 32
                    continue 
                mem[_1613 + 370] = 0
                mem[_1613 + 296] = sub_5e4651f9[idx][var135003]
                mem[_1613 + 228] = 132
                mem[64] = _1613 + 392
                mem[_1613 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var135003], 10, mem[_1613 + 360 len 10], 0
                if var135003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var135003]
                mem[_1613 + 392] = idx
                mem[_1613 + 424] = poolList[idx].field_1024
                mem[_1613 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not var139001:
                revert with 0, 17
            mem[32] = 210
            if var145001 >= sub_5e4651f9[idx]:
                revert with 0, 50
            mem[0] = var147002
            if _207 < stor[sha3(var147002) + var147001]:
                if not var151001:
                    revert with 0, 17
                # nil
            else:
                _2733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2733] = 10
                mem[_2733 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                mem[32] = 211
                if var147003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                mem[0] = sha3(idx, 211)
                _2739 = mem[64]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 100] = 10
                s = 0
                while s < 10:
                    mem[s + mem[64] + 132] = mem[s + _2733 + 32]
                    s = s + 32
                    continue 
                mem[mem[64] + 142] = 0
                mem[mem[64] + 68] = sub_5bf56068[idx][var147003]
                _3008 = mem[64]
                mem[mem[64]] = 132
                mem[64] = mem[64] + 164
                mem[_3008 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_3008 + 36 len 28]
                staticcall 'console.log'.mem[_3008 + 32 len 4] with:
                        gas gas_remaining wei
                       args mem[_3008 + 36 len mem[_3008] - 4]
                mem[_2739 + 164] = 10
                mem[_2739 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                if var147003 >= sub_5e4651f9[idx]:
                    revert with 0, 50
                mem[_2739 + 264] = 64
                mem[_2739 + 328] = 10
                s = 0
                while s < 10:
                    mem[s + _2739 + 360] = mem[s + _2739 + 196]
                    s = s + 32
                    continue 
                mem[_2739 + 370] = 0
                mem[_2739 + 296] = sub_5e4651f9[idx][var147003]
                mem[_2739 + 228] = 132
                mem[64] = _2739 + 392
                mem[_2739 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 0, sub_5e4651f9[idx][var147003], 10, mem[_2739 + 360 len 10], 0
                if var147003 >= sub_5bf56068[idx]:
                    revert with 0, 50
                if idx >= poolList.length:
                    revert with 0, 50
                poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                mem[_2739 + 392] = idx
                mem[_2739 + 424] = poolList[idx].field_1024
                mem[_2739 + 456] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if userInfo[idx][address(arg1)].field_512 and poolList[idx].field_1280 > -1 / userInfo[idx][address(arg1)].field_512:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 and poolList[idx].field_1024 > -1 / userInfo[idx][address(arg1)].field_256:
                    revert with 0, 17
                if userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024 > !(userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280):
                    revert with 0, 17
                if (userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12 < userInfo[idx][address(arg1)].field_0:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = sha3(idx, 209)
                if sub_c73d2bae[idx][address(arg1)] > !(((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0):
                    revert with 0, 17
                sub_c73d2bae[idx][address(arg1)] = sub_c73d2bae[idx][address(arg1)] + ((userInfo[idx][address(arg1)].field_256 * poolList[idx].field_1024) + (userInfo[idx][address(arg1)].field_512 * poolList[idx].field_1280) / 10^12) - userInfo[idx][address(arg1)].field_0
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
                        if poolList[idx].field_1536 > -1:
                            revert with 0, 17
                        if poolList[idx].field_1536 < userInfo[idx][address(arg1)].field_512:
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
                        if poolList[idx].field_1536 > -2:
                            revert with 0, 17
                        if poolList[idx].field_1536 + 1 < userInfo[idx][address(arg1)].field_512:
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
                    if poolList[idx].field_1536 > !t:
                        revert with 0, 17
                    if poolList[idx].field_1536 + t < userInfo[idx][address(arg1)].field_512:
                        revert with 0, 17
                    poolList[idx].field_1536 = poolList[idx].field_1536 + t - userInfo[idx][address(arg1)].field_512
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
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
    if stor151:
        revert with 0, 'Pausable: paused'
    if arg1 >= poolList.length:
        revert with 0, 50
    mem[0] = 205
    if 0 == poolList[arg1].field_768:
        revert with 0, 'Pool not exists'
    if not arg3:
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 207
                if not stor207[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                if block.timestamp <= poolList[idx].field_768:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(poolList[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1296] == mem[_1296]
                if not mem[_1296]:
                    poolList[idx].field_768 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.timestamp < poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                    revert with 0, 17
                if not mem[_1296]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1296]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1296]
                if not poolList[idx].field_1536:
                    poolList[idx].field_1280 = 0
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                        revert with 0, 17
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1922 = mem[_1866]
                    require mem[_1866] == mem[_1866]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var126001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var128002
                    if _1922 >= stor[sha3(var128002) + var128001]:
                        _3704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3704] = 10
                        mem[_3704 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var128003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _3717 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _3704 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var128003]
                        _5472 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5472 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5472 + 36 len 28]
                        staticcall 'console.log'.mem[_5472 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5472 + 36 len mem[_5472] - 4]
                        mem[_3717 + 164] = 10
                        mem[_3717 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var128003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_3717 + 264] = 64
                        mem[_3717 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _3717 + 360] = mem[s + _3717 + 196]
                            s = s + 32
                            continue 
                        mem[_3717 + 370] = 0
                        mem[_3717 + 296] = sub_5e4651f9[idx][var128003]
                        mem[_3717 + 228] = 132
                        mem[64] = _3717 + 392
                        mem[_3717 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var128003], 10, mem[_3717 + 360 len 10], 0
                        mem[32] = 211
                        if var128003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var128003]
                        mem[_3717 + 392] = idx
                        mem[_3717 + 424] = poolList[idx].field_1024
                        mem[_3717 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var132001:
                        revert with 0, 17
                    mem[32] = 210
                    if var138001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var140002
                    if _1922 >= stor[sha3(var140002) + var140001]:
                        _11232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11232] = 10
                        mem[_11232 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var140003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _11245 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _11232 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var140003]
                        _13000 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_13000 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_13000 + 36 len 28]
                        staticcall 'console.log'.mem[_13000 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_13000 + 36 len mem[_13000] - 4]
                        mem[_11245 + 164] = 10
                        mem[_11245 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var140003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_11245 + 264] = 64
                        mem[_11245 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _11245 + 360] = mem[s + _11245 + 196]
                            s = s + 32
                            continue 
                        mem[_11245 + 370] = 0
                        mem[_11245 + 296] = sub_5e4651f9[idx][var140003]
                        mem[_11245 + 228] = 132
                        mem[64] = _11245 + 392
                        mem[_11245 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var140003], 10, mem[_11245 + 360 len 10], 0
                        mem[32] = 211
                        if var140003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var140003]
                        mem[_11245 + 392] = idx
                        mem[_11245 + 424] = poolList[idx].field_1024
                        mem[_11245 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var144001:
                        revert with 0, 17
                    mem[32] = 210
                    if var150001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var152002
                    if _1922 < stor[sha3(var152002) + var152001]:
                        if not var156001:
                            revert with 0, 17
                        # nil
                    else:
                        _18760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18760] = 10
                        mem[_18760 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var152003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _18773 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _18760 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var152003]
                        _20528 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_20528 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_20528 + 36 len 28]
                        staticcall 'console.log'.mem[_20528 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_20528 + 36 len mem[_20528] - 4]
                        mem[_18773 + 164] = 10
                        mem[_18773 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var152003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_18773 + 264] = 64
                        mem[_18773 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _18773 + 360] = mem[s + _18773 + 196]
                            s = s + 32
                            continue 
                        mem[_18773 + 370] = 0
                        mem[_18773 + 296] = sub_5e4651f9[idx][var152003]
                        mem[_18773 + 228] = 132
                        mem[64] = _18773 + 392
                        mem[_18773 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var152003], 10, mem[_18773 + 360 len 10], 0
                        mem[32] = 211
                        if var152003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var152003]
                        mem[_18773 + 392] = idx
                        mem[_18773 + 424] = poolList[idx].field_1024
                        mem[_18773 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1964 = mem[_1942]
                    require mem[_1942] == mem[_1942]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var135001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var137002
                    if _1964 >= stor[sha3(var137002) + var137001]:
                        _3702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3702] = 10
                        mem[_3702 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var137003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _3716 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _3702 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var137003]
                        _5467 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5467 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5467 + 36 len 28]
                        staticcall 'console.log'.mem[_5467 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5467 + 36 len mem[_5467] - 4]
                        mem[_3716 + 164] = 10
                        mem[_3716 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var137003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_3716 + 264] = 64
                        mem[_3716 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _3716 + 360] = mem[s + _3716 + 196]
                            s = s + 32
                            continue 
                        mem[_3716 + 370] = 0
                        mem[_3716 + 296] = sub_5e4651f9[idx][var137003]
                        mem[_3716 + 228] = 132
                        mem[64] = _3716 + 392
                        mem[_3716 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var137003], 10, mem[_3716 + 360 len 10], 0
                        mem[32] = 211
                        if var137003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var137003]
                        mem[_3716 + 392] = idx
                        mem[_3716 + 424] = poolList[idx].field_1024
                        mem[_3716 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var141001:
                        revert with 0, 17
                    mem[32] = 210
                    if var147001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var149002
                    if _1964 >= stor[sha3(var149002) + var149001]:
                        _11230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11230] = 10
                        mem[_11230 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var149003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _11244 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _11230 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var149003]
                        _12995 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_12995 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_12995 + 36 len 28]
                        staticcall 'console.log'.mem[_12995 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_12995 + 36 len mem[_12995] - 4]
                        mem[_11244 + 164] = 10
                        mem[_11244 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var149003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_11244 + 264] = 64
                        mem[_11244 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _11244 + 360] = mem[s + _11244 + 196]
                            s = s + 32
                            continue 
                        mem[_11244 + 370] = 0
                        mem[_11244 + 296] = sub_5e4651f9[idx][var149003]
                        mem[_11244 + 228] = 132
                        mem[64] = _11244 + 392
                        mem[_11244 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var149003], 10, mem[_11244 + 360 len 10], 0
                        mem[32] = 211
                        if var149003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var149003]
                        mem[_11244 + 392] = idx
                        mem[_11244 + 424] = poolList[idx].field_1024
                        mem[_11244 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var153001:
                        revert with 0, 17
                    mem[32] = 210
                    if var159001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var161002
                    if _1964 < stor[sha3(var161002) + var161001]:
                        if not var165001:
                            revert with 0, 17
                        # nil
                    else:
                        _18758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18758] = 10
                        mem[_18758 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var161003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _18772 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _18758 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var161003]
                        _20523 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_20523 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_20523 + 36 len 28]
                        staticcall 'console.log'.mem[_20523 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_20523 + 36 len mem[_20523] - 4]
                        mem[_18772 + 164] = 10
                        mem[_18772 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var161003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_18772 + 264] = 64
                        mem[_18772 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _18772 + 360] = mem[s + _18772 + 196]
                            s = s + 32
                            continue 
                        mem[_18772 + 370] = 0
                        mem[_18772 + 296] = sub_5e4651f9[idx][var161003]
                        mem[_18772 + 228] = 132
                        mem[64] = _18772 + 392
                        mem[_18772 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var161003], 10, mem[_18772 + 360 len 10], 0
                        mem[32] = 211
                        if var161003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var161003]
                        mem[_18772 + 392] = idx
                        mem[_18772 + 424] = poolList[idx].field_1024
                        mem[_18772 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
        if arg1 >= poolList.length:
            revert with 0, 50
        if block.timestamp <= poolList[arg1].field_768:
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
        staticcall address(poolList[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            poolList[arg1].field_768 = block.timestamp
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
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
            if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                revert with 0, 17
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[arg1].field_768 = block.timestamp
            if not sub_5e4651f9[arg1]:
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if arg1 >= poolList.length:
                revert with 0, 50
            staticcall address(poolList[arg1].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if sub_5e4651f9[arg1] < 1:
                revert with 0, 17
            if var121001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var123002) + var123001]:
                if var123003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var123003], 10, 0, 0
                if var123003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var123003], 10, 0, 0
                if var123003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var123003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var127001:
                revert with 0, 17
            if var133001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var135002) + var135001]:
                if var135003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var135003], 10, 0, 0
                if var135003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var135003], 10, 0, 0
                if var135003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var135003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var139001:
                revert with 0, 17
            if var145001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var147002) + var147001]:
                if not var151001:
                    revert with 0, 17
                if var157001 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                # nil
            else:
                if var147003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var147003], 10, 0, 0
                if var147003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var147003], 10, 0, 0
                if var147003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var147003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
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
            if not sub_5e4651f9[arg1]:
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if arg1 >= poolList.length:
                revert with 0, 50
            staticcall address(poolList[arg1].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if sub_5e4651f9[arg1] < 1:
                revert with 0, 17
            if var130001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var132002) + var132001]:
                if var132003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var132003], 10, 0, 0
                if var132003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var132003], 10, 0, 0
                if var132003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var132003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var136001:
                revert with 0, 17
            if var142001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var144002) + var144001]:
                if var144003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var144003], 10, 0, 0
                if var144003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var144003], 10, 0, 0
                if var144003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var144003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var148001:
                revert with 0, 17
            if var154001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var156002) + var156001]:
                if not var160001:
                    revert with 0, 17
                if var166001 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                # nil
            else:
                if var156003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var156003], 10, 0, 0
                if var156003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var156003], 10, 0, 0
                if var156003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var156003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
    else:
        if arg2 <= 0:
            revert with 0, 'Only bonus'
        if arg4:
            idx = 0
            while idx < poolList.length:
                mem[0] = idx
                mem[32] = 207
                if not stor207[idx]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if idx >= poolList.length:
                    revert with 0, 50
                mem[0] = 205
                if block.timestamp <= poolList[idx].field_768:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                staticcall address(poolList[idx].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1297 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1297] == mem[_1297]
                if not mem[_1297]:
                    poolList[idx].field_768 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if block.timestamp < poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_256 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if block.timestamp - poolList[idx].field_768 and poolList[idx].field_512 > -1 / block.timestamp - poolList[idx].field_768:
                    revert with 0, 17
                if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) and 10^12 > -1 / (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256):
                    revert with 0, 17
                if not mem[_1297]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1297]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1297]
                if not poolList[idx].field_1536:
                    poolList[idx].field_1280 = 0
                    if (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) > !((block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)):
                        revert with 0, 17
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1883 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1923 = mem[_1883]
                    require mem[_1883] == mem[_1883]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var127001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var129002
                    if _1923 >= stor[sha3(var129002) + var129001]:
                        _3710 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3710] = 10
                        mem[_3710 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var129003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _3719 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _3710 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var129003]
                        _5498 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5498 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5498 + 36 len 28]
                        staticcall 'console.log'.mem[_5498 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5498 + 36 len mem[_5498] - 4]
                        mem[_3719 + 164] = 10
                        mem[_3719 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var129003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_3719 + 264] = 64
                        mem[_3719 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _3719 + 360] = mem[s + _3719 + 196]
                            s = s + 32
                            continue 
                        mem[_3719 + 370] = 0
                        mem[_3719 + 296] = sub_5e4651f9[idx][var129003]
                        mem[_3719 + 228] = 132
                        mem[64] = _3719 + 392
                        mem[_3719 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var129003], 10, mem[_3719 + 360 len 10], 0
                        mem[32] = 211
                        if var129003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var129003]
                        mem[_3719 + 392] = idx
                        mem[_3719 + 424] = poolList[idx].field_1024
                        mem[_3719 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var133001:
                        revert with 0, 17
                    mem[32] = 210
                    if var139001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var141002
                    if _1923 >= stor[sha3(var141002) + var141001]:
                        _11238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11238] = 10
                        mem[_11238 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var141003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _11247 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _11238 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var141003]
                        _13026 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_13026 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_13026 + 36 len 28]
                        staticcall 'console.log'.mem[_13026 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_13026 + 36 len mem[_13026] - 4]
                        mem[_11247 + 164] = 10
                        mem[_11247 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var141003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_11247 + 264] = 64
                        mem[_11247 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _11247 + 360] = mem[s + _11247 + 196]
                            s = s + 32
                            continue 
                        mem[_11247 + 370] = 0
                        mem[_11247 + 296] = sub_5e4651f9[idx][var141003]
                        mem[_11247 + 228] = 132
                        mem[64] = _11247 + 392
                        mem[_11247 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var141003], 10, mem[_11247 + 360 len 10], 0
                        mem[32] = 211
                        if var141003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var141003]
                        mem[_11247 + 392] = idx
                        mem[_11247 + 424] = poolList[idx].field_1024
                        mem[_11247 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var145001:
                        revert with 0, 17
                    mem[32] = 210
                    if var151001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var153002
                    if _1923 < stor[sha3(var153002) + var153001]:
                        if not var157001:
                            revert with 0, 17
                        # nil
                    else:
                        _18766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18766] = 10
                        mem[_18766 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var153003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _18775 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _18766 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var153003]
                        _20554 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_20554 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_20554 + 36 len 28]
                        staticcall 'console.log'.mem[_20554 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_20554 + 36 len mem[_20554] - 4]
                        mem[_18775 + 164] = 10
                        mem[_18775 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var153003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_18775 + 264] = 64
                        mem[_18775 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _18775 + 360] = mem[s + _18775 + 196]
                            s = s + 32
                            continue 
                        mem[_18775 + 370] = 0
                        mem[_18775 + 296] = sub_5e4651f9[idx][var153003]
                        mem[_18775 + 228] = 132
                        mem[64] = _18775 + 392
                        mem[_18775 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var153003], 10, mem[_18775 + 360 len 10], 0
                        mem[32] = 211
                        if var153003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var153003]
                        mem[_18775 + 392] = idx
                        mem[_18775 + 424] = poolList[idx].field_1024
                        mem[_18775 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                    mem[mem[64] + 36] = (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    require ext_code.size(sub_29fd2007Address)
                    call sub_29fd2007Address.0xb4767398 with:
                         gas gas_remaining wei
                        args address(this.address), (block.timestamp * poolList[idx].field_256) - (poolList[idx].field_768 * poolList[idx].field_256) + (block.timestamp * poolList[idx].field_512) - (poolList[idx].field_768 * poolList[idx].field_512)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolList[idx].field_768 = block.timestamp
                    mem[0] = idx
                    mem[32] = 210
                    if not sub_5e4651f9[idx]:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    mem[mem[64] + 4] = this.address
                    staticcall address(poolList[idx].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1944 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1965 = mem[_1944]
                    require mem[_1944] == mem[_1944]
                    if sub_5e4651f9[idx] < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var136001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var138002
                    if _1965 >= stor[sha3(var138002) + var138001]:
                        _3708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3708] = 10
                        mem[_3708 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _3718 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _3708 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var138003]
                        _5493 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5493 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5493 + 36 len 28]
                        staticcall 'console.log'.mem[_5493 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5493 + 36 len mem[_5493] - 4]
                        mem[_3718 + 164] = 10
                        mem[_3718 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var138003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_3718 + 264] = 64
                        mem[_3718 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _3718 + 360] = mem[s + _3718 + 196]
                            s = s + 32
                            continue 
                        mem[_3718 + 370] = 0
                        mem[_3718 + 296] = sub_5e4651f9[idx][var138003]
                        mem[_3718 + 228] = 132
                        mem[64] = _3718 + 392
                        mem[_3718 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var138003], 10, mem[_3718 + 360 len 10], 0
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var138003]
                        mem[_3718 + 392] = idx
                        mem[_3718 + 424] = poolList[idx].field_1024
                        mem[_3718 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var142001:
                        revert with 0, 17
                    mem[32] = 210
                    if var148001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var150002
                    if _1965 >= stor[sha3(var150002) + var150001]:
                        _11236 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11236] = 10
                        mem[_11236 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var150003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _11246 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _11236 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var150003]
                        _13021 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_13021 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_13021 + 36 len 28]
                        staticcall 'console.log'.mem[_13021 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_13021 + 36 len mem[_13021] - 4]
                        mem[_11246 + 164] = 10
                        mem[_11246 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var150003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_11246 + 264] = 64
                        mem[_11246 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _11246 + 360] = mem[s + _11246 + 196]
                            s = s + 32
                            continue 
                        mem[_11246 + 370] = 0
                        mem[_11246 + 296] = sub_5e4651f9[idx][var150003]
                        mem[_11246 + 228] = 132
                        mem[64] = _11246 + 392
                        mem[_11246 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var150003], 10, mem[_11246 + 360 len 10], 0
                        mem[32] = 211
                        if var150003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var150003]
                        mem[_11246 + 392] = idx
                        mem[_11246 + 424] = poolList[idx].field_1024
                        mem[_11246 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var154001:
                        revert with 0, 17
                    mem[32] = 210
                    if var160001 >= sub_5e4651f9[idx]:
                        revert with 0, 50
                    mem[0] = var162002
                    if _1965 < stor[sha3(var162002) + var162001]:
                        if not var166001:
                            revert with 0, 17
                        # nil
                    else:
                        _18764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_18764] = 10
                        mem[_18764 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var162003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _18774 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _18764 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var162003]
                        _20549 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_20549 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_20549 + 36 len 28]
                        staticcall 'console.log'.mem[_20549 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_20549 + 36 len mem[_20549] - 4]
                        mem[_18774 + 164] = 10
                        mem[_18774 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var162003 >= sub_5e4651f9[idx]:
                            revert with 0, 50
                        mem[_18774 + 264] = 64
                        mem[_18774 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _18774 + 360] = mem[s + _18774 + 196]
                            s = s + 32
                            continue 
                        mem[_18774 + 370] = 0
                        mem[_18774 + 296] = sub_5e4651f9[idx][var162003]
                        mem[_18774 + 228] = 132
                        mem[64] = _18774 + 392
                        mem[_18774 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var162003], 10, mem[_18774 + 360 len 10], 0
                        mem[32] = 211
                        if var162003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var162003]
                        mem[_18774 + 392] = idx
                        mem[_18774 + 424] = poolList[idx].field_1024
                        mem[_18774 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
        if arg1 >= poolList.length:
            revert with 0, 50
        if block.timestamp <= poolList[arg1].field_768:
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
        staticcall address(poolList[arg1].field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            poolList[arg1].field_768 = block.timestamp
            if not stor207[arg1]:
                if arg2 > 0:
                    stor207[arg1] = 1
                    emit 0x6140f1d5: arg1, block.timestamp
            if not arg2:
                stor207[arg1] = 0
                emit 0x4654f9b7: arg1, block.timestamp
            else:
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = arg2
                poolList[arg1].field_512 = arg3
                emit 0x12558fa1: arg1, arg2, arg3
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
            if (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) > !((block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)):
                revert with 0, 17
            require ext_code.size(sub_29fd2007Address)
            call sub_29fd2007Address.0xb4767398 with:
                 gas gas_remaining wei
                args address(this.address), (block.timestamp * poolList[arg1].field_256) - (poolList[arg1].field_768 * poolList[arg1].field_256) + (block.timestamp * poolList[arg1].field_512) - (poolList[arg1].field_768 * poolList[arg1].field_512)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            poolList[arg1].field_768 = block.timestamp
            if not sub_5e4651f9[arg1]:
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if arg1 >= poolList.length:
                revert with 0, 50
            staticcall address(poolList[arg1].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if sub_5e4651f9[arg1] < 1:
                revert with 0, 17
            if var122001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var124002) + var124001]:
                if var124003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var124003], 10, 0, 0
                if var124003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var124003], 10, 0, 0
                if var124003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var124003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var128001:
                revert with 0, 17
            if var134001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var136002) + var136001]:
                if var136003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var136003], 10, 0, 0
                if var136003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var136003], 10, 0, 0
                if var136003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var136003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var140001:
                revert with 0, 17
            if var146001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var148002) + var148001]:
                if not var152001:
                    revert with 0, 17
                if var158001 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                # nil
            else:
                if var148003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var148003], 10, 0, 0
                if var148003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var148003], 10, 0, 0
                if var148003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var148003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
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
            if not sub_5e4651f9[arg1]:
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if arg1 >= poolList.length:
                revert with 0, 50
            staticcall address(poolList[arg1].field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if sub_5e4651f9[arg1] < 1:
                revert with 0, 17
            if var131001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var133002) + var133001]:
                if var133003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var133003], 10, 0, 0
                if var133003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var133003], 10, 0, 0
                if var133003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var133003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var137001:
                revert with 0, 17
            if var143001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var145002) + var145001]:
                if var145003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var145003], 10, 0, 0
                if var145003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var145003], 10, 0, 0
                if var145003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var145003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
            if not var149001:
                revert with 0, 17
            if var155001 >= sub_5e4651f9[arg1]:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var157002) + var157001]:
                if not var161001:
                    revert with 0, 17
                if var167001 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                # nil
            else:
                if var157003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var157003], 10, 0, 0
                if var157003 >= sub_5e4651f9[arg1]:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var157003], 10, 0, 0
                if var157003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var157003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not stor207[arg1]:
                    if arg2 > 0:
                        stor207[arg1] = 1
                        emit 0x6140f1d5: arg1, block.timestamp
                if not arg2:
                    stor207[arg1] = 0
                    emit 0x4654f9b7: arg1, block.timestamp
                else:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = arg2
                    poolList[arg1].field_512 = arg3
                    emit 0x12558fa1: arg1, arg2, arg3
}



}
