contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 stor2;
uint256 rewardPerNode;
uint256 sub_ca4c20d0;
uint256 totalNodesCreated;
uint256 sub_9499e76a;
uint256 totalValueLocked;
mapping of uint8 stor8;
address sub_62499b65Address;
address stor10;

function paused() payable {
    return bool(stor0)
}

function rewardPerNode() payable {
    return rewardPerNode
}

function sub_62499b65(?) payable {
    return sub_62499b65Address
}

function sub_64245940(?) payable {
    return sub_ca4c20d0
}

function owner() payable {
    return owner
}

function sub_9499e76a(?) payable {
    return sub_9499e76a
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function sub_ca4c20d0(?) payable {
    return sub_ca4c20d0
}

function getRewardPerNode() payable {
    return rewardPerNode
}

function totalValueLocked() payable {
    return totalValueLocked
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_24d41f4b(?) payable {
    require calldata.size - 4 >= 32
    rewardPerNode = arg1
}

function sub_e65a5d3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    sub_62499b65Address = address(arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setAuthorizedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    stor1[address(arg1)] = uint8(arg2)
}

function _calculateBoost(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < arg1:
        revert with 0, 17
    if block.timestamp - arg1 / 24 * 3600 >= 15:
        return 140
    if block.timestamp - arg1 / 24 * 3600 >= 7:
        return 120
    if block.timestamp - arg1 / 24 * 3600 < 3:
        return 100
    return 105
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

function sub_dde946e3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    require ext_code.size(sub_62499b65Address)
    call sub_62499b65Address.0x79da9565 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_7f93d80e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    require ext_code.size(sub_62499b65Address)
    call sub_62499b65Address.0xeb5209d3 with:
         gas gas_remaining wei
        args address(arg1), arg2, 96, arg3.length, arg3[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e55679d5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'ZERO_ADDRESS'
    if arg2 <= 0:
        revert with 0, 'Invalid creation time'
    require ext_code.size(sub_62499b65Address)
    call sub_62499b65Address.0xff8d02bf with:
         gas gas_remaining wei
        args address(arg1), arg2, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_62499b65Address)
    call sub_62499b65Address.0x660c9927 with:
         gas gas_remaining wei
        args address(arg1), arg2, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_90219732(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0:
        revert with 0, 'Pausable: paused'
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if arg3 < sub_ca4c20d0:
        revert with 0, 'Minimum required tokens'
    require ext_code.size(sub_62499b65Address)
    call sub_62499b65Address.0x3acb88cb with:
         gas gas_remaining wei
        args address(arg1), arg3, 96, arg2.length, arg2[all], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalNodesCreated == -1:
        revert with 0, 17
    totalNodesCreated++
    if totalValueLocked > !arg3:
        revert with 0, 17
    totalValueLocked += arg3
}

function sub_07eeefc4(?) payable {
    require calldata.size - 4 >= 96
    if block.timestamp < arg2:
        revert with 0, 17
    if block.timestamp < arg1:
        revert with 0, 17
    if arg3 and rewardPerNode > -1 / arg3:
        revert with 0, 17
    if arg3 * rewardPerNode / 100 and 10000 > -1 / arg3 * rewardPerNode / 100:
        revert with 0, 17
    if 10000 * arg3 * rewardPerNode / 100 / 1440 and block.timestamp - arg2 / 60 > -1 / 10000 * arg3 * rewardPerNode / 100 / 1440:
        revert with 0, 17
    if block.timestamp - arg1 / 24 * 3600 >= 15:
        if 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 and 140 > -1 / 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000:
            revert with 0, 17
        return (140 * 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 / 100)
    if block.timestamp - arg1 / 24 * 3600 >= 7:
        if 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 and 120 > -1 / 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000:
            revert with 0, 17
        return (120 * 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 / 100)
    if block.timestamp - arg1 / 24 * 3600 < 3:
        if 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 and 100 > -1 / 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000:
            revert with 0, 17
        return (100 * 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 / 100)
    if 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 and 105 > -1 / 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000:
        revert with 0, 17
    return (105 * 10000 * arg3 * rewardPerNode / 100 / 1440 * block.timestamp - arg2 / 60 / 10000 / 100)
}

function sub_c4aaf7cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x276d0e2000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0x276d0e20 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _36 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_4 + -mem[s] - 32 >= 192
        _42 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 192
        _44 = mem[_4 + _36 + 128]
        require mem[_4 + _36 + 128] <= test266151307()
        require return_data.size + 96 > _4 + _36 + mem[_4 + _36 + 128] + 159
        _46 = mem[_4 + _36 + mem[_4 + _36 + 128] + 128]
        if mem[_4 + _36 + mem[_4 + _36 + 128] + 128] > test266151307():
            revert with 0, 65
        _48 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _36 + mem[_4 + _36 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _36 + mem[_4 + _36 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _36 + mem[_4 + _36 + 128] + 128])) + 1
        mem[_48] = _46
        require _4 + _36 + _44 + _46 + 64 <= return_data.size
        u = 0
        while u < _46:
            mem[u + _48 + 32] = mem[u + _4 + _36 + _44 + 160]
            u = u + 32
            continue 
        if ceil32(_46) > _46:
            mem[_46 + _48 + 32] = 0
        mem[_42] = _48
        mem[_42 + 32] = mem[_4 + _36 + 160]
        mem[_42 + 64] = mem[_4 + _36 + 192]
        mem[_42 + 96] = mem[_4 + _36 + 224]
        mem[_42 + 128] = mem[_4 + _36 + 256]
        require mem[_4 + _36 + 288] == bool(mem[_4 + _36 + 288])
        mem[_42 + 160] = mem[_4 + _36 + 288]
        mem[t] = _42
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _65 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _65:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _68 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _69 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _69
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0xff8d02bf with:
             gas gas_remaining wei
            args address(arg1), _69, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _82 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_82] == bool(mem[_82])
        _84 = mem[_68 + 32]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _84
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x660c9927 with:
             gas gas_remaining wei
            args address(arg1), _84, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _87 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_87] == bool(mem[_87])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_329a2dd4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 <= 0:
        revert with 0, 'Missing field: creation time'
    mem[96] = 0xe4d861e300000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = arg2
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0xe4d861e3 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _6 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 288
    _8 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 127
    _9 = mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 193 < 192 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289
    mem[ceil32(return_data.size) + 288] = _9
    require mem[96 len 4], address(arg1) << 64 + _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_9)] = mem[mem[96 len 4], address(arg1) << 64 + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + ceil32(return_data.size) + 320] = 0
    mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 288
    mem[ceil32(return_data.size) + 128] = mem[_6 + 128]
    mem[ceil32(return_data.size) + 160] = mem[_6 + 160]
    mem[ceil32(return_data.size) + 192] = mem[_6 + 192]
    mem[ceil32(return_data.size) + 224] = mem[_6 + 224]
    require mem[_6 + 256] == bool(mem[_6 + 256])
    mem[ceil32(return_data.size) + 256] = mem[_6 + 256]
    if block.timestamp < mem[ceil32(return_data.size) + 192]:
        revert with 0, 17
    if block.timestamp < mem[ceil32(return_data.size) + 160]:
        revert with 0, 17
    if mem[ceil32(return_data.size) + 224] and rewardPerNode > -1 / mem[ceil32(return_data.size) + 224]:
        revert with 0, 17
    if mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 and 10000 > -1 / mem[ceil32(return_data.size) + 224] * rewardPerNode / 100:
        revert with 0, 17
    if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 and block.timestamp - mem[ceil32(return_data.size) + 192] / 60 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440:
        revert with 0, 17
    if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 15:
        if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 140 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
            revert with 0, 17
        mem[mem[64]] = 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100
    else:
        if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 7:
            if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 120 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                revert with 0, 17
            mem[mem[64]] = 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100
        else:
            if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 < 3:
                if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 100 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100
            else:
                if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 105 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                    revert with 0, 17
                mem[mem[64]] = 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100
    return memory
      from mem[64]
       len 32
}

