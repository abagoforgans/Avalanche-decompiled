contract main {




// =====================  Runtime code  =====================


#
#  - harvest(uint256 arg1, address arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - stake(uint256 arg1, uint256 arg2)
#  - sub_cdcd2907(?)
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var105003], 10, 0, 0
                if var105003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var105003].field_0, 10, 0, 0
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var117003], 10, 0, 0
                if var117003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var117003].field_0, 10, 0, 0
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var129003], 10, 0, 0
                if var129003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var129003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var109003], 10, 0, 0
                    if var109003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var109003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var121003], 10, 0, 0
                    if var121003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var121003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var133003], 10, 0, 0
                    if var133003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var133003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var110003], 10, 0, 0
                    if var110003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var110003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var122003], 10, 0, 0
                    if var122003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var122003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var134003], 10, 0, 0
                    if var134003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var134003].field_0, 10, 0, 0
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var114003], 10, 0, 0
                if var114003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var114003].field_0, 10, 0, 0
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var126003], 10, 0, 0
                if var126003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var126003].field_0, 10, 0, 0
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
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5bf56068[arg1][var138003], 10, 0, 0
                if var138003 >= sub_5e4651f9[arg1].field_0:
                    revert with 0, 50
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_5e4651f9[arg1][var138003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var118003], 10, 0, 0
                    if var118003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var118003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var130003], 10, 0, 0
                    if var130003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var130003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var142003], 10, 0, 0
                    if var142003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var142003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var119003], 10, 0, 0
                    if var119003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var119003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var131003], 10, 0, 0
                    if var131003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var131003].field_0, 10, 0, 0
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
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5bf56068[arg1][var143003], 10, 0, 0
                    if var143003 >= sub_5e4651f9[arg1].field_0:
                        revert with 0, 50
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 64, sub_5e4651f9[arg1][var143003].field_0, 10, 0, 0
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
        _423 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _424 = mem[_423]
        require mem[_423] == mem[_423]
        if not mem[_423]:
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
        if not mem[_423]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_423]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_423]
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
                if _424 >= sub_5e4651f9[idx][stor212].field_0:
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
                _453 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _459 = mem[_453]
                require mem[_453] == mem[_453]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                mem[32] = 210
                if var99001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var101002
                if _459 >= stor[sha3(var101002) + var101001]:
                    _1203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1203] = 10
                    mem[_1203 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var101003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _1218 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _1203 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var101003]
                    _1935 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_1935 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1935 + 36 len 28]
                    staticcall 'console.log'.mem[_1935 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1935 + 36 len mem[_1935] - 4]
                    mem[_1218 + 164] = 10
                    mem[_1218 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var101003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_1218 + 264] = 64
                    mem[_1218 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _1218 + 360] = mem[s + _1218 + 196]
                        s = s + 32
                        continue 
                    mem[_1218 + 370] = 0
                    mem[_1218 + 296] = sub_5e4651f9[idx][var101003].field_0
                    mem[_1218 + 228] = 132
                    mem[64] = _1218 + 392
                    mem[_1218 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var101003].field_0, 10, mem[_1218 + 360 len 10], 0
                    mem[32] = 211
                    if var101003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var101003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var101003]
                    mem[_1218 + 392] = idx
                    mem[_1218 + 424] = poolList[idx].field_1024
                    mem[_1218 + 456] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var105001:
                    revert with 0, 17
                mem[32] = 210
                if var111001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var113002
                if _459 >= stor[sha3(var113002) + var113001]:
                    _4149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4149] = 10
                    mem[_4149 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var113003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _4164 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _4149 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var113003]
                    _4881 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_4881 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4881 + 36 len 28]
                    staticcall 'console.log'.mem[_4881 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_4881 + 36 len mem[_4881] - 4]
                    mem[_4164 + 164] = 10
                    mem[_4164 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var113003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_4164 + 264] = 64
                    mem[_4164 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _4164 + 360] = mem[s + _4164 + 196]
                        s = s + 32
                        continue 
                    mem[_4164 + 370] = 0
                    mem[_4164 + 296] = sub_5e4651f9[idx][var113003].field_0
                    mem[_4164 + 228] = 132
                    mem[64] = _4164 + 392
                    mem[_4164 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var113003].field_0, 10, mem[_4164 + 360 len 10], 0
                    mem[32] = 211
                    if var113003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var113003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var113003]
                    mem[_4164 + 392] = idx
                    mem[_4164 + 424] = poolList[idx].field_1024
                    mem[_4164 + 456] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var117001:
                    revert with 0, 17
                mem[32] = 210
                if var123001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var125002
                if _459 < stor[sha3(var125002) + var125001]:
                    if not var129001:
                        revert with 0, 17
                    # nil
                else:
                    _7095 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7095] = 10
                    mem[_7095 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var125003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _7110 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _7095 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var125003]
                    _7827 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_7827 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7827 + 36 len 28]
                    staticcall 'console.log'.mem[_7827 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_7827 + 36 len mem[_7827] - 4]
                    mem[_7110 + 164] = 10
                    mem[_7110 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var125003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_7110 + 264] = 64
                    mem[_7110 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _7110 + 360] = mem[s + _7110 + 196]
                        s = s + 32
                        continue 
                    mem[_7110 + 370] = 0
                    mem[_7110 + 296] = sub_5e4651f9[idx][var125003].field_0
                    mem[_7110 + 228] = 132
                    mem[64] = _7110 + 392
                    mem[_7110 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var125003].field_0, 10, mem[_7110 + 360 len 10], 0
                    mem[32] = 211
                    if var125003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var125003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var125003]
                    mem[_7110 + 392] = idx
                    mem[_7110 + 424] = poolList[idx].field_1024
                    mem[_7110 + 456] = poolList[idx].field_1280
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
                if _424 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _470 = mem[_462]
                    require mem[_462] == mem[_462]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var103001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var105002
                    if _470 >= stor[sha3(var105002) + var105001]:
                        _1207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1207] = 10
                        mem[_1207 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var105003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1220 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1207 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var105003]
                        _1945 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1945 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1945 + 36 len 28]
                        staticcall 'console.log'.mem[_1945 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1945 + 36 len mem[_1945] - 4]
                        mem[_1220 + 164] = 10
                        mem[_1220 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var105003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1220 + 264] = 64
                        mem[_1220 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1220 + 360] = mem[s + _1220 + 196]
                            s = s + 32
                            continue 
                        mem[_1220 + 370] = 0
                        mem[_1220 + 296] = sub_5e4651f9[idx][var105003].field_0
                        mem[_1220 + 228] = 132
                        mem[64] = _1220 + 392
                        mem[_1220 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var105003].field_0, 10, mem[_1220 + 360 len 10], 0
                        mem[32] = 211
                        if var105003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var105003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var105003]
                        mem[_1220 + 392] = idx
                        mem[_1220 + 424] = poolList[idx].field_1024
                        mem[_1220 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var109001:
                        revert with 0, 17
                    mem[32] = 210
                    if var115001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var117002
                    if _470 >= stor[sha3(var117002) + var117001]:
                        _4153 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4153] = 10
                        mem[_4153 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var117003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4166 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4153 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var117003]
                        _4891 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_4891 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4891 + 36 len 28]
                        staticcall 'console.log'.mem[_4891 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_4891 + 36 len mem[_4891] - 4]
                        mem[_4166 + 164] = 10
                        mem[_4166 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var117003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4166 + 264] = 64
                        mem[_4166 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4166 + 360] = mem[s + _4166 + 196]
                            s = s + 32
                            continue 
                        mem[_4166 + 370] = 0
                        mem[_4166 + 296] = sub_5e4651f9[idx][var117003].field_0
                        mem[_4166 + 228] = 132
                        mem[64] = _4166 + 392
                        mem[_4166 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var117003].field_0, 10, mem[_4166 + 360 len 10], 0
                        mem[32] = 211
                        if var117003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var117003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var117003]
                        mem[_4166 + 392] = idx
                        mem[_4166 + 424] = poolList[idx].field_1024
                        mem[_4166 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var121001:
                        revert with 0, 17
                    mem[32] = 210
                    if var127001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var129002
                    if _470 < stor[sha3(var129002) + var129001]:
                        if not var133001:
                            revert with 0, 17
                        # nil
                    else:
                        _7099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7099] = 10
                        mem[_7099 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var129003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _7112 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _7099 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var129003]
                        _7837 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_7837 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7837 + 36 len 28]
                        staticcall 'console.log'.mem[_7837 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_7837 + 36 len mem[_7837] - 4]
                        mem[_7112 + 164] = 10
                        mem[_7112 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var129003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_7112 + 264] = 64
                        mem[_7112 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _7112 + 360] = mem[s + _7112 + 196]
                            s = s + 32
                            continue 
                        mem[_7112 + 370] = 0
                        mem[_7112 + 296] = sub_5e4651f9[idx][var129003].field_0
                        mem[_7112 + 228] = 132
                        mem[64] = _7112 + 392
                        mem[_7112 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var129003].field_0, 10, mem[_7112 + 360 len 10], 0
                        mem[32] = 211
                        if var129003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var129003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var129003]
                        mem[_7112 + 392] = idx
                        mem[_7112 + 424] = poolList[idx].field_1024
                        mem[_7112 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if _424 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _466 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _472 = mem[_466]
                    require mem[_466] == mem[_466]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var104001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var106002
                    if _472 >= stor[sha3(var106002) + var106001]:
                        _1205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1205] = 10
                        mem[_1205 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var106003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1219 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1205 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var106003]
                        _1940 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1940 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1940 + 36 len 28]
                        staticcall 'console.log'.mem[_1940 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1940 + 36 len mem[_1940] - 4]
                        mem[_1219 + 164] = 10
                        mem[_1219 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var106003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1219 + 264] = 64
                        mem[_1219 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1219 + 360] = mem[s + _1219 + 196]
                            s = s + 32
                            continue 
                        mem[_1219 + 370] = 0
                        mem[_1219 + 296] = sub_5e4651f9[idx][var106003].field_0
                        mem[_1219 + 228] = 132
                        mem[64] = _1219 + 392
                        mem[_1219 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var106003].field_0, 10, mem[_1219 + 360 len 10], 0
                        mem[32] = 211
                        if var106003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var106003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var106003]
                        mem[_1219 + 392] = idx
                        mem[_1219 + 424] = poolList[idx].field_1024
                        mem[_1219 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var110001:
                        revert with 0, 17
                    mem[32] = 210
                    if var116001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var118002
                    if _472 >= stor[sha3(var118002) + var118001]:
                        _4151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4151] = 10
                        mem[_4151 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var118003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4165 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4151 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var118003]
                        _4886 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_4886 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4886 + 36 len 28]
                        staticcall 'console.log'.mem[_4886 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_4886 + 36 len mem[_4886] - 4]
                        mem[_4165 + 164] = 10
                        mem[_4165 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var118003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4165 + 264] = 64
                        mem[_4165 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4165 + 360] = mem[s + _4165 + 196]
                            s = s + 32
                            continue 
                        mem[_4165 + 370] = 0
                        mem[_4165 + 296] = sub_5e4651f9[idx][var118003].field_0
                        mem[_4165 + 228] = 132
                        mem[64] = _4165 + 392
                        mem[_4165 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var118003].field_0, 10, mem[_4165 + 360 len 10], 0
                        mem[32] = 211
                        if var118003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var118003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var118003]
                        mem[_4165 + 392] = idx
                        mem[_4165 + 424] = poolList[idx].field_1024
                        mem[_4165 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var122001:
                        revert with 0, 17
                    mem[32] = 210
                    if var128001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var130002
                    if _472 < stor[sha3(var130002) + var130001]:
                        if not var134001:
                            revert with 0, 17
                        # nil
                    else:
                        _7097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7097] = 10
                        mem[_7097 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var130003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _7111 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _7097 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var130003]
                        _7832 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_7832 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7832 + 36 len 28]
                        staticcall 'console.log'.mem[_7832 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_7832 + 36 len mem[_7832] - 4]
                        mem[_7111 + 164] = 10
                        mem[_7111 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var130003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_7111 + 264] = 64
                        mem[_7111 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _7111 + 360] = mem[s + _7111 + 196]
                            s = s + 32
                            continue 
                        mem[_7111 + 370] = 0
                        mem[_7111 + 296] = sub_5e4651f9[idx][var130003].field_0
                        mem[_7111 + 228] = 132
                        mem[64] = _7111 + 392
                        mem[_7111 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var130003].field_0, 10, mem[_7111 + 360 len 10], 0
                        mem[32] = 211
                        if var130003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var130003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var130003]
                        mem[_7111 + 392] = idx
                        mem[_7111 + 424] = poolList[idx].field_1024
                        mem[_7111 + 456] = poolList[idx].field_1280
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
                if _424 >= sub_5e4651f9[idx][stor212].field_0:
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
                _473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _476 = mem[_473]
                require mem[_473] == mem[_473]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                mem[32] = 210
                if var108001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var110002
                if _476 >= stor[sha3(var110002) + var110001]:
                    _1197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1197] = 10
                    mem[_1197 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var110003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _1215 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _1197 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var110003]
                    _1920 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_1920 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1920 + 36 len 28]
                    staticcall 'console.log'.mem[_1920 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_1920 + 36 len mem[_1920] - 4]
                    mem[_1215 + 164] = 10
                    mem[_1215 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var110003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_1215 + 264] = 64
                    mem[_1215 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _1215 + 360] = mem[s + _1215 + 196]
                        s = s + 32
                        continue 
                    mem[_1215 + 370] = 0
                    mem[_1215 + 296] = sub_5e4651f9[idx][var110003].field_0
                    mem[_1215 + 228] = 132
                    mem[64] = _1215 + 392
                    mem[_1215 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var110003].field_0, 10, mem[_1215 + 360 len 10], 0
                    mem[32] = 211
                    if var110003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var110003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var110003]
                    mem[_1215 + 392] = idx
                    mem[_1215 + 424] = poolList[idx].field_1024
                    mem[_1215 + 456] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var114001:
                    revert with 0, 17
                mem[32] = 210
                if var120001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var122002
                if _476 >= stor[sha3(var122002) + var122001]:
                    _4143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4143] = 10
                    mem[_4143 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var122003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _4161 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _4143 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var122003]
                    _4866 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_4866 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4866 + 36 len 28]
                    staticcall 'console.log'.mem[_4866 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_4866 + 36 len mem[_4866] - 4]
                    mem[_4161 + 164] = 10
                    mem[_4161 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var122003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_4161 + 264] = 64
                    mem[_4161 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _4161 + 360] = mem[s + _4161 + 196]
                        s = s + 32
                        continue 
                    mem[_4161 + 370] = 0
                    mem[_4161 + 296] = sub_5e4651f9[idx][var122003].field_0
                    mem[_4161 + 228] = 132
                    mem[64] = _4161 + 392
                    mem[_4161 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var122003].field_0, 10, mem[_4161 + 360 len 10], 0
                    mem[32] = 211
                    if var122003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var122003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var122003]
                    mem[_4161 + 392] = idx
                    mem[_4161 + 424] = poolList[idx].field_1024
                    mem[_4161 + 456] = poolList[idx].field_1280
                    emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not var126001:
                    revert with 0, 17
                mem[32] = 210
                if var132001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var134002
                if _476 < stor[sha3(var134002) + var134001]:
                    if not var138001:
                        revert with 0, 17
                    # nil
                else:
                    _7089 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7089] = 10
                    mem[_7089 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var134003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _7107 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _7089 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var134003]
                    _7812 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_7812 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7812 + 36 len 28]
                    staticcall 'console.log'.mem[_7812 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_7812 + 36 len mem[_7812] - 4]
                    mem[_7107 + 164] = 10
                    mem[_7107 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var134003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_7107 + 264] = 64
                    mem[_7107 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _7107 + 360] = mem[s + _7107 + 196]
                        s = s + 32
                        continue 
                    mem[_7107 + 370] = 0
                    mem[_7107 + 296] = sub_5e4651f9[idx][var134003].field_0
                    mem[_7107 + 228] = 132
                    mem[64] = _7107 + 392
                    mem[_7107 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var134003].field_0, 10, mem[_7107 + 360 len 10], 0
                    mem[32] = 211
                    if var134003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var134003
                    if idx >= poolList.length:
                        revert with 0, 50
                    mem[0] = 205
                    poolList[idx].field_256 = sub_5bf56068[idx][var134003]
                    mem[_7107 + 392] = idx
                    mem[_7107 + 424] = poolList[idx].field_1024
                    mem[_7107 + 456] = poolList[idx].field_1280
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
                if _424 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _479 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _488 = mem[_479]
                    require mem[_479] == mem[_479]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var112001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var114002
                    if _488 >= stor[sha3(var114002) + var114001]:
                        _1201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1201] = 10
                        mem[_1201 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var114003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1217 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1201 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var114003]
                        _1930 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1930 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1930 + 36 len 28]
                        staticcall 'console.log'.mem[_1930 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1930 + 36 len mem[_1930] - 4]
                        mem[_1217 + 164] = 10
                        mem[_1217 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var114003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1217 + 264] = 64
                        mem[_1217 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1217 + 360] = mem[s + _1217 + 196]
                            s = s + 32
                            continue 
                        mem[_1217 + 370] = 0
                        mem[_1217 + 296] = sub_5e4651f9[idx][var114003].field_0
                        mem[_1217 + 228] = 132
                        mem[64] = _1217 + 392
                        mem[_1217 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var114003].field_0, 10, mem[_1217 + 360 len 10], 0
                        mem[32] = 211
                        if var114003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var114003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var114003]
                        mem[_1217 + 392] = idx
                        mem[_1217 + 424] = poolList[idx].field_1024
                        mem[_1217 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var118001:
                        revert with 0, 17
                    mem[32] = 210
                    if var124001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var126002
                    if _488 >= stor[sha3(var126002) + var126001]:
                        _4147 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4147] = 10
                        mem[_4147 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4163 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4147 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var126003]
                        _4876 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_4876 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4876 + 36 len 28]
                        staticcall 'console.log'.mem[_4876 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_4876 + 36 len mem[_4876] - 4]
                        mem[_4163 + 164] = 10
                        mem[_4163 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var126003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4163 + 264] = 64
                        mem[_4163 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4163 + 360] = mem[s + _4163 + 196]
                            s = s + 32
                            continue 
                        mem[_4163 + 370] = 0
                        mem[_4163 + 296] = sub_5e4651f9[idx][var126003].field_0
                        mem[_4163 + 228] = 132
                        mem[64] = _4163 + 392
                        mem[_4163 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var126003].field_0, 10, mem[_4163 + 360 len 10], 0
                        mem[32] = 211
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var126003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var126003]
                        mem[_4163 + 392] = idx
                        mem[_4163 + 424] = poolList[idx].field_1024
                        mem[_4163 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var130001:
                        revert with 0, 17
                    mem[32] = 210
                    if var136001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var138002
                    if _488 < stor[sha3(var138002) + var138001]:
                        if not var142001:
                            revert with 0, 17
                        # nil
                    else:
                        _7093 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7093] = 10
                        mem[_7093 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _7109 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _7093 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var138003]
                        _7822 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_7822 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7822 + 36 len 28]
                        staticcall 'console.log'.mem[_7822 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_7822 + 36 len mem[_7822] - 4]
                        mem[_7109 + 164] = 10
                        mem[_7109 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var138003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_7109 + 264] = 64
                        mem[_7109 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _7109 + 360] = mem[s + _7109 + 196]
                            s = s + 32
                            continue 
                        mem[_7109 + 370] = 0
                        mem[_7109 + 296] = sub_5e4651f9[idx][var138003].field_0
                        mem[_7109 + 228] = 132
                        mem[64] = _7109 + 392
                        mem[_7109 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var138003].field_0, 10, mem[_7109 + 360 len 10], 0
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var138003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var138003]
                        mem[_7109 + 392] = idx
                        mem[_7109 + 424] = poolList[idx].field_1024
                        mem[_7109 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if _424 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _482 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _490 = mem[_482]
                    require mem[_482] == mem[_482]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var113001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var115002
                    if _490 >= stor[sha3(var115002) + var115001]:
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 10
                        mem[_1199 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var115003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1216 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1199 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var115003]
                        _1925 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_1925 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_1925 + 36 len 28]
                        staticcall 'console.log'.mem[_1925 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_1925 + 36 len mem[_1925] - 4]
                        mem[_1216 + 164] = 10
                        mem[_1216 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var115003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1216 + 264] = 64
                        mem[_1216 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1216 + 360] = mem[s + _1216 + 196]
                            s = s + 32
                            continue 
                        mem[_1216 + 370] = 0
                        mem[_1216 + 296] = sub_5e4651f9[idx][var115003].field_0
                        mem[_1216 + 228] = 132
                        mem[64] = _1216 + 392
                        mem[_1216 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var115003].field_0, 10, mem[_1216 + 360 len 10], 0
                        mem[32] = 211
                        if var115003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var115003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var115003]
                        mem[_1216 + 392] = idx
                        mem[_1216 + 424] = poolList[idx].field_1024
                        mem[_1216 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var119001:
                        revert with 0, 17
                    mem[32] = 210
                    if var125001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var127002
                    if _490 >= stor[sha3(var127002) + var127001]:
                        _4145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4145] = 10
                        mem[_4145 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var127003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4162 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4145 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var127003]
                        _4871 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_4871 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4871 + 36 len 28]
                        staticcall 'console.log'.mem[_4871 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_4871 + 36 len mem[_4871] - 4]
                        mem[_4162 + 164] = 10
                        mem[_4162 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var127003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4162 + 264] = 64
                        mem[_4162 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4162 + 360] = mem[s + _4162 + 196]
                            s = s + 32
                            continue 
                        mem[_4162 + 370] = 0
                        mem[_4162 + 296] = sub_5e4651f9[idx][var127003].field_0
                        mem[_4162 + 228] = 132
                        mem[64] = _4162 + 392
                        mem[_4162 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var127003].field_0, 10, mem[_4162 + 360 len 10], 0
                        mem[32] = 211
                        if var127003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var127003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var127003]
                        mem[_4162 + 392] = idx
                        mem[_4162 + 424] = poolList[idx].field_1024
                        mem[_4162 + 456] = poolList[idx].field_1280
                        emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not var131001:
                        revert with 0, 17
                    mem[32] = 210
                    if var137001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var139002
                    if _490 < stor[sha3(var139002) + var139001]:
                        if not var143001:
                            revert with 0, 17
                        # nil
                    else:
                        _7091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7091] = 10
                        mem[_7091 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var139003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _7108 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _7091 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var139003]
                        _7817 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_7817 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_7817 + 36 len 28]
                        staticcall 'console.log'.mem[_7817 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_7817 + 36 len mem[_7817] - 4]
                        mem[_7108 + 164] = 10
                        mem[_7108 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var139003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_7108 + 264] = 64
                        mem[_7108 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _7108 + 360] = mem[s + _7108 + 196]
                            s = s + 32
                            continue 
                        mem[_7108 + 370] = 0
                        mem[_7108 + 296] = sub_5e4651f9[idx][var139003].field_0
                        mem[_7108 + 228] = 132
                        mem[64] = _7108 + 392
                        mem[_7108 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var139003].field_0, 10, mem[_7108 + 360 len 10], 0
                        mem[32] = 211
                        if var139003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var139003
                        if idx >= poolList.length:
                            revert with 0, 50
                        mem[0] = 205
                        poolList[idx].field_256 = sub_5bf56068[idx][var139003]
                        mem[_7108 + 392] = idx
                        mem[_7108 + 424] = poolList[idx].field_1024
                        mem[_7108 + 456] = poolList[idx].field_1280
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
                _1020 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1022 = mem[_1020]
                require mem[_1020] == mem[_1020]
                if not mem[_1020]:
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
                if not mem[_1020]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1020]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1020]
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
                        if _1022 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1087 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1099 = mem[_1087]
                        require mem[_1087] == mem[_1087]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        mem[32] = 210
                        if var139001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var141002
                        if _1099 >= stor[sha3(var141002) + var141001]:
                            _2582 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2582] = 10
                            mem[_2582 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var141003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _2615 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _2582 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var141003]
                            _4034 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_4034 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4034 + 36 len 28]
                            staticcall 'console.log'.mem[_4034 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_4034 + 36 len mem[_4034] - 4]
                            mem[_2615 + 164] = 10
                            mem[_2615 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var141003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_2615 + 264] = 64
                            mem[_2615 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _2615 + 360] = mem[s + _2615 + 196]
                                s = s + 32
                                continue 
                            mem[_2615 + 370] = 0
                            mem[_2615 + 296] = sub_5e4651f9[idx][var141003].field_0
                            mem[_2615 + 228] = 132
                            mem[64] = _2615 + 392
                            mem[_2615 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var141003].field_0, 10, mem[_2615 + 360 len 10], 0
                            mem[32] = 211
                            if var141003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var141003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var141003]
                            mem[_2615 + 392] = idx
                            mem[_2615 + 424] = poolList[idx].field_1024
                            mem[_2615 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var145001:
                            revert with 0, 17
                        mem[32] = 210
                        if var151001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var153002
                        if _1099 >= stor[sha3(var153002) + var153001]:
                            _8474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8474] = 10
                            mem[_8474 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var153003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _8507 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _8474 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var153003]
                            _9926 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_9926 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9926 + 36 len 28]
                            staticcall 'console.log'.mem[_9926 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_9926 + 36 len mem[_9926] - 4]
                            mem[_8507 + 164] = 10
                            mem[_8507 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var153003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_8507 + 264] = 64
                            mem[_8507 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _8507 + 360] = mem[s + _8507 + 196]
                                s = s + 32
                                continue 
                            mem[_8507 + 370] = 0
                            mem[_8507 + 296] = sub_5e4651f9[idx][var153003].field_0
                            mem[_8507 + 228] = 132
                            mem[64] = _8507 + 392
                            mem[_8507 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var153003].field_0, 10, mem[_8507 + 360 len 10], 0
                            mem[32] = 211
                            if var153003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var153003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var153003]
                            mem[_8507 + 392] = idx
                            mem[_8507 + 424] = poolList[idx].field_1024
                            mem[_8507 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var157001:
                            revert with 0, 17
                        mem[32] = 210
                        if var163001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var165002
                        if _1099 < stor[sha3(var165002) + var165001]:
                            if not var169001:
                                revert with 0, 17
                            # nil
                        else:
                            _14366 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14366] = 10
                            mem[_14366 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var165003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _14399 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _14366 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var165003]
                            _15818 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_15818 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15818 + 36 len 28]
                            staticcall 'console.log'.mem[_15818 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_15818 + 36 len mem[_15818] - 4]
                            mem[_14399 + 164] = 10
                            mem[_14399 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var165003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_14399 + 264] = 64
                            mem[_14399 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _14399 + 360] = mem[s + _14399 + 196]
                                s = s + 32
                                continue 
                            mem[_14399 + 370] = 0
                            mem[_14399 + 296] = sub_5e4651f9[idx][var165003].field_0
                            mem[_14399 + 228] = 132
                            mem[64] = _14399 + 392
                            mem[_14399 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var165003].field_0, 10, mem[_14399 + 360 len 10], 0
                            mem[32] = 211
                            if var165003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var165003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var165003]
                            mem[_14399 + 392] = idx
                            mem[_14399 + 424] = poolList[idx].field_1024
                            mem[_14399 + 456] = poolList[idx].field_1280
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
                        if _1022 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1105 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1121 = mem[_1105]
                            require mem[_1105] == mem[_1105]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var143001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var145002
                            if _1121 >= stor[sha3(var145002) + var145001]:
                                _2586 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2586] = 10
                                mem[_2586 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var145003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2617 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2586 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var145003]
                                _4044 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4044 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4044 + 36 len 28]
                                staticcall 'console.log'.mem[_4044 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4044 + 36 len mem[_4044] - 4]
                                mem[_2617 + 164] = 10
                                mem[_2617 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var145003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2617 + 264] = 64
                                mem[_2617 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2617 + 360] = mem[s + _2617 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2617 + 370] = 0
                                mem[_2617 + 296] = sub_5e4651f9[idx][var145003].field_0
                                mem[_2617 + 228] = 132
                                mem[64] = _2617 + 392
                                mem[_2617 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var145003].field_0, 10, mem[_2617 + 360 len 10], 0
                                mem[32] = 211
                                if var145003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var145003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var145003]
                                mem[_2617 + 392] = idx
                                mem[_2617 + 424] = poolList[idx].field_1024
                                mem[_2617 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var149001:
                                revert with 0, 17
                            mem[32] = 210
                            if var155001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var157002
                            if _1121 >= stor[sha3(var157002) + var157001]:
                                _8478 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8478] = 10
                                mem[_8478 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var157003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8509 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8478 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var157003]
                                _9936 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9936 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9936 + 36 len 28]
                                staticcall 'console.log'.mem[_9936 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9936 + 36 len mem[_9936] - 4]
                                mem[_8509 + 164] = 10
                                mem[_8509 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var157003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8509 + 264] = 64
                                mem[_8509 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8509 + 360] = mem[s + _8509 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8509 + 370] = 0
                                mem[_8509 + 296] = sub_5e4651f9[idx][var157003].field_0
                                mem[_8509 + 228] = 132
                                mem[64] = _8509 + 392
                                mem[_8509 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var157003].field_0, 10, mem[_8509 + 360 len 10], 0
                                mem[32] = 211
                                if var157003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var157003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var157003]
                                mem[_8509 + 392] = idx
                                mem[_8509 + 424] = poolList[idx].field_1024
                                mem[_8509 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var161001:
                                revert with 0, 17
                            mem[32] = 210
                            if var167001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var169002
                            if _1121 < stor[sha3(var169002) + var169001]:
                                if not var173001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14370 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14370] = 10
                                mem[_14370 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var169003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14401 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14370 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var169003]
                                _15828 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15828 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15828 + 36 len 28]
                                staticcall 'console.log'.mem[_15828 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15828 + 36 len mem[_15828] - 4]
                                mem[_14401 + 164] = 10
                                mem[_14401 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var169003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14401 + 264] = 64
                                mem[_14401 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14401 + 360] = mem[s + _14401 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14401 + 370] = 0
                                mem[_14401 + 296] = sub_5e4651f9[idx][var169003].field_0
                                mem[_14401 + 228] = 132
                                mem[64] = _14401 + 392
                                mem[_14401 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var169003].field_0, 10, mem[_14401 + 360 len 10], 0
                                mem[32] = 211
                                if var169003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var169003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var169003]
                                mem[_14401 + 392] = idx
                                mem[_14401 + 424] = poolList[idx].field_1024
                                mem[_14401 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1022 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1111 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1125 = mem[_1111]
                            require mem[_1111] == mem[_1111]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var144001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var146002
                            if _1125 >= stor[sha3(var146002) + var146001]:
                                _2584 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2584] = 10
                                mem[_2584 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2616 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2584 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var146003]
                                _4039 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4039 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4039 + 36 len 28]
                                staticcall 'console.log'.mem[_4039 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4039 + 36 len mem[_4039] - 4]
                                mem[_2616 + 164] = 10
                                mem[_2616 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var146003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2616 + 264] = 64
                                mem[_2616 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2616 + 360] = mem[s + _2616 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2616 + 370] = 0
                                mem[_2616 + 296] = sub_5e4651f9[idx][var146003].field_0
                                mem[_2616 + 228] = 132
                                mem[64] = _2616 + 392
                                mem[_2616 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var146003].field_0, 10, mem[_2616 + 360 len 10], 0
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var146003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                                mem[_2616 + 392] = idx
                                mem[_2616 + 424] = poolList[idx].field_1024
                                mem[_2616 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var150001:
                                revert with 0, 17
                            mem[32] = 210
                            if var156001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var158002
                            if _1125 >= stor[sha3(var158002) + var158001]:
                                _8476 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8476] = 10
                                mem[_8476 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8508 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8476 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var158003]
                                _9931 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9931 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9931 + 36 len 28]
                                staticcall 'console.log'.mem[_9931 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9931 + 36 len mem[_9931] - 4]
                                mem[_8508 + 164] = 10
                                mem[_8508 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var158003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8508 + 264] = 64
                                mem[_8508 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8508 + 360] = mem[s + _8508 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8508 + 370] = 0
                                mem[_8508 + 296] = sub_5e4651f9[idx][var158003].field_0
                                mem[_8508 + 228] = 132
                                mem[64] = _8508 + 392
                                mem[_8508 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var158003].field_0, 10, mem[_8508 + 360 len 10], 0
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var158003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                                mem[_8508 + 392] = idx
                                mem[_8508 + 424] = poolList[idx].field_1024
                                mem[_8508 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var162001:
                                revert with 0, 17
                            mem[32] = 210
                            if var168001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var170002
                            if _1125 < stor[sha3(var170002) + var170001]:
                                if not var174001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14368 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14368] = 10
                                mem[_14368 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14400 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14368 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var170003]
                                _15823 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15823 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15823 + 36 len 28]
                                staticcall 'console.log'.mem[_15823 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15823 + 36 len mem[_15823] - 4]
                                mem[_14400 + 164] = 10
                                mem[_14400 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var170003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14400 + 264] = 64
                                mem[_14400 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14400 + 360] = mem[s + _14400 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14400 + 370] = 0
                                mem[_14400 + 296] = sub_5e4651f9[idx][var170003].field_0
                                mem[_14400 + 228] = 132
                                mem[64] = _14400 + 392
                                mem[_14400 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var170003].field_0, 10, mem[_14400 + 360 len 10], 0
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var170003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var170003]
                                mem[_14400 + 392] = idx
                                mem[_14400 + 424] = poolList[idx].field_1024
                                mem[_14400 + 456] = poolList[idx].field_1280
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
                        if _1022 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1134 = mem[_1128]
                        require mem[_1128] == mem[_1128]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        mem[32] = 210
                        if var148001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var150002
                        if _1134 >= stor[sha3(var150002) + var150001]:
                            _2576 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2576] = 10
                            mem[_2576 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var150003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _2612 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _2576 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var150003]
                            _4019 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_4019 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4019 + 36 len 28]
                            staticcall 'console.log'.mem[_4019 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_4019 + 36 len mem[_4019] - 4]
                            mem[_2612 + 164] = 10
                            mem[_2612 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var150003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_2612 + 264] = 64
                            mem[_2612 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _2612 + 360] = mem[s + _2612 + 196]
                                s = s + 32
                                continue 
                            mem[_2612 + 370] = 0
                            mem[_2612 + 296] = sub_5e4651f9[idx][var150003].field_0
                            mem[_2612 + 228] = 132
                            mem[64] = _2612 + 392
                            mem[_2612 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var150003].field_0, 10, mem[_2612 + 360 len 10], 0
                            mem[32] = 211
                            if var150003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var150003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var150003]
                            mem[_2612 + 392] = idx
                            mem[_2612 + 424] = poolList[idx].field_1024
                            mem[_2612 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var154001:
                            revert with 0, 17
                        mem[32] = 210
                        if var160001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var162002
                        if _1134 >= stor[sha3(var162002) + var162001]:
                            _8468 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8468] = 10
                            mem[_8468 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var162003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _8504 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _8468 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var162003]
                            _9911 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_9911 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9911 + 36 len 28]
                            staticcall 'console.log'.mem[_9911 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_9911 + 36 len mem[_9911] - 4]
                            mem[_8504 + 164] = 10
                            mem[_8504 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var162003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_8504 + 264] = 64
                            mem[_8504 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _8504 + 360] = mem[s + _8504 + 196]
                                s = s + 32
                                continue 
                            mem[_8504 + 370] = 0
                            mem[_8504 + 296] = sub_5e4651f9[idx][var162003].field_0
                            mem[_8504 + 228] = 132
                            mem[64] = _8504 + 392
                            mem[_8504 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var162003].field_0, 10, mem[_8504 + 360 len 10], 0
                            mem[32] = 211
                            if var162003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var162003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var162003]
                            mem[_8504 + 392] = idx
                            mem[_8504 + 424] = poolList[idx].field_1024
                            mem[_8504 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var166001:
                            revert with 0, 17
                        mem[32] = 210
                        if var172001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var174002
                        if _1134 < stor[sha3(var174002) + var174001]:
                            if not var178001:
                                revert with 0, 17
                            # nil
                        else:
                            _14360 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14360] = 10
                            mem[_14360 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var174003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _14396 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _14360 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var174003]
                            _15803 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_15803 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15803 + 36 len 28]
                            staticcall 'console.log'.mem[_15803 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_15803 + 36 len mem[_15803] - 4]
                            mem[_14396 + 164] = 10
                            mem[_14396 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var174003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_14396 + 264] = 64
                            mem[_14396 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _14396 + 360] = mem[s + _14396 + 196]
                                s = s + 32
                                continue 
                            mem[_14396 + 370] = 0
                            mem[_14396 + 296] = sub_5e4651f9[idx][var174003].field_0
                            mem[_14396 + 228] = 132
                            mem[64] = _14396 + 392
                            mem[_14396 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var174003].field_0, 10, mem[_14396 + 360 len 10], 0
                            mem[32] = 211
                            if var174003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var174003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var174003]
                            mem[_14396 + 392] = idx
                            mem[_14396 + 424] = poolList[idx].field_1024
                            mem[_14396 + 456] = poolList[idx].field_1280
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
                        if _1022 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1139 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1157 = mem[_1139]
                            require mem[_1139] == mem[_1139]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var152001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var154002
                            if _1157 >= stor[sha3(var154002) + var154001]:
                                _2580 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2580] = 10
                                mem[_2580 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var154003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2614 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2580 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var154003]
                                _4029 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4029 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4029 + 36 len 28]
                                staticcall 'console.log'.mem[_4029 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4029 + 36 len mem[_4029] - 4]
                                mem[_2614 + 164] = 10
                                mem[_2614 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var154003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2614 + 264] = 64
                                mem[_2614 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2614 + 360] = mem[s + _2614 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2614 + 370] = 0
                                mem[_2614 + 296] = sub_5e4651f9[idx][var154003].field_0
                                mem[_2614 + 228] = 132
                                mem[64] = _2614 + 392
                                mem[_2614 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var154003].field_0, 10, mem[_2614 + 360 len 10], 0
                                mem[32] = 211
                                if var154003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var154003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var154003]
                                mem[_2614 + 392] = idx
                                mem[_2614 + 424] = poolList[idx].field_1024
                                mem[_2614 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var158001:
                                revert with 0, 17
                            mem[32] = 210
                            if var164001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var166002
                            if _1157 >= stor[sha3(var166002) + var166001]:
                                _8472 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8472] = 10
                                mem[_8472 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var166003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8506 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8472 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var166003]
                                _9921 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9921 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9921 + 36 len 28]
                                staticcall 'console.log'.mem[_9921 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9921 + 36 len mem[_9921] - 4]
                                mem[_8506 + 164] = 10
                                mem[_8506 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var166003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8506 + 264] = 64
                                mem[_8506 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8506 + 360] = mem[s + _8506 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8506 + 370] = 0
                                mem[_8506 + 296] = sub_5e4651f9[idx][var166003].field_0
                                mem[_8506 + 228] = 132
                                mem[64] = _8506 + 392
                                mem[_8506 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var166003].field_0, 10, mem[_8506 + 360 len 10], 0
                                mem[32] = 211
                                if var166003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var166003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var166003]
                                mem[_8506 + 392] = idx
                                mem[_8506 + 424] = poolList[idx].field_1024
                                mem[_8506 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var170001:
                                revert with 0, 17
                            mem[32] = 210
                            if var176001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var178002
                            if _1157 < stor[sha3(var178002) + var178001]:
                                if not var182001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14364 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14364] = 10
                                mem[_14364 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var178003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14398 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14364 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var178003]
                                _15813 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15813 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15813 + 36 len 28]
                                staticcall 'console.log'.mem[_15813 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15813 + 36 len mem[_15813] - 4]
                                mem[_14398 + 164] = 10
                                mem[_14398 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var178003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14398 + 264] = 64
                                mem[_14398 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14398 + 360] = mem[s + _14398 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14398 + 370] = 0
                                mem[_14398 + 296] = sub_5e4651f9[idx][var178003].field_0
                                mem[_14398 + 228] = 132
                                mem[64] = _14398 + 392
                                mem[_14398 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var178003].field_0, 10, mem[_14398 + 360 len 10], 0
                                mem[32] = 211
                                if var178003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var178003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var178003]
                                mem[_14398 + 392] = idx
                                mem[_14398 + 424] = poolList[idx].field_1024
                                mem[_14398 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1022 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1146 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1162 = mem[_1146]
                            require mem[_1146] == mem[_1146]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var153001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var155002
                            if _1162 >= stor[sha3(var155002) + var155001]:
                                _2578 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2578] = 10
                                mem[_2578 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2613 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2578 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var155003]
                                _4024 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4024 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4024 + 36 len 28]
                                staticcall 'console.log'.mem[_4024 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4024 + 36 len mem[_4024] - 4]
                                mem[_2613 + 164] = 10
                                mem[_2613 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var155003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2613 + 264] = 64
                                mem[_2613 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2613 + 360] = mem[s + _2613 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2613 + 370] = 0
                                mem[_2613 + 296] = sub_5e4651f9[idx][var155003].field_0
                                mem[_2613 + 228] = 132
                                mem[64] = _2613 + 392
                                mem[_2613 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var155003].field_0, 10, mem[_2613 + 360 len 10], 0
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var155003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var155003]
                                mem[_2613 + 392] = idx
                                mem[_2613 + 424] = poolList[idx].field_1024
                                mem[_2613 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var159001:
                                revert with 0, 17
                            mem[32] = 210
                            if var165001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var167002
                            if _1162 >= stor[sha3(var167002) + var167001]:
                                _8470 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8470] = 10
                                mem[_8470 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8505 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8470 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var167003]
                                _9916 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9916 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9916 + 36 len 28]
                                staticcall 'console.log'.mem[_9916 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9916 + 36 len mem[_9916] - 4]
                                mem[_8505 + 164] = 10
                                mem[_8505 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var167003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8505 + 264] = 64
                                mem[_8505 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8505 + 360] = mem[s + _8505 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8505 + 370] = 0
                                mem[_8505 + 296] = sub_5e4651f9[idx][var167003].field_0
                                mem[_8505 + 228] = 132
                                mem[64] = _8505 + 392
                                mem[_8505 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var167003].field_0, 10, mem[_8505 + 360 len 10], 0
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var167003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var167003]
                                mem[_8505 + 392] = idx
                                mem[_8505 + 424] = poolList[idx].field_1024
                                mem[_8505 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var171001:
                                revert with 0, 17
                            mem[32] = 210
                            if var177001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var179002
                            if _1162 < stor[sha3(var179002) + var179001]:
                                if not var183001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14362 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14362] = 10
                                mem[_14362 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14397 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14362 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var179003]
                                _15808 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15808 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15808 + 36 len 28]
                                staticcall 'console.log'.mem[_15808 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15808 + 36 len mem[_15808] - 4]
                                mem[_14397 + 164] = 10
                                mem[_14397 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var179003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14397 + 264] = 64
                                mem[_14397 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14397 + 360] = mem[s + _14397 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14397 + 370] = 0
                                mem[_14397 + 296] = sub_5e4651f9[idx][var179003].field_0
                                mem[_14397 + 228] = 132
                                mem[64] = _14397 + 392
                                mem[_14397 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var179003].field_0, 10, mem[_14397 + 360 len 10], 0
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var179003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var179003]
                                mem[_14397 + 392] = idx
                                mem[_14397 + 424] = poolList[idx].field_1024
                                mem[_14397 + 456] = poolList[idx].field_1280
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
                _1021 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1023 = mem[_1021]
                require mem[_1021] == mem[_1021]
                if not mem[_1021]:
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
                if not mem[_1021]:
                    revert with 0, 18
                if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1021]):
                    revert with 0, 17
                poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_1021]
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
                        if _1023 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1089 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1102 = mem[_1089]
                        require mem[_1089] == mem[_1089]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        mem[32] = 210
                        if var140001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var142002
                        if _1102 >= stor[sha3(var142002) + var142001]:
                            _2594 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2594] = 10
                            mem[_2594 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var142003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _2621 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _2594 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var142003]
                            _4064 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_4064 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4064 + 36 len 28]
                            staticcall 'console.log'.mem[_4064 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_4064 + 36 len mem[_4064] - 4]
                            mem[_2621 + 164] = 10
                            mem[_2621 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var142003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_2621 + 264] = 64
                            mem[_2621 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _2621 + 360] = mem[s + _2621 + 196]
                                s = s + 32
                                continue 
                            mem[_2621 + 370] = 0
                            mem[_2621 + 296] = sub_5e4651f9[idx][var142003].field_0
                            mem[_2621 + 228] = 132
                            mem[64] = _2621 + 392
                            mem[_2621 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var142003].field_0, 10, mem[_2621 + 360 len 10], 0
                            mem[32] = 211
                            if var142003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var142003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var142003]
                            mem[_2621 + 392] = idx
                            mem[_2621 + 424] = poolList[idx].field_1024
                            mem[_2621 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var146001:
                            revert with 0, 17
                        mem[32] = 210
                        if var152001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var154002
                        if _1102 >= stor[sha3(var154002) + var154001]:
                            _8486 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8486] = 10
                            mem[_8486 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var154003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _8513 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _8486 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var154003]
                            _9956 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_9956 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9956 + 36 len 28]
                            staticcall 'console.log'.mem[_9956 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_9956 + 36 len mem[_9956] - 4]
                            mem[_8513 + 164] = 10
                            mem[_8513 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var154003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_8513 + 264] = 64
                            mem[_8513 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _8513 + 360] = mem[s + _8513 + 196]
                                s = s + 32
                                continue 
                            mem[_8513 + 370] = 0
                            mem[_8513 + 296] = sub_5e4651f9[idx][var154003].field_0
                            mem[_8513 + 228] = 132
                            mem[64] = _8513 + 392
                            mem[_8513 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var154003].field_0, 10, mem[_8513 + 360 len 10], 0
                            mem[32] = 211
                            if var154003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var154003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var154003]
                            mem[_8513 + 392] = idx
                            mem[_8513 + 424] = poolList[idx].field_1024
                            mem[_8513 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var158001:
                            revert with 0, 17
                        mem[32] = 210
                        if var164001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var166002
                        if _1102 < stor[sha3(var166002) + var166001]:
                            if not var170001:
                                revert with 0, 17
                            # nil
                        else:
                            _14378 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14378] = 10
                            mem[_14378 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var166003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _14405 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _14378 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var166003]
                            _15848 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_15848 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15848 + 36 len 28]
                            staticcall 'console.log'.mem[_15848 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_15848 + 36 len mem[_15848] - 4]
                            mem[_14405 + 164] = 10
                            mem[_14405 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var166003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_14405 + 264] = 64
                            mem[_14405 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _14405 + 360] = mem[s + _14405 + 196]
                                s = s + 32
                                continue 
                            mem[_14405 + 370] = 0
                            mem[_14405 + 296] = sub_5e4651f9[idx][var166003].field_0
                            mem[_14405 + 228] = 132
                            mem[64] = _14405 + 392
                            mem[_14405 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var166003].field_0, 10, mem[_14405 + 360 len 10], 0
                            mem[32] = 211
                            if var166003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var166003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var166003]
                            mem[_14405 + 392] = idx
                            mem[_14405 + 424] = poolList[idx].field_1024
                            mem[_14405 + 456] = poolList[idx].field_1280
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
                        if _1023 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1107 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1123 = mem[_1107]
                            require mem[_1107] == mem[_1107]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var144001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var146002
                            if _1123 >= stor[sha3(var146002) + var146001]:
                                _2598 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2598] = 10
                                mem[_2598 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2623 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2598 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var146003]
                                _4074 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4074 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4074 + 36 len 28]
                                staticcall 'console.log'.mem[_4074 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4074 + 36 len mem[_4074] - 4]
                                mem[_2623 + 164] = 10
                                mem[_2623 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var146003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2623 + 264] = 64
                                mem[_2623 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2623 + 360] = mem[s + _2623 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2623 + 370] = 0
                                mem[_2623 + 296] = sub_5e4651f9[idx][var146003].field_0
                                mem[_2623 + 228] = 132
                                mem[64] = _2623 + 392
                                mem[_2623 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var146003].field_0, 10, mem[_2623 + 360 len 10], 0
                                mem[32] = 211
                                if var146003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var146003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                                mem[_2623 + 392] = idx
                                mem[_2623 + 424] = poolList[idx].field_1024
                                mem[_2623 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var150001:
                                revert with 0, 17
                            mem[32] = 210
                            if var156001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var158002
                            if _1123 >= stor[sha3(var158002) + var158001]:
                                _8490 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8490] = 10
                                mem[_8490 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8515 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8490 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var158003]
                                _9966 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9966 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9966 + 36 len 28]
                                staticcall 'console.log'.mem[_9966 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9966 + 36 len mem[_9966] - 4]
                                mem[_8515 + 164] = 10
                                mem[_8515 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var158003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8515 + 264] = 64
                                mem[_8515 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8515 + 360] = mem[s + _8515 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8515 + 370] = 0
                                mem[_8515 + 296] = sub_5e4651f9[idx][var158003].field_0
                                mem[_8515 + 228] = 132
                                mem[64] = _8515 + 392
                                mem[_8515 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var158003].field_0, 10, mem[_8515 + 360 len 10], 0
                                mem[32] = 211
                                if var158003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var158003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                                mem[_8515 + 392] = idx
                                mem[_8515 + 424] = poolList[idx].field_1024
                                mem[_8515 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var162001:
                                revert with 0, 17
                            mem[32] = 210
                            if var168001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var170002
                            if _1123 < stor[sha3(var170002) + var170001]:
                                if not var174001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14382 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14382] = 10
                                mem[_14382 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14407 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14382 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var170003]
                                _15858 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15858 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15858 + 36 len 28]
                                staticcall 'console.log'.mem[_15858 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15858 + 36 len mem[_15858] - 4]
                                mem[_14407 + 164] = 10
                                mem[_14407 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var170003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14407 + 264] = 64
                                mem[_14407 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14407 + 360] = mem[s + _14407 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14407 + 370] = 0
                                mem[_14407 + 296] = sub_5e4651f9[idx][var170003].field_0
                                mem[_14407 + 228] = 132
                                mem[64] = _14407 + 392
                                mem[_14407 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var170003].field_0, 10, mem[_14407 + 360 len 10], 0
                                mem[32] = 211
                                if var170003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var170003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var170003]
                                mem[_14407 + 392] = idx
                                mem[_14407 + 424] = poolList[idx].field_1024
                                mem[_14407 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1023 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1127 = mem[_1115]
                            require mem[_1115] == mem[_1115]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var145001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var147002
                            if _1127 >= stor[sha3(var147002) + var147001]:
                                _2596 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2596] = 10
                                mem[_2596 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var147003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2622 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2596 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var147003]
                                _4069 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4069 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4069 + 36 len 28]
                                staticcall 'console.log'.mem[_4069 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4069 + 36 len mem[_4069] - 4]
                                mem[_2622 + 164] = 10
                                mem[_2622 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var147003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2622 + 264] = 64
                                mem[_2622 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2622 + 360] = mem[s + _2622 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2622 + 370] = 0
                                mem[_2622 + 296] = sub_5e4651f9[idx][var147003].field_0
                                mem[_2622 + 228] = 132
                                mem[64] = _2622 + 392
                                mem[_2622 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var147003].field_0, 10, mem[_2622 + 360 len 10], 0
                                mem[32] = 211
                                if var147003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var147003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                                mem[_2622 + 392] = idx
                                mem[_2622 + 424] = poolList[idx].field_1024
                                mem[_2622 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var151001:
                                revert with 0, 17
                            mem[32] = 210
                            if var157001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var159002
                            if _1127 >= stor[sha3(var159002) + var159001]:
                                _8488 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8488] = 10
                                mem[_8488 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var159003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8514 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8488 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var159003]
                                _9961 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9961 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9961 + 36 len 28]
                                staticcall 'console.log'.mem[_9961 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9961 + 36 len mem[_9961] - 4]
                                mem[_8514 + 164] = 10
                                mem[_8514 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var159003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8514 + 264] = 64
                                mem[_8514 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8514 + 360] = mem[s + _8514 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8514 + 370] = 0
                                mem[_8514 + 296] = sub_5e4651f9[idx][var159003].field_0
                                mem[_8514 + 228] = 132
                                mem[64] = _8514 + 392
                                mem[_8514 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var159003].field_0, 10, mem[_8514 + 360 len 10], 0
                                mem[32] = 211
                                if var159003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var159003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var159003]
                                mem[_8514 + 392] = idx
                                mem[_8514 + 424] = poolList[idx].field_1024
                                mem[_8514 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var163001:
                                revert with 0, 17
                            mem[32] = 210
                            if var169001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var171002
                            if _1127 < stor[sha3(var171002) + var171001]:
                                if not var175001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14380 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14380] = 10
                                mem[_14380 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var171003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14406 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14380 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var171003]
                                _15853 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15853 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15853 + 36 len 28]
                                staticcall 'console.log'.mem[_15853 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15853 + 36 len mem[_15853] - 4]
                                mem[_14406 + 164] = 10
                                mem[_14406 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var171003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14406 + 264] = 64
                                mem[_14406 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14406 + 360] = mem[s + _14406 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14406 + 370] = 0
                                mem[_14406 + 296] = sub_5e4651f9[idx][var171003].field_0
                                mem[_14406 + 228] = 132
                                mem[64] = _14406 + 392
                                mem[_14406 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var171003].field_0, 10, mem[_14406 + 360 len 10], 0
                                mem[32] = 211
                                if var171003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var171003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var171003]
                                mem[_14406 + 392] = idx
                                mem[_14406 + 424] = poolList[idx].field_1024
                                mem[_14406 + 456] = poolList[idx].field_1280
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
                        if _1023 >= sub_5e4651f9[idx][stor212].field_0:
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
                        _1130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1136 = mem[_1130]
                        require mem[_1130] == mem[_1130]
                        if sub_5e4651f9[idx].field_0 < 1:
                            revert with 0, 17
                        mem[32] = 210
                        if var149001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var151002
                        if _1136 >= stor[sha3(var151002) + var151001]:
                            _2588 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2588] = 10
                            mem[_2588 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var151003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _2618 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _2588 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var151003]
                            _4049 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_4049 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4049 + 36 len 28]
                            staticcall 'console.log'.mem[_4049 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_4049 + 36 len mem[_4049] - 4]
                            mem[_2618 + 164] = 10
                            mem[_2618 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var151003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_2618 + 264] = 64
                            mem[_2618 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _2618 + 360] = mem[s + _2618 + 196]
                                s = s + 32
                                continue 
                            mem[_2618 + 370] = 0
                            mem[_2618 + 296] = sub_5e4651f9[idx][var151003].field_0
                            mem[_2618 + 228] = 132
                            mem[64] = _2618 + 392
                            mem[_2618 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var151003].field_0, 10, mem[_2618 + 360 len 10], 0
                            mem[32] = 211
                            if var151003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var151003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var151003]
                            mem[_2618 + 392] = idx
                            mem[_2618 + 424] = poolList[idx].field_1024
                            mem[_2618 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var155001:
                            revert with 0, 17
                        mem[32] = 210
                        if var161001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var163002
                        if _1136 >= stor[sha3(var163002) + var163001]:
                            _8480 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8480] = 10
                            mem[_8480 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var163003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _8510 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _8480 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var163003]
                            _9941 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_9941 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9941 + 36 len 28]
                            staticcall 'console.log'.mem[_9941 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_9941 + 36 len mem[_9941] - 4]
                            mem[_8510 + 164] = 10
                            mem[_8510 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var163003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_8510 + 264] = 64
                            mem[_8510 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _8510 + 360] = mem[s + _8510 + 196]
                                s = s + 32
                                continue 
                            mem[_8510 + 370] = 0
                            mem[_8510 + 296] = sub_5e4651f9[idx][var163003].field_0
                            mem[_8510 + 228] = 132
                            mem[64] = _8510 + 392
                            mem[_8510 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var163003].field_0, 10, mem[_8510 + 360 len 10], 0
                            mem[32] = 211
                            if var163003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var163003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var163003]
                            mem[_8510 + 392] = idx
                            mem[_8510 + 424] = poolList[idx].field_1024
                            mem[_8510 + 456] = poolList[idx].field_1280
                            emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        if not var167001:
                            revert with 0, 17
                        mem[32] = 210
                        if var173001 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[0] = var175002
                        if _1136 < stor[sha3(var175002) + var175001]:
                            if not var179001:
                                revert with 0, 17
                            # nil
                        else:
                            _14372 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14372] = 10
                            mem[_14372 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            mem[32] = 211
                            if var175003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            mem[0] = sha3(idx, 211)
                            _14402 = mem[64]
                            mem[mem[64] + 36] = 64
                            mem[mem[64] + 100] = 10
                            s = 0
                            while s < 10:
                                mem[s + mem[64] + 132] = mem[s + _14372 + 32]
                                s = s + 32
                                continue 
                            mem[mem[64] + 142] = 0
                            mem[mem[64] + 68] = sub_5bf56068[idx][var175003]
                            _15833 = mem[64]
                            mem[mem[64]] = 132
                            mem[64] = mem[64] + 164
                            mem[_15833 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15833 + 36 len 28]
                            staticcall 'console.log'.mem[_15833 + 32 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_15833 + 36 len mem[_15833] - 4]
                            mem[_14402 + 164] = 10
                            mem[_14402 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                            if var175003 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[_14402 + 264] = 64
                            mem[_14402 + 328] = 10
                            s = 0
                            while s < 10:
                                mem[s + _14402 + 360] = mem[s + _14402 + 196]
                                s = s + 32
                                continue 
                            mem[_14402 + 370] = 0
                            mem[_14402 + 296] = sub_5e4651f9[idx][var175003].field_0
                            mem[_14402 + 228] = 132
                            mem[64] = _14402 + 392
                            mem[_14402 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                            staticcall 'console.log'.0x9710a9d0 with:
                                    gas gas_remaining wei
                                   args 0, 0, sub_5e4651f9[idx][var175003].field_0, 10, mem[_14402 + 360 len 10], 0
                            mem[32] = 211
                            if var175003 >= sub_5bf56068[idx]:
                                revert with 0, 50
                            sub_29baefff = var175003
                            if idx >= poolList.length:
                                revert with 0, 50
                            mem[0] = 205
                            poolList[idx].field_256 = sub_5bf56068[idx][var175003]
                            mem[_14402 + 392] = idx
                            mem[_14402 + 424] = poolList[idx].field_1024
                            mem[_14402 + 456] = poolList[idx].field_1280
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
                        if _1023 >= sub_5e4651f9[idx][stor212].field_256:
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
                            _1143 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1160 = mem[_1143]
                            require mem[_1143] == mem[_1143]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var153001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var155002
                            if _1160 >= stor[sha3(var155002) + var155001]:
                                _2592 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2592] = 10
                                mem[_2592 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2620 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2592 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var155003]
                                _4059 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4059 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4059 + 36 len 28]
                                staticcall 'console.log'.mem[_4059 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4059 + 36 len mem[_4059] - 4]
                                mem[_2620 + 164] = 10
                                mem[_2620 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var155003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2620 + 264] = 64
                                mem[_2620 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2620 + 360] = mem[s + _2620 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2620 + 370] = 0
                                mem[_2620 + 296] = sub_5e4651f9[idx][var155003].field_0
                                mem[_2620 + 228] = 132
                                mem[64] = _2620 + 392
                                mem[_2620 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var155003].field_0, 10, mem[_2620 + 360 len 10], 0
                                mem[32] = 211
                                if var155003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var155003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var155003]
                                mem[_2620 + 392] = idx
                                mem[_2620 + 424] = poolList[idx].field_1024
                                mem[_2620 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var159001:
                                revert with 0, 17
                            mem[32] = 210
                            if var165001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var167002
                            if _1160 >= stor[sha3(var167002) + var167001]:
                                _8484 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8484] = 10
                                mem[_8484 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8512 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8484 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var167003]
                                _9951 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9951 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9951 + 36 len 28]
                                staticcall 'console.log'.mem[_9951 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9951 + 36 len mem[_9951] - 4]
                                mem[_8512 + 164] = 10
                                mem[_8512 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var167003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8512 + 264] = 64
                                mem[_8512 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8512 + 360] = mem[s + _8512 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8512 + 370] = 0
                                mem[_8512 + 296] = sub_5e4651f9[idx][var167003].field_0
                                mem[_8512 + 228] = 132
                                mem[64] = _8512 + 392
                                mem[_8512 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var167003].field_0, 10, mem[_8512 + 360 len 10], 0
                                mem[32] = 211
                                if var167003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var167003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var167003]
                                mem[_8512 + 392] = idx
                                mem[_8512 + 424] = poolList[idx].field_1024
                                mem[_8512 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var171001:
                                revert with 0, 17
                            mem[32] = 210
                            if var177001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var179002
                            if _1160 < stor[sha3(var179002) + var179001]:
                                if not var183001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14376 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14376] = 10
                                mem[_14376 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14404 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14376 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var179003]
                                _15843 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15843 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15843 + 36 len 28]
                                staticcall 'console.log'.mem[_15843 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15843 + 36 len mem[_15843] - 4]
                                mem[_14404 + 164] = 10
                                mem[_14404 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var179003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14404 + 264] = 64
                                mem[_14404 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14404 + 360] = mem[s + _14404 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14404 + 370] = 0
                                mem[_14404 + 296] = sub_5e4651f9[idx][var179003].field_0
                                mem[_14404 + 228] = 132
                                mem[64] = _14404 + 392
                                mem[_14404 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var179003].field_0, 10, mem[_14404 + 360 len 10], 0
                                mem[32] = 211
                                if var179003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var179003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var179003]
                                mem[_14404 + 392] = idx
                                mem[_14404 + 424] = poolList[idx].field_1024
                                mem[_14404 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if _1023 >= sub_5e4651f9[idx][stor212].field_0:
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
                            _1149 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1165 = mem[_1149]
                            require mem[_1149] == mem[_1149]
                            if sub_5e4651f9[idx].field_0 < 1:
                                revert with 0, 17
                            mem[32] = 210
                            if var154001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var156002
                            if _1165 >= stor[sha3(var156002) + var156001]:
                                _2590 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2590] = 10
                                mem[_2590 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var156003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _2619 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _2590 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var156003]
                                _4054 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_4054 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_4054 + 36 len 28]
                                staticcall 'console.log'.mem[_4054 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_4054 + 36 len mem[_4054] - 4]
                                mem[_2619 + 164] = 10
                                mem[_2619 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var156003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_2619 + 264] = 64
                                mem[_2619 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _2619 + 360] = mem[s + _2619 + 196]
                                    s = s + 32
                                    continue 
                                mem[_2619 + 370] = 0
                                mem[_2619 + 296] = sub_5e4651f9[idx][var156003].field_0
                                mem[_2619 + 228] = 132
                                mem[64] = _2619 + 392
                                mem[_2619 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var156003].field_0, 10, mem[_2619 + 360 len 10], 0
                                mem[32] = 211
                                if var156003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var156003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var156003]
                                mem[_2619 + 392] = idx
                                mem[_2619 + 424] = poolList[idx].field_1024
                                mem[_2619 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var160001:
                                revert with 0, 17
                            mem[32] = 210
                            if var166001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var168002
                            if _1165 >= stor[sha3(var168002) + var168001]:
                                _8482 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_8482] = 10
                                mem[_8482 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var168003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _8511 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _8482 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var168003]
                                _9946 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_9946 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_9946 + 36 len 28]
                                staticcall 'console.log'.mem[_9946 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_9946 + 36 len mem[_9946] - 4]
                                mem[_8511 + 164] = 10
                                mem[_8511 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var168003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_8511 + 264] = 64
                                mem[_8511 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _8511 + 360] = mem[s + _8511 + 196]
                                    s = s + 32
                                    continue 
                                mem[_8511 + 370] = 0
                                mem[_8511 + 296] = sub_5e4651f9[idx][var168003].field_0
                                mem[_8511 + 228] = 132
                                mem[64] = _8511 + 392
                                mem[_8511 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var168003].field_0, 10, mem[_8511 + 360 len 10], 0
                                mem[32] = 211
                                if var168003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var168003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var168003]
                                mem[_8511 + 392] = idx
                                mem[_8511 + 424] = poolList[idx].field_1024
                                mem[_8511 + 456] = poolList[idx].field_1280
                                emit PoolUpdated(idx, poolList[idx].field_1024, poolList[idx].field_1280);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if not var172001:
                                revert with 0, 17
                            mem[32] = 210
                            if var178001 >= sub_5e4651f9[idx].field_0:
                                revert with 0, 50
                            mem[0] = var180002
                            if _1165 < stor[sha3(var180002) + var180001]:
                                if not var184001:
                                    revert with 0, 17
                                # nil
                            else:
                                _14374 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_14374] = 10
                                mem[_14374 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                mem[32] = 211
                                if var180003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                mem[0] = sha3(idx, 211)
                                _14403 = mem[64]
                                mem[mem[64] + 36] = 64
                                mem[mem[64] + 100] = 10
                                s = 0
                                while s < 10:
                                    mem[s + mem[64] + 132] = mem[s + _14374 + 32]
                                    s = s + 32
                                    continue 
                                mem[mem[64] + 142] = 0
                                mem[mem[64] + 68] = sub_5bf56068[idx][var180003]
                                _15838 = mem[64]
                                mem[mem[64]] = 132
                                mem[64] = mem[64] + 164
                                mem[_15838 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_15838 + 36 len 28]
                                staticcall 'console.log'.mem[_15838 + 32 len 4] with:
                                        gas gas_remaining wei
                                       args mem[_15838 + 36 len mem[_15838] - 4]
                                mem[_14403 + 164] = 10
                                mem[_14403 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                                if var180003 >= sub_5e4651f9[idx].field_0:
                                    revert with 0, 50
                                mem[_14403 + 264] = 64
                                mem[_14403 + 328] = 10
                                s = 0
                                while s < 10:
                                    mem[s + _14403 + 360] = mem[s + _14403 + 196]
                                    s = s + 32
                                    continue 
                                mem[_14403 + 370] = 0
                                mem[_14403 + 296] = sub_5e4651f9[idx][var180003].field_0
                                mem[_14403 + 228] = 132
                                mem[64] = _14403 + 392
                                mem[_14403 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 0, sub_5e4651f9[idx][var180003].field_0, 10, mem[_14403 + 360 len 10], 0
                                mem[32] = 211
                                if var180003 >= sub_5bf56068[idx]:
                                    revert with 0, 50
                                sub_29baefff = var180003
                                if idx >= poolList.length:
                                    revert with 0, 50
                                mem[0] = 205
                                poolList[idx].field_256 = sub_5bf56068[idx][var180003]
                                mem[_14403 + 392] = idx
                                mem[_14403 + 424] = poolList[idx].field_1024
                                mem[_14403 + 456] = poolList[idx].field_1280
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
        _495 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _496 = mem[_495]
        require mem[_495] == mem[_495]
        if not mem[_495]:
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
        if not mem[_495]:
            revert with 0, 18
        if poolList[idx].field_1024 > !((10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_495]):
            revert with 0, 17
        poolList[idx].field_1024 += (10^12 * block.timestamp * poolList[idx].field_256) - (10^12 * poolList[idx].field_768 * poolList[idx].field_256) / mem[_495]
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
                if _496 >= sub_5e4651f9[idx][stor212].field_0:
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
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _535 = mem[_529]
                require mem[_529] == mem[_529]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                mem[32] = 210
                if var119001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var121002
                if _535 >= stor[sha3(var121002) + var121001]:
                    _1387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1387] = 10
                    mem[_1387 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var121003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _1402 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _1387 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var121003]
                    _2215 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_2215 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2215 + 36 len 28]
                    staticcall 'console.log'.mem[_2215 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2215 + 36 len mem[_2215] - 4]
                    mem[_1402 + 164] = 10
                    mem[_1402 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var121003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_1402 + 264] = 64
                    mem[_1402 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _1402 + 360] = mem[s + _1402 + 196]
                        s = s + 32
                        continue 
                    mem[_1402 + 370] = 0
                    mem[_1402 + 296] = sub_5e4651f9[idx][var121003].field_0
                    mem[_1402 + 228] = 132
                    mem[64] = _1402 + 392
                    mem[_1402 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var121003].field_0, 10, mem[_1402 + 360 len 10], 0
                    if var121003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var121003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var121003]
                    mem[_1402 + 392] = idx
                    mem[_1402 + 424] = poolList[idx].field_1024
                    mem[_1402 + 456] = poolList[idx].field_1280
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
                mem[32] = 210
                if var131001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var133002
                if _535 >= stor[sha3(var133002) + var133001]:
                    _4765 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4765] = 10
                    mem[_4765 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var133003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _4780 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _4765 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var133003]
                    _5593 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_5593 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5593 + 36 len 28]
                    staticcall 'console.log'.mem[_5593 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_5593 + 36 len mem[_5593] - 4]
                    mem[_4780 + 164] = 10
                    mem[_4780 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var133003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_4780 + 264] = 64
                    mem[_4780 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _4780 + 360] = mem[s + _4780 + 196]
                        s = s + 32
                        continue 
                    mem[_4780 + 370] = 0
                    mem[_4780 + 296] = sub_5e4651f9[idx][var133003].field_0
                    mem[_4780 + 228] = 132
                    mem[64] = _4780 + 392
                    mem[_4780 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var133003].field_0, 10, mem[_4780 + 360 len 10], 0
                    if var133003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var133003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var133003]
                    mem[_4780 + 392] = idx
                    mem[_4780 + 424] = poolList[idx].field_1024
                    mem[_4780 + 456] = poolList[idx].field_1280
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
                mem[32] = 210
                if var143001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var145002
                if _535 < stor[sha3(var145002) + var145001]:
                    if not var149001:
                        revert with 0, 17
                    # nil
                else:
                    _8143 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8143] = 10
                    mem[_8143 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var145003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _8158 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _8143 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var145003]
                    _8971 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_8971 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8971 + 36 len 28]
                    staticcall 'console.log'.mem[_8971 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_8971 + 36 len mem[_8971] - 4]
                    mem[_8158 + 164] = 10
                    mem[_8158 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var145003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_8158 + 264] = 64
                    mem[_8158 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _8158 + 360] = mem[s + _8158 + 196]
                        s = s + 32
                        continue 
                    mem[_8158 + 370] = 0
                    mem[_8158 + 296] = sub_5e4651f9[idx][var145003].field_0
                    mem[_8158 + 228] = 132
                    mem[64] = _8158 + 392
                    mem[_8158 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var145003].field_0, 10, mem[_8158 + 360 len 10], 0
                    if var145003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var145003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var145003]
                    mem[_8158 + 392] = idx
                    mem[_8158 + 424] = poolList[idx].field_1024
                    mem[_8158 + 456] = poolList[idx].field_1280
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
                if _496 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _546 = mem[_538]
                    require mem[_538] == mem[_538]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var123001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var125002
                    if _546 >= stor[sha3(var125002) + var125001]:
                        _1391 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1391] = 10
                        mem[_1391 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var125003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1404 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1391 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var125003]
                        _2225 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_2225 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2225 + 36 len 28]
                        staticcall 'console.log'.mem[_2225 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2225 + 36 len mem[_2225] - 4]
                        mem[_1404 + 164] = 10
                        mem[_1404 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var125003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1404 + 264] = 64
                        mem[_1404 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1404 + 360] = mem[s + _1404 + 196]
                            s = s + 32
                            continue 
                        mem[_1404 + 370] = 0
                        mem[_1404 + 296] = sub_5e4651f9[idx][var125003].field_0
                        mem[_1404 + 228] = 132
                        mem[64] = _1404 + 392
                        mem[_1404 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var125003].field_0, 10, mem[_1404 + 360 len 10], 0
                        if var125003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var125003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var125003]
                        mem[_1404 + 392] = idx
                        mem[_1404 + 424] = poolList[idx].field_1024
                        mem[_1404 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var135001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var137002
                    if _546 >= stor[sha3(var137002) + var137001]:
                        _4769 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4769] = 10
                        mem[_4769 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var137003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4782 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4769 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var137003]
                        _5603 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5603 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5603 + 36 len 28]
                        staticcall 'console.log'.mem[_5603 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5603 + 36 len mem[_5603] - 4]
                        mem[_4782 + 164] = 10
                        mem[_4782 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var137003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4782 + 264] = 64
                        mem[_4782 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4782 + 360] = mem[s + _4782 + 196]
                            s = s + 32
                            continue 
                        mem[_4782 + 370] = 0
                        mem[_4782 + 296] = sub_5e4651f9[idx][var137003].field_0
                        mem[_4782 + 228] = 132
                        mem[64] = _4782 + 392
                        mem[_4782 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var137003].field_0, 10, mem[_4782 + 360 len 10], 0
                        if var137003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var137003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var137003]
                        mem[_4782 + 392] = idx
                        mem[_4782 + 424] = poolList[idx].field_1024
                        mem[_4782 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var147001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var149002
                    if _546 < stor[sha3(var149002) + var149001]:
                        if not var153001:
                            revert with 0, 17
                        # nil
                    else:
                        _8147 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8147] = 10
                        mem[_8147 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var149003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _8160 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _8147 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var149003]
                        _8981 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_8981 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8981 + 36 len 28]
                        staticcall 'console.log'.mem[_8981 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_8981 + 36 len mem[_8981] - 4]
                        mem[_8160 + 164] = 10
                        mem[_8160 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var149003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_8160 + 264] = 64
                        mem[_8160 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _8160 + 360] = mem[s + _8160 + 196]
                            s = s + 32
                            continue 
                        mem[_8160 + 370] = 0
                        mem[_8160 + 296] = sub_5e4651f9[idx][var149003].field_0
                        mem[_8160 + 228] = 132
                        mem[64] = _8160 + 392
                        mem[_8160 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var149003].field_0, 10, mem[_8160 + 360 len 10], 0
                        if var149003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var149003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var149003]
                        mem[_8160 + 392] = idx
                        mem[_8160 + 424] = poolList[idx].field_1024
                        mem[_8160 + 456] = poolList[idx].field_1280
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
                    if _496 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _548 = mem[_542]
                    require mem[_542] == mem[_542]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var124001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var126002
                    if _548 >= stor[sha3(var126002) + var126001]:
                        _1389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1389] = 10
                        mem[_1389 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1403 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1389 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var126003]
                        _2220 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_2220 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2220 + 36 len 28]
                        staticcall 'console.log'.mem[_2220 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2220 + 36 len mem[_2220] - 4]
                        mem[_1403 + 164] = 10
                        mem[_1403 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var126003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1403 + 264] = 64
                        mem[_1403 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1403 + 360] = mem[s + _1403 + 196]
                            s = s + 32
                            continue 
                        mem[_1403 + 370] = 0
                        mem[_1403 + 296] = sub_5e4651f9[idx][var126003].field_0
                        mem[_1403 + 228] = 132
                        mem[64] = _1403 + 392
                        mem[_1403 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var126003].field_0, 10, mem[_1403 + 360 len 10], 0
                        if var126003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var126003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var126003]
                        mem[_1403 + 392] = idx
                        mem[_1403 + 424] = poolList[idx].field_1024
                        mem[_1403 + 456] = poolList[idx].field_1280
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
                    if var136001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var138002
                    if _548 >= stor[sha3(var138002) + var138001]:
                        _4767 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4767] = 10
                        mem[_4767 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4781 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4767 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var138003]
                        _5598 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5598 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5598 + 36 len 28]
                        staticcall 'console.log'.mem[_5598 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5598 + 36 len mem[_5598] - 4]
                        mem[_4781 + 164] = 10
                        mem[_4781 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var138003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4781 + 264] = 64
                        mem[_4781 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4781 + 360] = mem[s + _4781 + 196]
                            s = s + 32
                            continue 
                        mem[_4781 + 370] = 0
                        mem[_4781 + 296] = sub_5e4651f9[idx][var138003].field_0
                        mem[_4781 + 228] = 132
                        mem[64] = _4781 + 392
                        mem[_4781 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var138003].field_0, 10, mem[_4781 + 360 len 10], 0
                        if var138003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var138003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var138003]
                        mem[_4781 + 392] = idx
                        mem[_4781 + 424] = poolList[idx].field_1024
                        mem[_4781 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var148001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var150002
                    if _548 < stor[sha3(var150002) + var150001]:
                        if not var154001:
                            revert with 0, 17
                        # nil
                    else:
                        _8145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8145] = 10
                        mem[_8145 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var150003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _8159 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _8145 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var150003]
                        _8976 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_8976 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8976 + 36 len 28]
                        staticcall 'console.log'.mem[_8976 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_8976 + 36 len mem[_8976] - 4]
                        mem[_8159 + 164] = 10
                        mem[_8159 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var150003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_8159 + 264] = 64
                        mem[_8159 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _8159 + 360] = mem[s + _8159 + 196]
                            s = s + 32
                            continue 
                        mem[_8159 + 370] = 0
                        mem[_8159 + 296] = sub_5e4651f9[idx][var150003].field_0
                        mem[_8159 + 228] = 132
                        mem[64] = _8159 + 392
                        mem[_8159 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var150003].field_0, 10, mem[_8159 + 360 len 10], 0
                        if var150003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var150003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var150003]
                        mem[_8159 + 392] = idx
                        mem[_8159 + 424] = poolList[idx].field_1024
                        mem[_8159 + 456] = poolList[idx].field_1280
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
                if _496 >= sub_5e4651f9[idx][stor212].field_0:
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
                _549 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _554 = mem[_549]
                require mem[_549] == mem[_549]
                if sub_5e4651f9[idx].field_0 < 1:
                    revert with 0, 17
                mem[32] = 210
                if var128001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var130002
                if _554 >= stor[sha3(var130002) + var130001]:
                    _1381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1381] = 10
                    mem[_1381 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var130003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _1399 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _1381 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var130003]
                    _2200 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_2200 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2200 + 36 len 28]
                    staticcall 'console.log'.mem[_2200 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_2200 + 36 len mem[_2200] - 4]
                    mem[_1399 + 164] = 10
                    mem[_1399 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var130003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_1399 + 264] = 64
                    mem[_1399 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _1399 + 360] = mem[s + _1399 + 196]
                        s = s + 32
                        continue 
                    mem[_1399 + 370] = 0
                    mem[_1399 + 296] = sub_5e4651f9[idx][var130003].field_0
                    mem[_1399 + 228] = 132
                    mem[64] = _1399 + 392
                    mem[_1399 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var130003].field_0, 10, mem[_1399 + 360 len 10], 0
                    if var130003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var130003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var130003]
                    mem[_1399 + 392] = idx
                    mem[_1399 + 424] = poolList[idx].field_1024
                    mem[_1399 + 456] = poolList[idx].field_1280
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
                mem[32] = 210
                if var140001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var142002
                if _554 >= stor[sha3(var142002) + var142001]:
                    _4759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4759] = 10
                    mem[_4759 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var142003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _4777 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _4759 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var142003]
                    _5578 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_5578 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5578 + 36 len 28]
                    staticcall 'console.log'.mem[_5578 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_5578 + 36 len mem[_5578] - 4]
                    mem[_4777 + 164] = 10
                    mem[_4777 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var142003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_4777 + 264] = 64
                    mem[_4777 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _4777 + 360] = mem[s + _4777 + 196]
                        s = s + 32
                        continue 
                    mem[_4777 + 370] = 0
                    mem[_4777 + 296] = sub_5e4651f9[idx][var142003].field_0
                    mem[_4777 + 228] = 132
                    mem[64] = _4777 + 392
                    mem[_4777 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var142003].field_0, 10, mem[_4777 + 360 len 10], 0
                    if var142003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var142003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var142003]
                    mem[_4777 + 392] = idx
                    mem[_4777 + 424] = poolList[idx].field_1024
                    mem[_4777 + 456] = poolList[idx].field_1280
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
                mem[32] = 210
                if var152001 >= sub_5e4651f9[idx].field_0:
                    revert with 0, 50
                mem[0] = var154002
                if _554 < stor[sha3(var154002) + var154001]:
                    if not var158001:
                        revert with 0, 17
                    # nil
                else:
                    _8137 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_8137] = 10
                    mem[_8137 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    mem[32] = 211
                    if var154003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    mem[0] = sha3(idx, 211)
                    _8155 = mem[64]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 100] = 10
                    s = 0
                    while s < 10:
                        mem[s + mem[64] + 132] = mem[s + _8137 + 32]
                        s = s + 32
                        continue 
                    mem[mem[64] + 142] = 0
                    mem[mem[64] + 68] = sub_5bf56068[idx][var154003]
                    _8956 = mem[64]
                    mem[mem[64]] = 132
                    mem[64] = mem[64] + 164
                    mem[_8956 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8956 + 36 len 28]
                    staticcall 'console.log'.mem[_8956 + 32 len 4] with:
                            gas gas_remaining wei
                           args mem[_8956 + 36 len mem[_8956] - 4]
                    mem[_8155 + 164] = 10
                    mem[_8155 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                    if var154003 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[_8155 + 264] = 64
                    mem[_8155 + 328] = 10
                    s = 0
                    while s < 10:
                        mem[s + _8155 + 360] = mem[s + _8155 + 196]
                        s = s + 32
                        continue 
                    mem[_8155 + 370] = 0
                    mem[_8155 + 296] = sub_5e4651f9[idx][var154003].field_0
                    mem[_8155 + 228] = 132
                    mem[64] = _8155 + 392
                    mem[_8155 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                    staticcall 'console.log'.0x9710a9d0 with:
                            gas gas_remaining wei
                           args 0, 0, sub_5e4651f9[idx][var154003].field_0, 10, mem[_8155 + 360 len 10], 0
                    if var154003 >= sub_5bf56068[idx]:
                        revert with 0, 50
                    sub_29baefff = var154003
                    if idx >= poolList.length:
                        revert with 0, 50
                    poolList[idx].field_256 = sub_5bf56068[idx][var154003]
                    mem[_8155 + 392] = idx
                    mem[_8155 + 424] = poolList[idx].field_1024
                    mem[_8155 + 456] = poolList[idx].field_1280
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
                if _496 >= sub_5e4651f9[idx][stor212].field_256:
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
                    _557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _566 = mem[_557]
                    require mem[_557] == mem[_557]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var132001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var134002
                    if _566 >= stor[sha3(var134002) + var134001]:
                        _1385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1385] = 10
                        mem[_1385 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var134003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1401 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1385 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var134003]
                        _2210 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_2210 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2210 + 36 len 28]
                        staticcall 'console.log'.mem[_2210 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2210 + 36 len mem[_2210] - 4]
                        mem[_1401 + 164] = 10
                        mem[_1401 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var134003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1401 + 264] = 64
                        mem[_1401 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1401 + 360] = mem[s + _1401 + 196]
                            s = s + 32
                            continue 
                        mem[_1401 + 370] = 0
                        mem[_1401 + 296] = sub_5e4651f9[idx][var134003].field_0
                        mem[_1401 + 228] = 132
                        mem[64] = _1401 + 392
                        mem[_1401 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var134003].field_0, 10, mem[_1401 + 360 len 10], 0
                        if var134003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var134003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var134003]
                        mem[_1401 + 392] = idx
                        mem[_1401 + 424] = poolList[idx].field_1024
                        mem[_1401 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var144001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var146002
                    if _566 >= stor[sha3(var146002) + var146001]:
                        _4763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4763] = 10
                        mem[_4763 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var146003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4779 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4763 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var146003]
                        _5588 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5588 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5588 + 36 len 28]
                        staticcall 'console.log'.mem[_5588 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5588 + 36 len mem[_5588] - 4]
                        mem[_4779 + 164] = 10
                        mem[_4779 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var146003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4779 + 264] = 64
                        mem[_4779 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4779 + 360] = mem[s + _4779 + 196]
                            s = s + 32
                            continue 
                        mem[_4779 + 370] = 0
                        mem[_4779 + 296] = sub_5e4651f9[idx][var146003].field_0
                        mem[_4779 + 228] = 132
                        mem[64] = _4779 + 392
                        mem[_4779 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var146003].field_0, 10, mem[_4779 + 360 len 10], 0
                        if var146003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var146003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var146003]
                        mem[_4779 + 392] = idx
                        mem[_4779 + 424] = poolList[idx].field_1024
                        mem[_4779 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var156001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var158002
                    if _566 < stor[sha3(var158002) + var158001]:
                        if not var162001:
                            revert with 0, 17
                        # nil
                    else:
                        _8141 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8141] = 10
                        mem[_8141 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var158003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _8157 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _8141 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var158003]
                        _8966 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_8966 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8966 + 36 len 28]
                        staticcall 'console.log'.mem[_8966 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_8966 + 36 len mem[_8966] - 4]
                        mem[_8157 + 164] = 10
                        mem[_8157 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var158003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_8157 + 264] = 64
                        mem[_8157 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _8157 + 360] = mem[s + _8157 + 196]
                            s = s + 32
                            continue 
                        mem[_8157 + 370] = 0
                        mem[_8157 + 296] = sub_5e4651f9[idx][var158003].field_0
                        mem[_8157 + 228] = 132
                        mem[64] = _8157 + 392
                        mem[_8157 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var158003].field_0, 10, mem[_8157 + 360 len 10], 0
                        if var158003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var158003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var158003]
                        mem[_8157 + 392] = idx
                        mem[_8157 + 424] = poolList[idx].field_1024
                        mem[_8157 + 456] = poolList[idx].field_1280
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
                    if _496 >= sub_5e4651f9[idx][stor212].field_0:
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
                    _560 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _568 = mem[_560]
                    require mem[_560] == mem[_560]
                    if sub_5e4651f9[idx].field_0 < 1:
                        revert with 0, 17
                    mem[32] = 210
                    if var133001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var135002
                    if _568 >= stor[sha3(var135002) + var135001]:
                        _1383 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1383] = 10
                        mem[_1383 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var135003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _1400 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _1383 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var135003]
                        _2205 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_2205 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_2205 + 36 len 28]
                        staticcall 'console.log'.mem[_2205 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_2205 + 36 len mem[_2205] - 4]
                        mem[_1400 + 164] = 10
                        mem[_1400 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var135003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_1400 + 264] = 64
                        mem[_1400 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _1400 + 360] = mem[s + _1400 + 196]
                            s = s + 32
                            continue 
                        mem[_1400 + 370] = 0
                        mem[_1400 + 296] = sub_5e4651f9[idx][var135003].field_0
                        mem[_1400 + 228] = 132
                        mem[64] = _1400 + 392
                        mem[_1400 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var135003].field_0, 10, mem[_1400 + 360 len 10], 0
                        if var135003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var135003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var135003]
                        mem[_1400 + 392] = idx
                        mem[_1400 + 424] = poolList[idx].field_1024
                        mem[_1400 + 456] = poolList[idx].field_1280
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
                    if var145001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var147002
                    if _568 >= stor[sha3(var147002) + var147001]:
                        _4761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4761] = 10
                        mem[_4761 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var147003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _4778 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _4761 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var147003]
                        _5583 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_5583 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_5583 + 36 len 28]
                        staticcall 'console.log'.mem[_5583 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_5583 + 36 len mem[_5583] - 4]
                        mem[_4778 + 164] = 10
                        mem[_4778 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var147003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_4778 + 264] = 64
                        mem[_4778 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _4778 + 360] = mem[s + _4778 + 196]
                            s = s + 32
                            continue 
                        mem[_4778 + 370] = 0
                        mem[_4778 + 296] = sub_5e4651f9[idx][var147003].field_0
                        mem[_4778 + 228] = 132
                        mem[64] = _4778 + 392
                        mem[_4778 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var147003].field_0, 10, mem[_4778 + 360 len 10], 0
                        if var147003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var147003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var147003]
                        mem[_4778 + 392] = idx
                        mem[_4778 + 424] = poolList[idx].field_1024
                        mem[_4778 + 456] = poolList[idx].field_1280
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
                    mem[32] = 210
                    if var157001 >= sub_5e4651f9[idx].field_0:
                        revert with 0, 50
                    mem[0] = var159002
                    if _568 < stor[sha3(var159002) + var159001]:
                        if not var163001:
                            revert with 0, 17
                        # nil
                    else:
                        _8139 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8139] = 10
                        mem[_8139 + 32] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        mem[32] = 211
                        if var159003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        mem[0] = sha3(idx, 211)
                        _8156 = mem[64]
                        mem[mem[64] + 36] = 64
                        mem[mem[64] + 100] = 10
                        s = 0
                        while s < 10:
                            mem[s + mem[64] + 132] = mem[s + _8139 + 32]
                            s = s + 32
                            continue 
                        mem[mem[64] + 142] = 0
                        mem[mem[64] + 68] = sub_5bf56068[idx][var159003]
                        _8961 = mem[64]
                        mem[mem[64]] = 132
                        mem[64] = mem[64] + 164
                        mem[_8961 + 32] = 0x9710a9d000000000000000000000000000000000000000000000000000000000 or mem[_8961 + 36 len 28]
                        staticcall 'console.log'.mem[_8961 + 32 len 4] with:
                                gas gas_remaining wei
                               args mem[_8961 + 36 len mem[_8961] - 4]
                        mem[_8156 + 164] = 10
                        mem[_8156 + 196] = 0x7069656365776973653a00000000000000000000000000000000000000000000
                        if var159003 >= sub_5e4651f9[idx].field_0:
                            revert with 0, 50
                        mem[_8156 + 264] = 64
                        mem[_8156 + 328] = 10
                        s = 0
                        while s < 10:
                            mem[s + _8156 + 360] = mem[s + _8156 + 196]
                            s = s + 32
                            continue 
                        mem[_8156 + 370] = 0
                        mem[_8156 + 296] = sub_5e4651f9[idx][var159003].field_0
                        mem[_8156 + 228] = 132
                        mem[64] = _8156 + 392
                        mem[_8156 + 260] = 0x9710a9d000000000000000000000000000000000000000000000000000000000
                        staticcall 'console.log'.0x9710a9d0 with:
                                gas gas_remaining wei
                               args 0, 0, sub_5e4651f9[idx][var159003].field_0, 10, mem[_8156 + 360 len 10], 0
                        if var159003 >= sub_5bf56068[idx]:
                            revert with 0, 50
                        sub_29baefff = var159003
                        if idx >= poolList.length:
                            revert with 0, 50
                        poolList[idx].field_256 = sub_5bf56068[idx][var159003]
                        mem[_8156 + 392] = idx
                        mem[_8156 + 424] = poolList[idx].field_1024
                        mem[_8156 + 456] = poolList[idx].field_1280
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
