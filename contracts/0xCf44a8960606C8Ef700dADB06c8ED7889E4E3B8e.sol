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
array of struct sub_5e4651f9;
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
    require arg2 < sub_5e4651f9[arg1].field_0
    return sub_5e4651f9[arg1][arg2].field_0
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
    sub_5e4651f9[cd[4]].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_5e4651f9[cd[4]].field_0 > idx:
            sub_5e4651f9[cd[4]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_5e4651f9[cd[4]][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_5e4651f9[cd[4]].field_0 > idx:
            sub_5e4651f9[cd[4]][idx].field_0 = 0
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
        if not sub_5e4651f9[arg1].field_0:
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if sub_29baefff >= sub_5e4651f9[arg1].field_0:
            revert with 0, 50
        if sub_5e4651f9[arg1].field_0 < 1:
            revert with 0, 17
        if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
            if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if var103001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var105002) + var105001]:
                if var105003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var105003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var105003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            if not var109001:
                revert with 0, 17
            if var115001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var117002) + var117001]:
                if var117003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var117003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var117003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            if not var121001:
                revert with 0, 17
            if var127001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var129002) + var129001]:
                if not var133001:
                    revert with 0, 17
                if var139001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                # nil
            else:
                if var129003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var129003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var129003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        else:
            if 1 > !sub_29baefff:
                revert with 0, 17
            if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                if arg1 >= poolList.length:
                    revert with 0, 50
                staticcall address(poolList[arg1].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var107001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var109002) + var109001]:
                    if var109003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var109003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var109003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var113001:
                    revert with 0, 17
                if var119001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var121002) + var121001]:
                    if var121003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var121003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var121003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var125001:
                    revert with 0, 17
                if var131001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var133002) + var133001]:
                    if not var137001:
                        revert with 0, 17
                    if var143001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var133003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var133003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var133003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            else:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var108001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var110002) + var110001]:
                    if var110003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var110003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var110003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var114001:
                    revert with 0, 17
                if var120001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var122002) + var122001]:
                    if var122003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var122003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var122003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var126001:
                    revert with 0, 17
                if var132001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var134002) + var134001]:
                    if not var138001:
                        revert with 0, 17
                    if var144001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var134003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var134003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var134003]
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
        if not sub_5e4651f9[arg1].field_0:
            emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        if sub_29baefff >= sub_5e4651f9[arg1].field_0:
            revert with 0, 50
        if sub_5e4651f9[arg1].field_0 < 1:
            revert with 0, 17
        if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
            if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if var112001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var114002) + var114001]:
                if var114003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var114003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var114003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            if not var118001:
                revert with 0, 17
            if var124001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= stor[sha3(var126002) + var126001]:
                if var126003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var126003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var126003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            if not var130001:
                revert with 0, 17
            if var136001 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] < stor[sha3(var138002) + var138001]:
                if not var142001:
                    revert with 0, 17
                if var148001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                # nil
            else:
                if var138003 >= sub_5bf56068[arg1]:
                    revert with 0, 50
                sub_29baefff = var138003
                if arg1 >= poolList.length:
                    revert with 0, 50
                poolList[arg1].field_256 = sub_5bf56068[arg1][var138003]
                emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
        else:
            if 1 > !sub_29baefff:
                revert with 0, 17
            if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                if arg1 >= poolList.length:
                    revert with 0, 50
                staticcall address(poolList[arg1].field_0).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var116001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var118002) + var118001]:
                    if var118003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var118003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var118003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var122001:
                    revert with 0, 17
                if var128001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var130002) + var130001]:
                    if var130003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var130003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var130003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var134001:
                    revert with 0, 17
                if var140001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var142002) + var142001]:
                    if not var146001:
                        revert with 0, 17
                    if var152001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var142003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var142003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var142003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
            else:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var117001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var119002) + var119001]:
                    if var119003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var119003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var119003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var123001:
                    revert with 0, 17
                if var129001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var131002) + var131001]:
                    if var131003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var131003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var131003]
                    emit PoolUpdated(arg1, poolList[arg1].field_1024, poolList[arg1].field_1280);
                if not var135001:
                    revert with 0, 17
                if var141001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var143002) + var143001]:
                    if not var147001:
                        revert with 0, 17
                    if var153001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var143003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var143003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var143003]
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
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _118 = mem[_117]
        require mem[_117] == mem[_117]
        if not mem[_117]:
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
        if not mem[_117]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_117]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_117]
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
            if not sub_5e4651f9[idx].field_0:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_29baefff >= sub_5e4651f9[idx].field_0:
                revert with 0, 50
            mem[0] = idx
            mem[32] = 210
            if sub_5e4651f9[idx].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                if _118 >= sub_5e4651f9[idx][stor212].field_0:
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
                _147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_147] == mem[_147]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                if var99001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_147] >= stor[sha3(var101002) + var101001]:
                    mem[32] = 211
                    if var101003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var101003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var101003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var105001:
                    revert with 0, 17
                if var111001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_147] >= stor[sha3(var113002) + var113001]:
                    mem[32] = 211
                    if var113003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var113003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var113003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var117001:
                    revert with 0, 17
                if var123001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_147] < stor[sha3(var125002) + var125001]:
                    if not var129001:
                        revert with 0, 17
                    # nil
                else:
                    mem[32] = 211
                    if var125003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var125003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var125003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[32] = 210
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = sha3(idx, 210)
                if _118 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_156] == mem[_156]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var103001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_156] >= stor[sha3(var105002) + var105001]:
                        mem[32] = 211
                        if var105003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var105003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var105003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var109001:
                        revert with 0, 17
                    if var115001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_156] >= stor[sha3(var117002) + var117001]:
                        mem[32] = 211
                        if var117003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var117003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var117003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var121001:
                        revert with 0, 17
                    if var127001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_156] < stor[sha3(var129002) + var129001]:
                        if not var133001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var129003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var129003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var129003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if _118 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _160 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_160] == mem[_160]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var104001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_160] >= stor[sha3(var106002) + var106001]:
                        mem[32] = 211
                        if var106003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var106003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var106003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var110001:
                        revert with 0, 17
                    if var116001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_160] >= stor[sha3(var118002) + var118001]:
                        mem[32] = 211
                        if var118003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var118003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var118003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var122001:
                        revert with 0, 17
                    if var128001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_160] < stor[sha3(var130002) + var130001]:
                        if not var134001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var130003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var130003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var130003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
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
            if not sub_5e4651f9[idx].field_0:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = poolList[idx].field_1024
                mem[mem[64] + 64] = poolList[idx].field_1280
                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if sub_29baefff >= sub_5e4651f9[idx].field_0:
                revert with 0, 50
            mem[0] = idx
            mem[32] = 210
            if sub_5e4651f9[idx].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                if _118 >= sub_5e4651f9[idx][stor212].field_0:
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
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_167] == mem[_167]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                if var108001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_167] >= stor[sha3(var110002) + var110001]:
                    mem[32] = 211
                    if var110003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var110003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var110003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var114001:
                    revert with 0, 17
                if var120001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_167] >= stor[sha3(var122002) + var122001]:
                    mem[32] = 211
                    if var122003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var122003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var122003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var126001:
                    revert with 0, 17
                if var132001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_167] < stor[sha3(var134002) + var134001]:
                    if not var138001:
                        revert with 0, 17
                    # nil
                else:
                    mem[32] = 211
                    if var134003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var134003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var134003]
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = poolList[idx].field_1024
                    mem[mem[64] + 64] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                mem[32] = 210
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = sha3(idx, 210)
                if _118 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_173] == mem[_173]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var112001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_173] >= stor[sha3(var114002) + var114001]:
                        mem[32] = 211
                        if var114003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var114003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var114003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var118001:
                        revert with 0, 17
                    if var124001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_173] >= stor[sha3(var126002) + var126001]:
                        mem[32] = 211
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var126003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var126003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var130001:
                        revert with 0, 17
                    if var136001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_173] < stor[sha3(var138002) + var138001]:
                        if not var142001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var138003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var138003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if _118 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_176] == mem[_176]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var113001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_176] >= stor[sha3(var115002) + var115001]:
                        mem[32] = 211
                        if var115003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var115003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var115003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var119001:
                        revert with 0, 17
                    if var125001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_176] >= stor[sha3(var127002) + var127001]:
                        mem[32] = 211
                        if var127003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var127003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var127003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var131001:
                        revert with 0, 17
                    if var137001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_176] < stor[sha3(var139002) + var139001]:
                        if not var143001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var139003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var139003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var139003]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
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
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _418 = mem[_416]
                require mem[_416] == mem[_416]
                if not mem[_416]:
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
                if not mem[_416]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_416]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_416]
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _418 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_483] == mem[_483]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var139001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_483] >= stor[sha3(var141002) + var141001]:
                            mem[32] = 211
                            if var141003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var141003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var141003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var145001:
                            revert with 0, 17
                        if var151001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_483] >= stor[sha3(var153002) + var153001]:
                            mem[32] = 211
                            if var153003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var153003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var153003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var157001:
                            revert with 0, 17
                        if var163001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_483] < stor[sha3(var165002) + var165001]:
                            if not var169001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var165003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var165003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var165003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _418 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_501] == mem[_501]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var143001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_501] >= stor[sha3(var145002) + var145001]:
                                mem[32] = 211
                                if var145003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var145003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var145003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var149001:
                                revert with 0, 17
                            if var155001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_501] >= stor[sha3(var157002) + var157001]:
                                mem[32] = 211
                                if var157003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var157003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var157003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var161001:
                                revert with 0, 17
                            if var167001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_501] < stor[sha3(var169002) + var169001]:
                                if not var173001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var169003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var169003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var169003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _418 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _507 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_507] == mem[_507]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var144001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_507] >= stor[sha3(var146002) + var146001]:
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var146003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var150001:
                                revert with 0, 17
                            if var156001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_507] >= stor[sha3(var158002) + var158001]:
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var158003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var162001:
                                revert with 0, 17
                            if var168001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_507] < stor[sha3(var170002) + var170001]:
                                if not var174001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var170003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var170003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _418 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_524] == mem[_524]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var148001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_524] >= stor[sha3(var150002) + var150001]:
                            mem[32] = 211
                            if var150003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var150003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var150003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var154001:
                            revert with 0, 17
                        if var160001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_524] >= stor[sha3(var162002) + var162001]:
                            mem[32] = 211
                            if var162003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var162003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var162003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var166001:
                            revert with 0, 17
                        if var172001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_524] < stor[sha3(var174002) + var174001]:
                            if not var178001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var174003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var174003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var174003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _418 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _535 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_535] == mem[_535]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var152001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_535] >= stor[sha3(var154002) + var154001]:
                                mem[32] = 211
                                if var154003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var154003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var154003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var158001:
                                revert with 0, 17
                            if var164001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_535] >= stor[sha3(var166002) + var166001]:
                                mem[32] = 211
                                if var166003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var166003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var166003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var170001:
                                revert with 0, 17
                            if var176001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_535] < stor[sha3(var178002) + var178001]:
                                if not var182001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var178003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var178003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var178003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _418 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _542 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_542] == mem[_542]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var153001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_542] >= stor[sha3(var155002) + var155001]:
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var155003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var155003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var159001:
                                revert with 0, 17
                            if var165001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_542] >= stor[sha3(var167002) + var167001]:
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var167003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var167003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var171001:
                                revert with 0, 17
                            if var177001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_542] < stor[sha3(var179002) + var179001]:
                                if not var183001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var179003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var179003]
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
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _419 = mem[_417]
                require mem[_417] == mem[_417]
                if not mem[_417]:
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
                if not mem[_417]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_417]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_417]
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _419 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _485 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_485] == mem[_485]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var140001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_485] >= stor[sha3(var142002) + var142001]:
                            mem[32] = 211
                            if var142003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var142003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var142003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var146001:
                            revert with 0, 17
                        if var152001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_485] >= stor[sha3(var154002) + var154001]:
                            mem[32] = 211
                            if var154003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var154003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var154003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var158001:
                            revert with 0, 17
                        if var164001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_485] < stor[sha3(var166002) + var166001]:
                            if not var170001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var166003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var166003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var166003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _419 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_503] == mem[_503]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var144001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_503] >= stor[sha3(var146002) + var146001]:
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var146003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var150001:
                                revert with 0, 17
                            if var156001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_503] >= stor[sha3(var158002) + var158001]:
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var158003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var162001:
                                revert with 0, 17
                            if var168001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_503] < stor[sha3(var170002) + var170001]:
                                if not var174001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var170003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var170003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _419 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _511 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_511] == mem[_511]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var145001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_511] >= stor[sha3(var147002) + var147001]:
                                mem[32] = 211
                                if var147003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var147003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var151001:
                                revert with 0, 17
                            if var157001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_511] >= stor[sha3(var159002) + var159001]:
                                mem[32] = 211
                                if var159003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var159003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var159003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var163001:
                                revert with 0, 17
                            if var169001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_511] < stor[sha3(var171002) + var171001]:
                                if not var175001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var171003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var171003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var171003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _419 >= sub_5e4651f9[idx][stor212].field_0:
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
                        require mem[_526] == mem[_526]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var149001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_526] >= stor[sha3(var151002) + var151001]:
                            mem[32] = 211
                            if var151003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var151003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var151003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var155001:
                            revert with 0, 17
                        if var161001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_526] >= stor[sha3(var163002) + var163001]:
                            mem[32] = 211
                            if var163003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var163003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var163003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var167001:
                            revert with 0, 17
                        if var173001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_526] < stor[sha3(var175002) + var175001]:
                            if not var179001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var175003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var175003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var175003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _419 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_539] == mem[_539]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var153001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_539] >= stor[sha3(var155002) + var155001]:
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var155003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var155003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var159001:
                                revert with 0, 17
                            if var165001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_539] >= stor[sha3(var167002) + var167001]:
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var167003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var167003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var171001:
                                revert with 0, 17
                            if var177001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_539] < stor[sha3(var179002) + var179001]:
                                if not var183001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var179003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var179003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _419 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _545 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_545] == mem[_545]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var154001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_545] >= stor[sha3(var156002) + var156001]:
                                mem[32] = 211
                                if var156003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var156003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var156003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var160001:
                                revert with 0, 17
                            if var166001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_545] >= stor[sha3(var168002) + var168001]:
                                mem[32] = 211
                                if var168003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var168003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var168003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var172001:
                                revert with 0, 17
                            if var178001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_545] < stor[sha3(var180002) + var180001]:
                                if not var184001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var180003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var180003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var180003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
                _1324 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1334 = mem[_1324]
                require mem[_1324] == mem[_1324]
                if not mem[_1324]:
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
                if not mem[_1324]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1324]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1324]
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _1334 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1719] == mem[_1719]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var133001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1719] >= stor[sha3(var135002) + var135001]:
                            mem[32] = 211
                            if var135003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var135003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var135003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var139001:
                            revert with 0, 17
                        if var145001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1719] >= stor[sha3(var147002) + var147001]:
                            mem[32] = 211
                            if var147003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var147003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var151001:
                            revert with 0, 17
                        if var157001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1719] < stor[sha3(var159002) + var159001]:
                            if not var163001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var159003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var159003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var159003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _1334 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1737 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1737] == mem[_1737]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var137001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1737] >= stor[sha3(var139002) + var139001]:
                                mem[32] = 211
                                if var139003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var139003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var139003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var143001:
                                revert with 0, 17
                            if var149001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1737] >= stor[sha3(var151002) + var151001]:
                                mem[32] = 211
                                if var151003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var151003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var151003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var155001:
                                revert with 0, 17
                            if var161001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1737] < stor[sha3(var163002) + var163001]:
                                if not var167001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var163003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var163003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var163003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1334 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1743 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1743] == mem[_1743]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var138001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1743] >= stor[sha3(var140002) + var140001]:
                                mem[32] = 211
                                if var140003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var140003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var140003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var144001:
                                revert with 0, 17
                            if var150001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1743] >= stor[sha3(var152002) + var152001]:
                                mem[32] = 211
                                if var152003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var152003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var152003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var156001:
                                revert with 0, 17
                            if var162001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1743] < stor[sha3(var164002) + var164001]:
                                if not var168001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var164003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var164003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var164003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _1334 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1760] == mem[_1760]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var142001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1760] >= stor[sha3(var144002) + var144001]:
                            mem[32] = 211
                            if var144003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var144003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var144003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var148001:
                            revert with 0, 17
                        if var154001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1760] >= stor[sha3(var156002) + var156001]:
                            mem[32] = 211
                            if var156003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var156003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var156003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var160001:
                            revert with 0, 17
                        if var166001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1760] < stor[sha3(var168002) + var168001]:
                            if not var172001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var168003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var168003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var168003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _1334 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1771 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1771] == mem[_1771]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var146001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1771] >= stor[sha3(var148002) + var148001]:
                                mem[32] = 211
                                if var148003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var148003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var148003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var152001:
                                revert with 0, 17
                            if var158001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1771] >= stor[sha3(var160002) + var160001]:
                                mem[32] = 211
                                if var160003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var160003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var160003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var164001:
                                revert with 0, 17
                            if var170001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1771] < stor[sha3(var172002) + var172001]:
                                if not var176001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var172003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var172003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var172003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1334 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1778] == mem[_1778]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var147001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1778] >= stor[sha3(var149002) + var149001]:
                                mem[32] = 211
                                if var149003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var149003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var149003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var153001:
                                revert with 0, 17
                            if var159001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1778] >= stor[sha3(var161002) + var161001]:
                                mem[32] = 211
                                if var161003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var161003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var161003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var165001:
                                revert with 0, 17
                            if var171001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1778] < stor[sha3(var173002) + var173001]:
                                if not var177001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var173003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var173003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var173003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
            if not sub_5e4651f9[arg1].field_0:
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
            if sub_29baefff >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var128001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var130002) + var130001]:
                    if var130003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var130003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var130003]
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
                if not var134001:
                    revert with 0, 17
                if var140001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var142002) + var142001]:
                    if var142003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var142003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var142003]
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
                if not var146001:
                    revert with 0, 17
                if var152001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var154002) + var154001]:
                    if not var158001:
                        revert with 0, 17
                    if var164001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var154003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var154003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var154003]
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
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    staticcall address(poolList[arg1].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var132001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var134002) + var134001]:
                        if var134003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var134003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var134003]
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
                    if not var138001:
                        revert with 0, 17
                    if var144001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var146002) + var146001]:
                        if var146003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var146003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var146003]
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
                    if not var150001:
                        revert with 0, 17
                    if var156001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var158002) + var158001]:
                        if not var162001:
                            revert with 0, 17
                        if var168001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var158003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var158003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var158003]
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
                    if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var133001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var135002) + var135001]:
                        if var135003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var135003
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
                    if var145001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var147002) + var147001]:
                        if var147003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var147003
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
                    if not var151001:
                        revert with 0, 17
                    if var157001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var159002) + var159001]:
                        if not var163001:
                            revert with 0, 17
                        if var169001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var159003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var159003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var159003]
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
            if not sub_5e4651f9[arg1].field_0:
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
            if sub_29baefff >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var137001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var139002) + var139001]:
                    if var139003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var139003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var139003]
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
                if not var143001:
                    revert with 0, 17
                if var149001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var151002) + var151001]:
                    if var151003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var151003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var151003]
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
                if not var155001:
                    revert with 0, 17
                if var161001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var163002) + var163001]:
                    if not var167001:
                        revert with 0, 17
                    if var173001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var163003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var163003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var163003]
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
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    staticcall address(poolList[arg1].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var141001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var143002) + var143001]:
                        if var143003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var143003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var143003]
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
                    if not var147001:
                        revert with 0, 17
                    if var153001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var155002) + var155001]:
                        if var155003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var155003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var155003]
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
                    if not var159001:
                        revert with 0, 17
                    if var165001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var167002) + var167001]:
                        if not var171001:
                            revert with 0, 17
                        if var177001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var167003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var167003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var167003]
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
                    if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var142001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var144002) + var144001]:
                        if var144003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var144003
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
                    if var154001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var156002) + var156001]:
                        if var156003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var156003
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
                    if not var160001:
                        revert with 0, 17
                    if var166001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var168002) + var168001]:
                        if not var172001:
                            revert with 0, 17
                        if var178001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var168003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var168003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var168003]
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
                _1325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1337 = mem[_1325]
                require mem[_1325] == mem[_1325]
                if not mem[_1325]:
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
                if not mem[_1325]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1325]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1325]
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _1337 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1721] == mem[_1721]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var134001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1721] >= stor[sha3(var136002) + var136001]:
                            mem[32] = 211
                            if var136003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var136003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var136003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var140001:
                            revert with 0, 17
                        if var146001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1721] >= stor[sha3(var148002) + var148001]:
                            mem[32] = 211
                            if var148003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var148003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var148003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var152001:
                            revert with 0, 17
                        if var158001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1721] < stor[sha3(var160002) + var160001]:
                            if not var164001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var160003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var160003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var160003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _1337 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1739 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1739] == mem[_1739]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var138001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1739] >= stor[sha3(var140002) + var140001]:
                                mem[32] = 211
                                if var140003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var140003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var140003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var144001:
                                revert with 0, 17
                            if var150001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1739] >= stor[sha3(var152002) + var152001]:
                                mem[32] = 211
                                if var152003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var152003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var152003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var156001:
                                revert with 0, 17
                            if var162001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1739] < stor[sha3(var164002) + var164001]:
                                if not var168001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var164003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var164003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var164003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1337 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1747] == mem[_1747]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var139001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1747] >= stor[sha3(var141002) + var141001]:
                                mem[32] = 211
                                if var141003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var141003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var141003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var145001:
                                revert with 0, 17
                            if var151001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1747] >= stor[sha3(var153002) + var153001]:
                                mem[32] = 211
                                if var153003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var153003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var153003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var157001:
                                revert with 0, 17
                            if var163001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1747] < stor[sha3(var165002) + var165001]:
                                if not var169001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var165003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var165003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var165003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
                    if not sub_5e4651f9[idx].field_0:
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = poolList[idx].field_1024
                        mem[mem[64] + 64] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if sub_29baefff >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = idx
                    mem[32] = 210
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                        if _1337 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1762] == mem[_1762]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        if var143001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1762] >= stor[sha3(var145002) + var145001]:
                            mem[32] = 211
                            if var145003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var145003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var145003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var149001:
                            revert with 0, 17
                        if var155001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1762] >= stor[sha3(var157002) + var157001]:
                            mem[32] = 211
                            if var157003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var157003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var157003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var161001:
                            revert with 0, 17
                        if var167001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        if mem[_1762] < stor[sha3(var169002) + var169001]:
                            if not var173001:
                                revert with 0, 17
                            # nil
                        else:
                            mem[32] = 211
                            if var169003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var169003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var169003]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = poolList[idx].field_1024
                            mem[mem[64] + 64] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        mem[32] = 210
                        if 1 > !sub_29baefff:
                            revert with 0, 17
                        if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = sha3(idx, 210)
                        if _1337 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1775] == mem[_1775]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var147001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1775] >= stor[sha3(var149002) + var149001]:
                                mem[32] = 211
                                if var149003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var149003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var149003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var153001:
                                revert with 0, 17
                            if var159001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1775] >= stor[sha3(var161002) + var161001]:
                                mem[32] = 211
                                if var161003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var161003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var161003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var165001:
                                revert with 0, 17
                            if var171001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1775] < stor[sha3(var173002) + var173001]:
                                if not var177001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var173003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var173003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var173003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1337 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1781 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1781] == mem[_1781]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            if var148001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1781] >= stor[sha3(var150002) + var150001]:
                                mem[32] = 211
                                if var150003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var150003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var150003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var154001:
                                revert with 0, 17
                            if var160001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1781] >= stor[sha3(var162002) + var162001]:
                                mem[32] = 211
                                if var162003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var162003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var162003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var166001:
                                revert with 0, 17
                            if var172001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            if mem[_1781] < stor[sha3(var174002) + var174001]:
                                if not var178001:
                                    revert with 0, 17
                                # nil
                            else:
                                mem[32] = 211
                                if var174003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var174003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var174003]
                                mem[mem[64]] = idx
                                mem[mem[64] + 32] = poolList[idx].field_1024
                                mem[mem[64] + 64] = poolList[idx].field_1280
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
            if not sub_5e4651f9[arg1].field_0:
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
            if sub_29baefff >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var129001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var131002) + var131001]:
                    if var131003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var131003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var131003]
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
                if not var135001:
                    revert with 0, 17
                if var141001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var143002) + var143001]:
                    if var143003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var143003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var143003]
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
                if not var147001:
                    revert with 0, 17
                if var153001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var155002) + var155001]:
                    if not var159001:
                        revert with 0, 17
                    if var165001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var155003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var155003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var155003]
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
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    staticcall address(poolList[arg1].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var133001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var135002) + var135001]:
                        if var135003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var135003
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
                    if var145001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var147002) + var147001]:
                        if var147003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var147003
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
                    if not var151001:
                        revert with 0, 17
                    if var157001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var159002) + var159001]:
                        if not var163001:
                            revert with 0, 17
                        if var169001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var159003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var159003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var159003]
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
                    if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var134001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var136002) + var136001]:
                        if var136003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var136003
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
                    if var146001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var148002) + var148001]:
                        if var148003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var148003
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
                    if not var152001:
                        revert with 0, 17
                    if var158001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var160002) + var160001]:
                        if not var164001:
                            revert with 0, 17
                        if var170001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var160003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var160003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var160003]
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
            if not sub_5e4651f9[arg1].field_0:
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
            if sub_29baefff >= sub_5e4651f9[arg1].field_0:
                revert with 0, 50
            if sub_5e4651f9[arg1].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[arg1].field_0 - 1:
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                if sub_5e4651f9[arg1].field_0 < 1:
                    revert with 0, 17
                if var138001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var140002) + var140001]:
                    if var140003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var140003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var140003]
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
                if not var144001:
                    revert with 0, 17
                if var150001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= stor[sha3(var152002) + var152001]:
                    if var152003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var152003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var152003]
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
                if not var156001:
                    revert with 0, 17
                if var162001 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] < stor[sha3(var164002) + var164001]:
                    if not var168001:
                        revert with 0, 17
                    if var174001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    # nil
                else:
                    if var164003 >= sub_5bf56068[arg1]:
                        revert with 0, 50
                    sub_29baefff = var164003
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    poolList[arg1].field_256 = sub_5bf56068[arg1][var164003]
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
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_256:
                    if arg1 >= poolList.length:
                        revert with 0, 50
                    staticcall address(poolList[arg1].field_0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var142001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var144002) + var144001]:
                        if var144003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var144003
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
                    if var154001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var156002) + var156001]:
                        if var156003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var156003
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
                    if not var160001:
                        revert with 0, 17
                    if var166001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var168002) + var168001]:
                        if not var172001:
                            revert with 0, 17
                        if var178001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var168003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var168003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var168003]
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
                    if ext_call.return_data[0] >= sub_5e4651f9[arg1][stor212].field_0:
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
                    if sub_5e4651f9[arg1].field_0 < 1:
                        revert with 0, 17
                    if var143001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var145002) + var145001]:
                        if var145003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var145003
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
                    if var155001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] >= stor[sha3(var157002) + var157001]:
                        if var157003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var157003
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
                    if not var161001:
                        revert with 0, 17
                    if var167001 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    if ext_call.return_data[0] < stor[sha3(var169002) + var169001]:
                        if not var173001:
                            revert with 0, 17
                        if var179001 >= sub_5e4651f9[arg1].field_0:
                            revert with 0, 50
                        # nil
                    else:
                        if var169003 >= sub_5bf56068[arg1]:
                            revert with 0, 50
                        sub_29baefff = var169003
                        if arg1 >= poolList.length:
                            revert with 0, 50
                        poolList[arg1].field_256 = sub_5bf56068[arg1][var169003]
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
        _153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _154 = mem[_153]
        require mem[_153] == mem[_153]
        if not mem[_153]:
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
        if not mem[_153]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_153]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_153]
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
            if not sub_5e4651f9[idx].field_0:
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
            if sub_29baefff >= sub_5e4651f9[idx].field_0:
                revert with 0, 50
            mem[32] = 210
            if sub_5e4651f9[idx].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                if _154 >= sub_5e4651f9[idx][stor212].field_0:
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
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_187] == mem[_187]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                if var119001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_187] >= stor[sha3(var121002) + var121001]:
                    mem[32] = 211
                    if var121003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var121003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var121003]
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
                if not var125001:
                    revert with 0, 17
                if var131001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_187] >= stor[sha3(var133002) + var133001]:
                    mem[32] = 211
                    if var133003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var133003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var133003]
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
                if not var137001:
                    revert with 0, 17
                if var143001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_187] < stor[sha3(var145002) + var145001]:
                    if not var149001:
                        revert with 0, 17
                    # nil
                else:
                    mem[32] = 211
                    if var145003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var145003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var145003]
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
            else:
                mem[32] = 210
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if _154 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_196] == mem[_196]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var123001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_196] >= stor[sha3(var125002) + var125001]:
                        mem[32] = 211
                        if var125003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var125003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var125003]
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
                    if not var129001:
                        revert with 0, 17
                    if var135001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_196] >= stor[sha3(var137002) + var137001]:
                        mem[32] = 211
                        if var137003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var137003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var137003]
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
                    if not var141001:
                        revert with 0, 17
                    if var147001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_196] < stor[sha3(var149002) + var149001]:
                        if not var153001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var149003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var149003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var149003]
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
                else:
                    if _154 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_200] == mem[_200]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var124001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_200] >= stor[sha3(var126002) + var126001]:
                        mem[32] = 211
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var126003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var126003]
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
                    if not var130001:
                        revert with 0, 17
                    if var136001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_200] >= stor[sha3(var138002) + var138001]:
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var138003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var138003]
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
                    if not var142001:
                        revert with 0, 17
                    if var148001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_200] < stor[sha3(var150002) + var150001]:
                        if not var154001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var150003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var150003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var150003]
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
            if not sub_5e4651f9[idx].field_0:
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
            if sub_29baefff >= sub_5e4651f9[idx].field_0:
                revert with 0, 50
            mem[32] = 210
            if sub_5e4651f9[idx].field_0 < 1:
                revert with 0, 17
            if sub_29baefff >= sub_5e4651f9[idx].field_0 - 1:
                if _154 >= sub_5e4651f9[idx][stor212].field_0:
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
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_207] == mem[_207]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                if var128001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_207] >= stor[sha3(var130002) + var130001]:
                    mem[32] = 211
                    if var130003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var130003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var130003]
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
                if not var134001:
                    revert with 0, 17
                if var140001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_207] >= stor[sha3(var142002) + var142001]:
                    mem[32] = 211
                    if var142003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var142003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var142003]
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
                if not var146001:
                    revert with 0, 17
                if var152001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if mem[_207] < stor[sha3(var154002) + var154001]:
                    if not var158001:
                        revert with 0, 17
                    # nil
                else:
                    mem[32] = 211
                    if var154003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var154003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var154003]
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
            else:
                mem[32] = 210
                if 1 > !sub_29baefff:
                    revert with 0, 17
                if sub_29baefff + 1 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                if _154 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_215] == mem[_215]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var132001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_215] >= stor[sha3(var134002) + var134001]:
                        mem[32] = 211
                        if var134003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var134003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var134003]
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
                    if not var138001:
                        revert with 0, 17
                    if var144001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_215] >= stor[sha3(var146002) + var146001]:
                        mem[32] = 211
                        if var146003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var146003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var146003]
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
                    if not var150001:
                        revert with 0, 17
                    if var156001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_215] < stor[sha3(var158002) + var158001]:
                        if not var162001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var158003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var158003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var158003]
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
                else:
                    if _154 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _218 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_218] == mem[_218]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    if var133001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_218] >= stor[sha3(var135002) + var135001]:
                        mem[32] = 211
                        if var135003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var135003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var135003]
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
                    if not var139001:
                        revert with 0, 17
                    if var145001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_218] >= stor[sha3(var147002) + var147001]:
                        mem[32] = 211
                        if var147003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var147003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var147003]
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
                    if not var151001:
                        revert with 0, 17
                    if var157001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    if mem[_218] < stor[sha3(var159002) + var159001]:
                        if not var163001:
                            revert with 0, 17
                        # nil
                    else:
                        mem[32] = 211
                        if var159003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var159003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var159003]
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
}



}