function sub_20c62b9a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor2 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor2 = 2
    mem[96] = 0x1fae658200000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(stor10)
    staticcall stor10.0x1fae6582 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = _8 + 128
    t = ceil32(return_data.size) + 128
    while idx < _9:
        _86 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_8 + -mem[s] - 32 >= 192
        _93 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 192
        _95 = mem[_8 + _86 + 128]
        require mem[_8 + _86 + 128] <= test266151307()
        require return_data.size + 96 > _8 + _86 + mem[_8 + _86 + 128] + 159
        _97 = mem[_8 + _86 + mem[_8 + _86 + 128] + 128]
        if mem[_8 + _86 + mem[_8 + _86 + 128] + 128] > test266151307():
            revert with 0, 65
        _98 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_8 + _86 + mem[_8 + _86 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_8 + _86 + mem[_8 + _86 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_8 + _86 + mem[_8 + _86 + 128] + 128])) + 1
        mem[_98] = mem[_8 + _86 + mem[_8 + _86 + 128] + 128]
        require _8 + _86 + _95 + _97 + 64 <= return_data.size
        u = 0
        while u < _97:
            mem[u + _98 + 32] = mem[u + _8 + _86 + _95 + 160]
            u = u + 32
            continue 
        if ceil32(_97) > _97:
            mem[_97 + _98 + 32] = 0
        mem[_93] = _98
        mem[_93 + 32] = mem[_8 + _86 + 160]
        mem[_93 + 64] = mem[_8 + _86 + 192]
        mem[_93 + 96] = mem[_8 + _86 + 224]
        mem[_93 + 128] = mem[_8 + _86 + 256]
        require mem[_8 + _86 + 288] == bool(mem[_8 + _86 + 288])
        mem[_93 + 160] = mem[_8 + _86 + 288]
        mem[t] = _93
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[ceil32(return_data.size) + 96] <= 0:
        revert with 0, 'NO_NODES'
    mem[mem[64] + 4] = address(arg1)
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0xda3934c7 with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _92 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_92] > !mem[ceil32(return_data.size) + 96]:
        revert with 0, 17
    if mem[_92] + mem[ceil32(return_data.size) + 96] > 100:
        revert with 0, 'Max nodes'
    _161 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _161:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 160]:
            _180 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _186 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _189 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _192 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _195 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]
            mem[mem[64]] = 0x3331973000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = _180
            mem[mem[64] + 68] = 192
            _197 = mem[_186]
            mem[mem[64] + 196] = mem[_186]
            s = 0
            while s < _197:
                mem[s + mem[64] + 228] = mem[s + _186 + 32]
                s = s + 32
                continue 
            if ceil32(_197) <= _197:
                mem[mem[64] + 100] = _189
                mem[mem[64] + 132] = _192
                mem[mem[64] + 164] = _195
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x33319730 with:
                     gas gas_remaining wei
                    args address(arg1), _180, 192, _189, _192, _195, mem[mem[64] + 196 len ceil32(_197) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_224] == bool(mem[_224])
            else:
                mem[_197 + mem[64] + 228] = 0
                mem[mem[64] + 100] = _189
                mem[mem[64] + 132] = _192
                mem[mem[64] + 164] = _195
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x33319730 with:
                     gas gas_remaining wei
                    args address(arg1), _180, 192, _189, _192, _195, mem[mem[64] + 196 len ceil32(_197) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_225] == bool(mem[_225])
            if totalNodesCreated == -1:
                revert with 0, 17
            totalNodesCreated++
            if sub_9499e76a == -1:
                revert with 0, 17
            sub_9499e76a++
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if totalValueLocked > !mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
                revert with 0, 17
            totalValueLocked += mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
        mem[mem[64]] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]
        mem[mem[64] + 32] = block.timestamp
        emit NodeCreated(mem[mem[64]], block.timestamp, address(arg1));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor2 = 1
}

function sub_82af6714(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    if arg2 <= 0:
        revert with 0, 'MERGE:1'
    if arg3 <= 0:
        revert with 0, 'MERGE:1'
    mem[96] = 0xe4d861e300000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = arg3
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0xe4d861e3 with:
            gas gas_remaining wei
           args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _13 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 288
    _15 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 127
    _16 = mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 193 < 192 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289
    mem[ceil32(return_data.size) + 288] = _16
    require mem[96 len 4], address(arg1) << 64 + _15 + _16 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_16)] = mem[mem[96 len 4], address(arg1) << 64 + _15 + 128 len ceil32(_16)]
    if ceil32(_16) <= _16:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 128] = mem[_13 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_13 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_13 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_13 + 224]
        require mem[_13 + 256] == bool(mem[_13 + 256])
        mem[ceil32(return_data.size) + 256] = mem[_13 + 256]
        _78 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = _78
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x79da9565 with:
             gas gas_remaining wei
            args address(arg1), arg2, _78
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_84] == bool(mem[_84])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0xff8d02bf with:
             gas gas_remaining wei
            args address(arg1), arg2, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_92] == bool(mem[_92])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x660c9927 with:
             gas gas_remaining wei
            args address(arg1), arg2, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_100] == bool(mem[_100])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg3
        mem[mem[64] + 68] = 1
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x36de7fea with:
             gas gas_remaining wei
            args address(arg1), arg3, 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_108] == bool(mem[_108])
    else:
        mem[_16 + ceil32(return_data.size) + 320] = 0
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 128] = mem[_13 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_13 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_13 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_13 + 224]
        require mem[_13 + 256] == bool(mem[_13 + 256])
        mem[ceil32(return_data.size) + 256] = mem[_13 + 256]
        _80 = mem[ceil32(return_data.size) + 224]
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = _80
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x79da9565 with:
             gas gas_remaining wei
            args address(arg1), arg2, _80
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == bool(mem[_85])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0xff8d02bf with:
             gas gas_remaining wei
            args address(arg1), arg2, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _93 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_93] == bool(mem[_93])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2
        mem[mem[64] + 68] = block.timestamp
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x660c9927 with:
             gas gas_remaining wei
            args address(arg1), arg2, block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _101 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_101] == bool(mem[_101])
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg3
        mem[mem[64] + 68] = 1
        require ext_code.size(sub_62499b65Address)
        call sub_62499b65Address.0x36de7fea with:
             gas gas_remaining wei
            args address(arg1), arg3, 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_109] == bool(mem[_109])
    if not totalNodesCreated:
        revert with 0, 17
    totalNodesCreated--
    emit 0x77ff77ec: arg3, arg2, address(arg1)
}

function getAllNodesRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0x276d0e2000000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0x276d0e20 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _31 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_4 + -mem[s] - 32 >= 192
        _39 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 192
        _41 = mem[_4 + _31 + 128]
        require mem[_4 + _31 + 128] <= test266151307()
        require return_data.size + 96 > _4 + _31 + mem[_4 + _31 + 128] + 159
        _42 = mem[_4 + _31 + mem[_4 + _31 + 128] + 128]
        if mem[_4 + _31 + mem[_4 + _31 + 128] + 128] > test266151307():
            revert with 0, 65
        _43 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _31 + mem[_4 + _31 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _31 + mem[_4 + _31 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _31 + mem[_4 + _31 + 128] + 128])) + 1
        mem[_43] = mem[_4 + _31 + mem[_4 + _31 + 128] + 128]
        require _4 + _31 + _41 + _42 + 64 <= return_data.size
        u = 0
        while u < _42:
            mem[u + _43 + 32] = mem[u + _4 + _31 + _41 + 160]
            u = u + 32
            continue 
        if ceil32(_42) > _42:
            mem[_42 + _43 + 32] = 0
        mem[_39] = _43
        mem[_39 + 32] = mem[_4 + _31 + 160]
        mem[_39 + 64] = mem[_4 + _31 + 192]
        mem[_39 + 96] = mem[_4 + _31 + 224]
        mem[_39 + 128] = mem[_4 + _31 + 256]
        require mem[_4 + _31 + 288] == bool(mem[_4 + _31 + 288])
        mem[_39 + 160] = mem[_4 + _31 + 288]
        mem[t] = _39
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96]:
            revert with 0, 17
        if block.timestamp < mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
            revert with 0, 17
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] and rewardPerNode > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128]:
            revert with 0, 17
        if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 and 10000 > -1 / mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100:
            revert with 0, 17
        if 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 and block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 > -1 / 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440:
            revert with 0, 17
        if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] / 24 * 3600 >= 15:
            if 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 and 140 > -1 / 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000:
                revert with 0, 17
            if s > !(140 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (140 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100)
            continue 
        if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] / 24 * 3600 >= 7:
            if 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 and 120 > -1 / 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000:
                revert with 0, 17
            if s > !(120 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (120 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100)
            continue 
        if block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] / 24 * 3600 < 3:
            if 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 and 100 > -1 / 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000:
                revert with 0, 17
            if s > !(100 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (100 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100)
            continue 
        if 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 and 105 > -1 / 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000:
            revert with 0, 17
        if s > !(105 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (105 * 10000 * mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] / 60 / 10000 / 100)
        continue 
    return s
}

function sub_66a36975(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor0:
        revert with 0, 'Pausable: paused'
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Not authorized'
    mem[96] = 0xe4d861e300000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    mem[132] = arg2
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0xe4d861e3 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _9 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[96 len 4], address(arg1) << 64 >= 192
    if not bool(ceil32(return_data.size) + 288 <= test266151307()):
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + 288
    _11 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    require mem[mem[96 len 4], address(arg1) << 64 + 96] <= test266151307()
    require return_data.size + 96 > mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 127
    _12 = mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 193 < 192 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], address(arg1) << 64 + mem[mem[96 len 4], address(arg1) << 64 + 96] + 96])) + 289
    mem[ceil32(return_data.size) + 288] = _12
    require mem[96 len 4], address(arg1) << 64 + _11 + _12 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320 len ceil32(_12)] = mem[mem[96 len 4], address(arg1) << 64 + _11 + 128 len ceil32(_12)]
    if ceil32(_12) <= _12:
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 128] = mem[_9 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_9 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_9 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_9 + 224]
        require mem[_9 + 256] == bool(mem[_9 + 256])
        mem[ceil32(return_data.size) + 256] = mem[_9 + 256]
        _307 = mem[ceil32(return_data.size) + 192]
        _308 = mem[ceil32(return_data.size) + 224]
        if block.timestamp < mem[ceil32(return_data.size) + 192]:
            revert with 0, 17
        if block.timestamp < mem[ceil32(return_data.size) + 160]:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 224] and rewardPerNode > -1 / mem[ceil32(return_data.size) + 224]:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 and 10000 > -1 / mem[ceil32(return_data.size) + 224] * rewardPerNode / 100:
            revert with 0, 17
        if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 and block.timestamp - mem[ceil32(return_data.size) + 192] / 60 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440:
            revert with 0, 17
        if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 15:
            if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 140 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                    revert with 0, 17
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = 125 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x79da9565 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, 125 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_359] == bool(mem[_359])
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = block.timestamp
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x660c9927 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_487] == bool(mem[_487])
            else:
                if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                    if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = 115 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, 115 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_375] == bool(mem[_375])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _503 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_503] == bool(mem[_503])
                else:
                    if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                        if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 100 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 100 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _389 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_389] == bool(mem[_389])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _517 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_517] == bool(mem[_517])
                    else:
                        if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 105 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 105 * 140 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _390 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_390] == bool(mem[_390])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _518 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_518] == bool(mem[_518])
        else:
            if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 7:
                if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 120 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                    if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = 125 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, 125 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_374] == bool(mem[_374])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_502] == bool(mem[_502])
                else:
                    if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                        if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 115 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 115 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _388 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_388] == bool(mem[_388])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _516 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_516] == bool(mem[_516])
                    else:
                        if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                            if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 100 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 100 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _404 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_404] == bool(mem[_404])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_532] == bool(mem[_532])
                        else:
                            if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 105 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 105 * 120 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_405] == bool(mem[_405])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _533 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_533] == bool(mem[_533])
            else:
                if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 < 3:
                    if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 100 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                        revert with 0, 17
                    if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                        if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 125 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 125 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _384 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_384] == bool(mem[_384])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _512 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_512] == bool(mem[_512])
                    else:
                        if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                            if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 115 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 115 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_402] == bool(mem[_402])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_530] == bool(mem[_530])
                        else:
                            if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                                if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 100 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 100 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _414 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_414] == bool(mem[_414])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _542 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_542] == bool(mem[_542])
                            else:
                                if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 105 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 105 * 100 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _415 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_415] == bool(mem[_415])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _543 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_543] == bool(mem[_543])
                else:
                    if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 105 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                        revert with 0, 17
                    if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                        if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 125 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 125 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _387 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_387] == bool(mem[_387])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _515 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_515] == bool(mem[_515])
                    else:
                        if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                            if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 115 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 115 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _403 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_403] == bool(mem[_403])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _531 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_531] == bool(mem[_531])
                        else:
                            if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                                if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 100 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 100 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _417 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_417] == bool(mem[_417])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _545 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_545] == bool(mem[_545])
                            else:
                                if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 105 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 105 * 105 * 10000 * _308 * rewardPerNode / 100 / 1440 * block.timestamp - _307 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _418 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_418] == bool(mem[_418])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _546 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_546] == bool(mem[_546])
    else:
        mem[_12 + ceil32(return_data.size) + 320] = 0
        mem[ceil32(return_data.size) + 96] = ceil32(return_data.size) + 288
        mem[ceil32(return_data.size) + 128] = mem[_9 + 128]
        mem[ceil32(return_data.size) + 160] = mem[_9 + 160]
        mem[ceil32(return_data.size) + 192] = mem[_9 + 192]
        mem[ceil32(return_data.size) + 224] = mem[_9 + 224]
        require mem[_9 + 256] == bool(mem[_9 + 256])
        mem[ceil32(return_data.size) + 256] = mem[_9 + 256]
        _310 = mem[ceil32(return_data.size) + 192]
        _311 = mem[ceil32(return_data.size) + 224]
        if block.timestamp < mem[ceil32(return_data.size) + 192]:
            revert with 0, 17
        if block.timestamp < mem[ceil32(return_data.size) + 160]:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 224] and rewardPerNode > -1 / mem[ceil32(return_data.size) + 224]:
            revert with 0, 17
        if mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 and 10000 > -1 / mem[ceil32(return_data.size) + 224] * rewardPerNode / 100:
            revert with 0, 17
        if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 and block.timestamp - mem[ceil32(return_data.size) + 192] / 60 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440:
            revert with 0, 17
        if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 15:
            if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 140 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                revert with 0, 17
            if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                    revert with 0, 17
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = 125 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x79da9565 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, 125 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_369] == bool(mem[_369])
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2
                mem[mem[64] + 68] = block.timestamp
                require ext_code.size(sub_62499b65Address)
                call sub_62499b65Address.0x660c9927 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_497] == bool(mem[_497])
            else:
                if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                    if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = 115 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, 115 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_381] == bool(mem[_381])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_509] == bool(mem[_509])
                else:
                    if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                        if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 100 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 100 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_399] == bool(mem[_399])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _527 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_527] == bool(mem[_527])
                    else:
                        if 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 140 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 105 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 105 * 140 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_400] == bool(mem[_400])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _528 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_528] == bool(mem[_528])
        else:
            if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 >= 7:
                if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 120 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                    revert with 0, 17
                if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                    if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = 125 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, 125 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_380] == bool(mem[_380])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = arg2
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), arg2, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_508] == bool(mem[_508])
                else:
                    if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                        if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 115 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 115 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_398] == bool(mem[_398])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_526] == bool(mem[_526])
                    else:
                        if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                            if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 100 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 100 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _410 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_410] == bool(mem[_410])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_538] == bool(mem[_538])
                        else:
                            if 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 120 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 105 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 105 * 120 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _411 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_411] == bool(mem[_411])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_539] == bool(mem[_539])
            else:
                if block.timestamp - mem[ceil32(return_data.size) + 160] / 24 * 3600 < 3:
                    if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 100 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                        revert with 0, 17
                    if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                        if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 125 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 125 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_394] == bool(mem[_394])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_522] == bool(mem[_522])
                    else:
                        if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                            if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 115 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 115 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_408] == bool(mem[_408])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_536] == bool(mem[_536])
                        else:
                            if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                                if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 100 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 100 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _423 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_423] == bool(mem[_423])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _551 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_551] == bool(mem[_551])
                            else:
                                if 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 100 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 105 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 105 * 100 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _424 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_424] == bool(mem[_424])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _552 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_552] == bool(mem[_552])
                else:
                    if 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 and 105 > -1 / 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000:
                        revert with 0, 17
                    if mem[ceil32(return_data.size) + 224] < 5000 * 10^18:
                        if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 125 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = 125 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, 125 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _397 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_397] == bool(mem[_397])
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = arg2
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), arg2, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_525] == bool(mem[_525])
                    else:
                        if mem[ceil32(return_data.size) + 224] < 10000 * 10^18:
                            if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 115 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                revert with 0, 17
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = 115 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, 115 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _409 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_409] == bool(mem[_409])
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = arg2
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), arg2, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_537] == bool(mem[_537])
                        else:
                            if mem[ceil32(return_data.size) + 224] >= 20000 * 10^18:
                                if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 100 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 100 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 100 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _426 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_426] == bool(mem[_426])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _554 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_554] == bool(mem[_554])
                            else:
                                if 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100 and 105 > -1 / 105 * 10000 * mem[ceil32(return_data.size) + 224] * rewardPerNode / 100 / 1440 * block.timestamp - mem[ceil32(return_data.size) + 192] / 60 / 10000 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = 105 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, 105 * 105 * 10000 * _311 * rewardPerNode / 100 / 1440 * block.timestamp - _310 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _427 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_427] == bool(mem[_427])
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = arg2
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _555 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_555] == bool(mem[_555])
}

function sub_c226e8ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0x276d0e2000000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    require ext_code.size(sub_62499b65Address)
    staticcall sub_62499b65Address.0x276d0e20 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        _380 = mem[s]
        require mem[s] <= test266151307()
        require return_data.size + -_4 + -mem[s] - 32 >= 192
        _385 = mem[64]
        if mem[64] + 192 < mem[64] or mem[64] + 192 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 192
        _388 = mem[_4 + _380 + 128]
        require mem[_4 + _380 + 128] <= test266151307()
        require return_data.size + 96 > _4 + _380 + mem[_4 + _380 + 128] + 159
        _390 = mem[_4 + _380 + mem[_4 + _380 + 128] + 128]
        if mem[_4 + _380 + mem[_4 + _380 + 128] + 128] > test266151307():
            revert with 0, 65
        _392 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_4 + _380 + mem[_4 + _380 + 128] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_4 + _380 + mem[_4 + _380 + 128] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_4 + _380 + mem[_4 + _380 + 128] + 128])) + 1
        mem[_392] = mem[_4 + _380 + mem[_4 + _380 + 128] + 128]
        require _4 + _380 + _388 + _390 + 64 <= return_data.size
        u = 0
        while u < _390:
            mem[u + _392 + 32] = mem[u + _4 + _380 + _388 + 160]
            u = u + 32
            continue 
        if ceil32(_390) > _390:
            mem[_390 + _392 + 32] = 0
        mem[_385] = _392
        mem[_385 + 32] = mem[_4 + _380 + 160]
        mem[_385 + 64] = mem[_4 + _380 + 192]
        mem[_385 + 96] = mem[_4 + _380 + 224]
        mem[_385 + 128] = mem[_4 + _380 + 256]
        require mem[_4 + _380 + 288] == bool(mem[_4 + _380 + 288])
        mem[_385 + 160] = mem[_4 + _380 + 288]
        mem[t] = _385
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _753 = mem[ceil32(return_data.size) + 96]
    idx = 0
    while idx < _753:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _756 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _757 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
        mem[mem[64]] = 0xe4d861e300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = _757
        require ext_code.size(sub_62499b65Address)
        staticcall sub_62499b65Address.0xe4d861e3 with:
                gas gas_remaining wei
               args address(arg1), _757
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _770 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _771 = mem[_770]
        require mem[_770] <= test266151307()
        require return_data.size - mem[_770] >= 192
        if not bool(_770 + ceil32(return_data.size) + 192 <= test266151307()):
            revert with 0, 65
        mem[64] = _770 + ceil32(return_data.size) + 192
        _773 = mem[_770 + _771]
        require mem[_770 + _771] <= test266151307()
        require _770 + return_data.size > _770 + _771 + mem[_770 + _771] + 31
        _774 = mem[_770 + _771 + mem[_770 + _771]]
        if mem[_770 + _771 + mem[_770 + _771]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_770 + _771 + mem[_770 + _771]])) + 193 < 192 or _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + _771 + mem[_770 + _771]])) + 193 > test266151307():
            revert with 0, 65
        mem[64] = _770 + ceil32(return_data.size) + ceil32(ceil32(mem[_770 + _771 + mem[_770 + _771]])) + 193
        mem[_770 + ceil32(return_data.size) + 192] = _774
        require _771 + _773 + _774 + 32 <= return_data.size
        s = 0
        while s < _774:
            mem[s + _770 + ceil32(return_data.size) + 224] = mem[s + _770 + _771 + _773 + 32]
            s = s + 32
            continue 
        if ceil32(_774) <= _774:
            mem[_770 + ceil32(return_data.size)] = _770 + ceil32(return_data.size) + 192
            mem[_770 + ceil32(return_data.size) + 32] = mem[_770 + _771 + 32]
            mem[_770 + ceil32(return_data.size) + 64] = mem[_770 + _771 + 64]
            mem[_770 + ceil32(return_data.size) + 96] = mem[_770 + _771 + 96]
            mem[_770 + ceil32(return_data.size) + 128] = mem[_770 + _771 + 128]
            require mem[_770 + _771 + 160] == bool(mem[_770 + _771 + 160])
            mem[_770 + ceil32(return_data.size) + 160] = mem[_770 + _771 + 160]
            _1133 = mem[_770 + ceil32(return_data.size) + 96]
            _1134 = mem[_770 + ceil32(return_data.size) + 128]
            if block.timestamp < mem[_770 + ceil32(return_data.size) + 96]:
                revert with 0, 17
            if block.timestamp < mem[_770 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            if mem[_770 + ceil32(return_data.size) + 128] and rewardPerNode > -1 / mem[_770 + ceil32(return_data.size) + 128]:
                revert with 0, 17
            if mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 and 10000 > -1 / mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100:
                revert with 0, 17
            if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 and block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440:
                revert with 0, 17
            if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 >= 15:
                if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 140 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                    revert with 0, 17
                if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                    if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                        revert with 0, 17
                    _1146 = mem[_756 + 32]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1146
                    mem[mem[64] + 68] = 125 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), _1146, 125 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1213 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1213] == bool(mem[_1213])
                    _1302 = mem[_756 + 32]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1302
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), _1302, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1373 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1373] == bool(mem[_1373])
                else:
                    if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                        if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                            revert with 0, 17
                        _1152 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1152
                        mem[mem[64] + 68] = 115 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), _1152, 115 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1233 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1233] == bool(mem[_1233])
                        _1312 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1312
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), _1312, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1393] == bool(mem[_1393])
                    else:
                        if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                            if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1164 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1164
                            mem[mem[64] + 68] = 100 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1164, 100 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1247] == bool(mem[_1247])
                            _1324 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1324
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1324, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1407] == bool(mem[_1407])
                        else:
                            if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1166 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1166
                            mem[mem[64] + 68] = 105 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1166, 105 * 140 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1248] == bool(mem[_1248])
                            _1326 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1326
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1326, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1408 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1408] == bool(mem[_1408])
            else:
                if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 >= 7:
                    if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 120 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                        revert with 0, 17
                    if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                        if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                            revert with 0, 17
                        _1150 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1150
                        mem[mem[64] + 68] = 125 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), _1150, 125 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1232] == bool(mem[_1232])
                        _1310 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1310
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), _1310, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1392 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1392] == bool(mem[_1392])
                    else:
                        if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                            if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1162 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1162
                            mem[mem[64] + 68] = 115 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1162, 115 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1246 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1246] == bool(mem[_1246])
                            _1322 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1322
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1322, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1406 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1406] == bool(mem[_1406])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1184 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1184
                                mem[mem[64] + 68] = 100 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1184, 100 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1262 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1262] == bool(mem[_1262])
                                _1344 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1344
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1344, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1422 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1422] == bool(mem[_1422])
                            else:
                                if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1186 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1186
                                mem[mem[64] + 68] = 105 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1186, 105 * 120 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1263 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1263] == bool(mem[_1263])
                                _1346 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1346
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1346, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1423 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1423] == bool(mem[_1423])
                else:
                    if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 < 3:
                        if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 100 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                            revert with 0, 17
                        if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                            if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1158 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1158
                            mem[mem[64] + 68] = 125 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1158, 125 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1242 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1242] == bool(mem[_1242])
                            _1318 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1318
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1318, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1402] == bool(mem[_1402])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                                if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1180 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1180
                                mem[mem[64] + 68] = 115 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1180, 115 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1260 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1260] == bool(mem[_1260])
                                _1340 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1340
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1340, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1420 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1420] == bool(mem[_1420])
                            else:
                                if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                    if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1200 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1200
                                    mem[mem[64] + 68] = 100 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1200, 100 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1272 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1272] == bool(mem[_1272])
                                    _1360 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1360
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1360, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1432 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1432] == bool(mem[_1432])
                                else:
                                    if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1202 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1202
                                    mem[mem[64] + 68] = 105 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1202, 105 * 100 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1273 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1273] == bool(mem[_1273])
                                    _1362 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1362
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1362, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1433 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1433] == bool(mem[_1433])
                    else:
                        if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 105 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                            revert with 0, 17
                        if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                            if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1160 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1160
                            mem[mem[64] + 68] = 125 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1160, 125 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1245 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1245] == bool(mem[_1245])
                            _1320 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1320
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1320, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1405 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1405] == bool(mem[_1405])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                                if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1182 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1182
                                mem[mem[64] + 68] = 115 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1182, 115 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1261] == bool(mem[_1261])
                                _1342 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1342
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1342, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1421 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1421] == bool(mem[_1421])
                            else:
                                if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                    if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1205 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1205
                                    mem[mem[64] + 68] = 100 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1205, 100 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1275 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1275] == bool(mem[_1275])
                                    _1365 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1365
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1365, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1435 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1435] == bool(mem[_1435])
                                else:
                                    if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1207 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1207
                                    mem[mem[64] + 68] = 105 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1207, 105 * 105 * 10000 * _1134 * rewardPerNode / 100 / 1440 * block.timestamp - _1133 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1276 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1276] == bool(mem[_1276])
                                    _1367 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1367
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1367, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1436 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1436] == bool(mem[_1436])
        else:
            mem[_774 + _770 + ceil32(return_data.size) + 224] = 0
            mem[_770 + ceil32(return_data.size)] = _770 + ceil32(return_data.size) + 192
            mem[_770 + ceil32(return_data.size) + 32] = mem[_770 + _771 + 32]
            mem[_770 + ceil32(return_data.size) + 64] = mem[_770 + _771 + 64]
            mem[_770 + ceil32(return_data.size) + 96] = mem[_770 + _771 + 96]
            mem[_770 + ceil32(return_data.size) + 128] = mem[_770 + _771 + 128]
            require mem[_770 + _771 + 160] == bool(mem[_770 + _771 + 160])
            mem[_770 + ceil32(return_data.size) + 160] = mem[_770 + _771 + 160]
            _1136 = mem[_770 + ceil32(return_data.size) + 96]
            _1137 = mem[_770 + ceil32(return_data.size) + 128]
            if block.timestamp < mem[_770 + ceil32(return_data.size) + 96]:
                revert with 0, 17
            if block.timestamp < mem[_770 + ceil32(return_data.size) + 64]:
                revert with 0, 17
            if mem[_770 + ceil32(return_data.size) + 128] and rewardPerNode > -1 / mem[_770 + ceil32(return_data.size) + 128]:
                revert with 0, 17
            if mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 and 10000 > -1 / mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100:
                revert with 0, 17
            if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 and block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440:
                revert with 0, 17
            if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 >= 15:
                if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 140 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                    revert with 0, 17
                if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                    if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                        revert with 0, 17
                    _1148 = mem[_756 + 32]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1148
                    mem[mem[64] + 68] = 125 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x79da9565 with:
                         gas gas_remaining wei
                        args address(arg1), _1148, 125 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1227] == bool(mem[_1227])
                    _1308 = mem[_756 + 32]
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = _1308
                    mem[mem[64] + 68] = block.timestamp
                    require ext_code.size(sub_62499b65Address)
                    call sub_62499b65Address.0x660c9927 with:
                         gas gas_remaining wei
                        args address(arg1), _1308, block.timestamp
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1387 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1387] == bool(mem[_1387])
                else:
                    if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                        if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                            revert with 0, 17
                        _1156 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1156
                        mem[mem[64] + 68] = 115 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), _1156, 115 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1239] == bool(mem[_1239])
                        _1316 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1316
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), _1316, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1399] == bool(mem[_1399])
                    else:
                        if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                            if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1175 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1175
                            mem[mem[64] + 68] = 100 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1175, 100 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1257] == bool(mem[_1257])
                            _1335 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1335
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1335, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1417] == bool(mem[_1417])
                        else:
                            if 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 140 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1177 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1177
                            mem[mem[64] + 68] = 105 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1177, 105 * 140 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1258] == bool(mem[_1258])
                            _1337 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1337
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1337, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1418 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1418] == bool(mem[_1418])
            else:
                if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 >= 7:
                    if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 120 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                        revert with 0, 17
                    if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                        if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                            revert with 0, 17
                        _1154 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1154
                        mem[mem[64] + 68] = 125 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x79da9565 with:
                             gas gas_remaining wei
                            args address(arg1), _1154, 125 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1238] == bool(mem[_1238])
                        _1314 = mem[_756 + 32]
                        mem[mem[64] + 4] = address(arg1)
                        mem[mem[64] + 36] = _1314
                        mem[mem[64] + 68] = block.timestamp
                        require ext_code.size(sub_62499b65Address)
                        call sub_62499b65Address.0x660c9927 with:
                             gas gas_remaining wei
                            args address(arg1), _1314, block.timestamp
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1398] == bool(mem[_1398])
                    else:
                        if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                            if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1173 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1173
                            mem[mem[64] + 68] = 115 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1173, 115 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1256 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1256] == bool(mem[_1256])
                            _1333 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1333
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1333, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1416] == bool(mem[_1416])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1194 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1194
                                mem[mem[64] + 68] = 100 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1194, 100 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1268] == bool(mem[_1268])
                                _1354 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1354
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1354, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1428 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1428] == bool(mem[_1428])
                            else:
                                if 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 120 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1196 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1196
                                mem[mem[64] + 68] = 105 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1196, 105 * 120 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1269 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1269] == bool(mem[_1269])
                                _1356 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1356
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1356, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1429 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1429] == bool(mem[_1429])
                else:
                    if block.timestamp - mem[_770 + ceil32(return_data.size) + 64] / 24 * 3600 < 3:
                        if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 100 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                            revert with 0, 17
                        if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                            if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1169 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1169
                            mem[mem[64] + 68] = 125 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1169, 125 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1252 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1252] == bool(mem[_1252])
                            _1329 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1329
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1329, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1412] == bool(mem[_1412])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                                if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1190 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1190
                                mem[mem[64] + 68] = 115 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1190, 115 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1266] == bool(mem[_1266])
                                _1350 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1350
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1350, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1426 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1426] == bool(mem[_1426])
                            else:
                                if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                    if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1214 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1214
                                    mem[mem[64] + 68] = 100 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1214, 100 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1281 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1281] == bool(mem[_1281])
                                    _1374 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1374
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1374, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1441 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1441] == bool(mem[_1441])
                                else:
                                    if 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 100 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1216 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1216
                                    mem[mem[64] + 68] = 105 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1216, 105 * 100 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1282 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1282] == bool(mem[_1282])
                                    _1376 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1376
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1376, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1442 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1442] == bool(mem[_1442])
                    else:
                        if 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 and 105 > -1 / 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000:
                            revert with 0, 17
                        if mem[_770 + ceil32(return_data.size) + 128] < 5000 * 10^18:
                            if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 125 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                revert with 0, 17
                            _1171 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1171
                            mem[mem[64] + 68] = 125 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x79da9565 with:
                                 gas gas_remaining wei
                                args address(arg1), _1171, 125 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1255] == bool(mem[_1255])
                            _1331 = mem[_756 + 32]
                            mem[mem[64] + 4] = address(arg1)
                            mem[mem[64] + 36] = _1331
                            mem[mem[64] + 68] = block.timestamp
                            require ext_code.size(sub_62499b65Address)
                            call sub_62499b65Address.0x660c9927 with:
                                 gas gas_remaining wei
                                args address(arg1), _1331, block.timestamp
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1415 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1415] == bool(mem[_1415])
                        else:
                            if mem[_770 + ceil32(return_data.size) + 128] < 10000 * 10^18:
                                if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 115 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                    revert with 0, 17
                                _1192 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1192
                                mem[mem[64] + 68] = 115 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x79da9565 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1192, 115 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1267 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1267] == bool(mem[_1267])
                                _1352 = mem[_756 + 32]
                                mem[mem[64] + 4] = address(arg1)
                                mem[mem[64] + 36] = _1352
                                mem[mem[64] + 68] = block.timestamp
                                require ext_code.size(sub_62499b65Address)
                                call sub_62499b65Address.0x660c9927 with:
                                     gas gas_remaining wei
                                    args address(arg1), _1352, block.timestamp
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1427 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1427] == bool(mem[_1427])
                            else:
                                if mem[_770 + ceil32(return_data.size) + 128] >= 20000 * 10^18:
                                    if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 100 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1219 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1219
                                    mem[mem[64] + 68] = 100 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1219, 100 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1284 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1284] == bool(mem[_1284])
                                    _1379 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1379
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1379, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1444 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1444] == bool(mem[_1444])
                                else:
                                    if 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100 and 105 > -1 / 105 * 10000 * mem[_770 + ceil32(return_data.size) + 128] * rewardPerNode / 100 / 1440 * block.timestamp - mem[_770 + ceil32(return_data.size) + 96] / 60 / 10000 / 100:
                                        revert with 0, 17
                                    _1221 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1221
                                    mem[mem[64] + 68] = 105 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x79da9565 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1221, 105 * 105 * 10000 * _1137 * rewardPerNode / 100 / 1440 * block.timestamp - _1136 / 60 / 10000 / 100 / 100
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1285 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1285] == bool(mem[_1285])
                                    _1381 = mem[_756 + 32]
                                    mem[mem[64] + 4] = address(arg1)
                                    mem[mem[64] + 36] = _1381
                                    mem[mem[64] + 68] = block.timestamp
                                    require ext_code.size(sub_62499b65Address)
                                    call sub_62499b65Address.0x660c9927 with:
                                         gas gas_remaining wei
                                        args address(arg1), _1381, block.timestamp
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1445 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1445] == bool(mem[_1445])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
