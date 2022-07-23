contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 stor1;
address stakingTokenAddress;
address nftAddress;
uint256 apr;
uint256 sub_43b8af3f;
uint256 totalStaked;
uint256 sub_eeb58d0a;
uint256 sub_9ffd36b0;
address stor9;
uint256 lockPeriod;
uint256 sub_3853e788;
uint256 sub_e1e61be5;
array of struct sub_c8b6cbf7;
mapping of uint256 sub_bff1dc04;
mapping of uint256 sub_7414180d;

function getTotalStaked() payable {
    return totalStaked
}

function sub_3853e788(?) payable {
    return sub_3853e788
}

function lockPeriod() payable {
    return lockPeriod
}

function sub_43b8af3f(?) payable {
    return sub_43b8af3f
}

function nft() payable {
    return nftAddress
}

function apr() payable {
    return apr
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function stakingToken() payable {
    return stakingTokenAddress
}

function sub_7414180d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7414180d[arg1]
}

function owner() payable {
    return owner
}

function sub_9ffd36b0(?) payable {
    return sub_9ffd36b0
}

function getUserLockedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_7414180d[address(arg1)]
}

function sub_bff1dc04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bff1dc04[address(arg1)]
}

function sub_c8b6cbf7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_c8b6cbf7[arg1].field_0
    return sub_c8b6cbf7[arg1][arg2].field_256, sub_c8b6cbf7[arg1][arg2].field_512, bool(uint8(sub_c8b6cbf7[arg1][arg2].field_768))
}

function sub_e1e61be5(?) payable {
    return sub_e1e61be5
}

function sub_eeb58d0a(?) payable {
    return sub_eeb58d0a
}

function sub_fe6a1410(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bff1dc04[arg1]
}

function _fallback() payable {
    revert
}

function sub_76a2c222(?) payable {
    if sub_43b8af3f < totalStaked:
        revert with 'NH{q', 17
    return (sub_43b8af3f - totalStaked)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ca89ea84(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = address(arg1)
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_262ac377(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 % 10000 * 10^18 <= 0:
        return (arg1 / 10000 * 10^18)
    if arg1 / 10000 * 10^18 > -2:
        revert with 'NH{q', 17
    return ((arg1 / 10000 * 10^18) + 1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function calculateReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
        revert with 'NH{q', 17
    if arg1 and 30 > -1 / arg1:
        revert with 'NH{q', 17
    if 30 * arg1 / 100 <= 3000 * 10^18 * arg2:
        if arg1 > -(30 * arg1 / 100) - 1:
            revert with 'NH{q', 17
        if arg1 + (30 * arg1 / 100) and apr > -1 / arg1 + (30 * arg1 / 100):
            revert with 'NH{q', 17
        if (arg1 * apr) + (30 * arg1 / 100 * apr) / 100 and lockPeriod > -1 / (arg1 * apr) + (30 * arg1 / 100 * apr) / 100:
            revert with 'NH{q', 17
        return ((arg1 * apr) + (30 * arg1 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
    if arg1 > (-3000 * 10^18 * arg2) - 1:
        revert with 'NH{q', 17
    if arg1 + (3000 * 10^18 * arg2) and apr > -1 / arg1 + (3000 * 10^18 * arg2):
        revert with 'NH{q', 17
    if (arg1 * apr) + (3000 * 10^18 * arg2 * apr) / 100 and lockPeriod > -1 / (arg1 * apr) + (3000 * 10^18 * arg2 * apr) / 100:
        revert with 'NH{q', 17
    return ((arg1 * apr) + (3000 * 10^18 * arg2 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
}

function sub_3357d3e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_bff1dc04[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_bff1dc04[address(arg1)]
    mem[64] = (32 * sub_bff1dc04[address(arg1)]) + 128
    if not sub_bff1dc04[address(arg1)]:
        mem[0] = address(arg1)
        mem[32] = 13
        idx = 0
        while idx < sub_c8b6cbf7[address(arg1)].field_0:
            mem[32] = 13
            if idx >= sub_c8b6cbf7[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 13)
            _43 = mem[64]
            mem[64] = mem[64] + 128
            _44 = mem[64]
            mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(arg1)][idx].field_0) + 32
            mem[_44] = sub_c8b6cbf7[address(arg1)][idx].field_0
            if not sub_c8b6cbf7[address(arg1)][idx].field_0:
                mem[_43] = _44
                mem[_43 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_256
                mem[_43 + 64] = sub_c8b6cbf7[address(arg1)][idx].field_512
                mem[_43 + 96] = bool(uint8(sub_c8b6cbf7[address(arg1)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(arg1)][idx].field_768):
                    s = 0
                    t = 0
                    while s < sub_c8b6cbf7[address(arg1)][idx].field_0:
                        if s >= mem[mem[_43]]:
                            revert with 'NH{q', 50
                        if t >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + 128] = mem[(32 * s) + mem[_43] + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        s = s + 1
                        t = t + 1
                        continue 
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 13))
                mem[_44 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_0
                s = _44 + 32
                t = sha3(mem[0])
                while _44 + (32 * sub_c8b6cbf7[address(arg1)][idx].field_0) > s:
                    mem[0] = address(arg1)
                    mem[32] = 13
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_43] = _44
                mem[_43 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_256
                mem[_43 + 64] = sub_c8b6cbf7[address(arg1)][idx].field_512
                mem[_43 + 96] = bool(uint8(sub_c8b6cbf7[address(arg1)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(arg1)][idx].field_768):
                    _102 = mem[_44]
                    s = 0
                    t = 0
                    while s < _102:
                        if s >= mem[mem[_43]]:
                            revert with 'NH{q', 50
                        if t >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + 128] = mem[(32 * s) + mem[_43] + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        s = s + 1
                        t = t + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 13
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * sub_bff1dc04[address(arg1)]] = call.data[calldata.size len 32 * sub_bff1dc04[address(arg1)]]
        mem[0] = address(arg1)
        mem[32] = 13
        idx = 0
        while idx < sub_c8b6cbf7[address(arg1)].field_0:
            mem[32] = 13
            if idx >= sub_c8b6cbf7[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 13)
            _47 = mem[64]
            mem[64] = mem[64] + 128
            _48 = mem[64]
            mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(arg1)][idx].field_0) + 32
            mem[_48] = sub_c8b6cbf7[address(arg1)][idx].field_0
            if not sub_c8b6cbf7[address(arg1)][idx].field_0:
                mem[_47] = _48
                mem[_47 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_256
                mem[_47 + 64] = sub_c8b6cbf7[address(arg1)][idx].field_512
                mem[_47 + 96] = bool(uint8(sub_c8b6cbf7[address(arg1)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(arg1)][idx].field_768):
                    s = 0
                    t = 0
                    while s < sub_c8b6cbf7[address(arg1)][idx].field_0:
                        if s >= mem[mem[_47]]:
                            revert with 'NH{q', 50
                        if t >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + 128] = mem[(32 * s) + mem[_47] + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        s = s + 1
                        t = t + 1
                        continue 
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 13))
                mem[_48 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_0
                s = _48 + 32
                t = sha3(mem[0])
                while _48 + (32 * sub_c8b6cbf7[address(arg1)][idx].field_0) > s:
                    mem[0] = address(arg1)
                    mem[32] = 13
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_47] = _48
                mem[_47 + 32] = sub_c8b6cbf7[address(arg1)][idx].field_256
                mem[_47 + 64] = sub_c8b6cbf7[address(arg1)][idx].field_512
                mem[_47 + 96] = bool(uint8(sub_c8b6cbf7[address(arg1)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(arg1)][idx].field_768):
                    _104 = mem[_48]
                    s = 0
                    t = 0
                    while s < _104:
                        if s >= mem[mem[_47]]:
                            revert with 'NH{q', 50
                        if t >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + 128] = mem[(32 * s) + mem[_47] + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = address(arg1)
                        mem[32] = 13
                        s = s + 1
                        t = t + 1
                        continue 
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = address(arg1)
            mem[32] = 13
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getPendingRewards() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 13
    idx = 0
    s = 0
    while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
        mem[32] = 13
        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 13)
        _18 = mem[64]
        mem[64] = mem[64] + 128
        _19 = mem[64]
        mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
        mem[_19] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
        if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
            mem[_18] = _19
            mem[_18 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
            mem[_18 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
            mem[_18 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
            if uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                s = s
                continue 
            if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                revert with 'NH{q', 17
            if block.timestamp < sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                s = s
                continue 
            if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                revert with 'NH{q', 17
            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                revert with 'NH{q', 17
            if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                    revert with 'NH{q', 17
                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                    revert with 'NH{q', 17
                if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                    revert with 'NH{q', 17
                if s > -((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                s = s + ((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
                continue 
            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                revert with 'NH{q', 17
            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                revert with 'NH{q', 17
            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                revert with 'NH{q', 17
            if s > -((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            s = s + ((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
            continue 
        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
        mem[_19 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
        t = _19 + 32
        u = sha3(mem[0])
        while _19 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > t:
            mem[0] = msg.sender
            mem[32] = 13
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_18] = _19
        mem[_18 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
        mem[_18 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
        mem[_18 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
        if uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            s = s
            continue 
        _30 = mem[_19]
        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
            revert with 'NH{q', 17
        if block.timestamp < sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            s = s
            continue 
        if mem[_19] > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
            revert with 'NH{q', 17
        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
            revert with 'NH{q', 17
        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * mem[_19]:
            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                revert with 'NH{q', 17
            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                revert with 'NH{q', 17
            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                revert with 'NH{q', 17
            if s > -((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            s = s + ((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
            continue 
        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * mem[_19]) - 1:
            revert with 'NH{q', 17
        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * mem[_19]) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * mem[_19]):
            revert with 'NH{q', 17
        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * mem[_19] * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * mem[_19] * apr) / 100:
            revert with 'NH{q', 17
        if s > -((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * mem[_19] * apr) / 100 * lockPeriod / 8760 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 13
        idx = idx + 1
        s = s + ((sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _30 * apr) / 100 * lockPeriod / 8760 * 24 * 3600)
        continue 
    return s
}

function sub_16f60557(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if cd[4] <= 0:
        revert with 0, 'Stake amount must be greater than 0'
    if block.timestamp < sub_3853e788:
        revert with 0, 'Staking period has not started'
    if block.timestamp > sub_e1e61be5:
        revert with 0, 'Staking period has ended'
    if totalStaked > -cd[4] - 1:
        revert with 'NH{q', 17
    if totalStaked + cd[4] > sub_43b8af3f:
        revert with 0, 'Total staked amount exceeds the limit'
    mem[floor32(('cd', 36).length) + 101] = msg.sender
    mem[floor32(('cd', 36).length) + 133] = this.address
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < cd[4]:
        revert with 0, 'Not enough allowance'
    if cd[4] % 10000 * 10^18 <= 0:
        if cd[4] / 10000 * 10^18 < ('cd', 36).length:
            revert with 0, 'Allowed NFT number per token staked is Overflowing.'
        mem[0] = msg.sender
        mem[32] = 13
        if sub_c8b6cbf7[address(msg.sender)].field_0 >= 5:
            revert with 0, 'You have already staked 5 times.'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _306 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(nftAddress)
            staticcall nftAddress.0x6352211e with:
                    gas gas_remaining wei
                   args _306
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_321] == mem[_321 + 12 len 20]
            if mem[_321 + 12 len 20] != msg.sender:
                revert with 0, 'NFT not owned by staker'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _293 = mem[64]
        mem[64] = mem[64] + 128
        mem[_293] = 96
        mem[_293 + 32] = cd[4]
        mem[_293 + 64] = block.timestamp
        mem[_293 + 96] = 0
        mem[32] = 13
        sub_c8b6cbf7[address(msg.sender)].field_0++
        sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 = mem[96]
        mem[0] = (4 * sub_c8b6cbf7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 13))
        if not mem[96]:
            idx = 0
            while sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_256 = cd[4]
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_512 = block.timestamp
            uint8(sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_768) = 0
            if totalStaked > -cd[4] - 1:
                revert with 'NH{q', 17
            totalStaked += cd[4]
            if sub_eeb58d0a > -cd[4] - 1:
                revert with 'NH{q', 17
            sub_eeb58d0a += cd[4]
            if sub_9ffd36b0 > -mem[96] - 1:
                revert with 'NH{q', 17
            sub_9ffd36b0 += mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stakingTokenAddress)
            call stakingTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_431] == bool(mem[_431])
            _493 = mem[96]
            idx = 0
            while idx < _493:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _501 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _501
                require ext_code.size(nftAddress)
                call nftAddress.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _501
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _493 = mem[96]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_256 = cd[4]
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_512 = block.timestamp
            uint8(sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_768) = 0
            if totalStaked > -cd[4] - 1:
                revert with 'NH{q', 17
            totalStaked += cd[4]
            if sub_eeb58d0a > -cd[4] - 1:
                revert with 'NH{q', 17
            sub_eeb58d0a += cd[4]
            if sub_9ffd36b0 > -mem[96] - 1:
                revert with 'NH{q', 17
            sub_9ffd36b0 += mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stakingTokenAddress)
            call stakingTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _531 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_531] == bool(mem[_531])
            _561 = mem[96]
            idx = 0
            while idx < _561:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _569 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _569
                require ext_code.size(nftAddress)
                call nftAddress.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _569
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _561 = mem[96]
                idx = idx + 1
                continue 
    else:
        if cd[4] / 10000 * 10^18 > -2:
            revert with 'NH{q', 17
        if (cd[4] / 10000 * 10^18) + 1 < ('cd', 36).length:
            revert with 0, 'Allowed NFT number per token staked is Overflowing.'
        mem[0] = msg.sender
        mem[32] = 13
        if sub_c8b6cbf7[address(msg.sender)].field_0 >= 5:
            revert with 0, 'You have already staked 5 times.'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _309 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            require ext_code.size(nftAddress)
            staticcall nftAddress.0x6352211e with:
                    gas gas_remaining wei
                   args _309
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _322 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_322] == mem[_322 + 12 len 20]
            if mem[_322 + 12 len 20] != msg.sender:
                revert with 0, 'NFT not owned by staker'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _299 = mem[64]
        mem[64] = mem[64] + 128
        mem[_299] = 96
        mem[_299 + 32] = cd[4]
        mem[_299 + 64] = block.timestamp
        mem[_299 + 96] = 0
        mem[32] = 13
        sub_c8b6cbf7[address(msg.sender)].field_0++
        sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 = mem[96]
        mem[0] = (4 * sub_c8b6cbf7[address(msg.sender)].field_0) + sha3(sha3(address(msg.sender), 13))
        if not mem[96]:
            idx = 0
            while sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_256 = cd[4]
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_512 = block.timestamp
            uint8(sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_768) = 0
            if totalStaked > -cd[4] - 1:
                revert with 'NH{q', 17
            totalStaked += cd[4]
            if sub_eeb58d0a > -cd[4] - 1:
                revert with 'NH{q', 17
            sub_eeb58d0a += cd[4]
            if sub_9ffd36b0 > -mem[96] - 1:
                revert with 'NH{q', 17
            sub_9ffd36b0 += mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stakingTokenAddress)
            call stakingTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _432 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_432] == bool(mem[_432])
            _494 = mem[96]
            idx = 0
            while idx < _494:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _503 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _503
                require ext_code.size(nftAddress)
                call nftAddress.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _503
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _494 = mem[96]
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * mem[96]) + 128 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
            while sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_0 > idx:
                sub_c8b6cbf7[address(msg.sender)][(4 * sub_c8b6cbf7[address(msg.sender)].field_0) + idx].field_0 = 0
                idx = idx + 1
                continue 
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_256 = cd[4]
            sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_512 = block.timestamp
            uint8(sub_c8b6cbf7[address(msg.sender)][sub_c8b6cbf7[address(msg.sender)].field_0].field_768) = 0
            if totalStaked > -cd[4] - 1:
                revert with 'NH{q', 17
            totalStaked += cd[4]
            if sub_eeb58d0a > -cd[4] - 1:
                revert with 'NH{q', 17
            sub_eeb58d0a += cd[4]
            if sub_9ffd36b0 > -mem[96] - 1:
                revert with 'NH{q', 17
            sub_9ffd36b0 += mem[96]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = cd[4]
            require ext_code.size(stakingTokenAddress)
            call stakingTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _532 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_532] == bool(mem[_532])
            _562 = mem[96]
            idx = 0
            while idx < _562:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _571 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = _571
                require ext_code.size(nftAddress)
                call nftAddress.0x42842e0e with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), _571
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 'NH{q', 17
                _562 = mem[96]
                idx = idx + 1
                continue 
    if sub_bff1dc04[address(msg.sender)] > -mem[96] - 1:
        revert with 'NH{q', 17
    sub_bff1dc04[address(msg.sender)] += mem[96]
    if sub_7414180d[address(msg.sender)] > -cd[4] - 1:
        revert with 'NH{q', 17
    sub_7414180d[address(msg.sender)] += cd[4]
    emit Staked(msg.sender, cd[4], mem[96], block.timestamp);
    stor1.length = 1
}

function withdraw() payable {
    mem[64] = 96
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if block.timestamp < sub_3853e788:
        revert with 0, 'Staking period has not started'
    mem[0] = msg.sender
    mem[32] = 13
    idx = 0
    while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
        mem[32] = 13
        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 13)
        _81 = mem[64]
        mem[64] = mem[64] + 128
        _82 = mem[64]
        mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
        mem[_82] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
        if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
            mem[_81] = _82
            mem[_81 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
            mem[_81 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
            mem[_81 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
            if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                revert with 'NH{q', 17
            if block.timestamp >= sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod:
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    s = 0
                    while s < sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        if s >= mem[mem[_81]]:
                            revert with 'NH{q', 50
                        _153 = mem[(32 * s) + mem[_81] + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _153
                        require ext_code.size(nftAddress)
                        call nftAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _153
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 13
                        s = s + 1
                        continue 
                    if sub_bff1dc04[address(msg.sender)] < sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        revert with 'NH{q', 17
                    sub_bff1dc04[address(msg.sender)] -= sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    if sub_7414180d[address(msg.sender)] < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 15
                    sub_7414180d[address(msg.sender)] -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_163] == bool(mem[_163])
                        mem[mem[64] + 4] = stor9
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor9, msg.sender, (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _171 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_171] == bool(mem[_171])
                        if sub_eeb58d0a < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        sub_eeb58d0a -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_9ffd36b0 < sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        sub_9ffd36b0 -= sub_c8b6cbf7[address(msg.sender)][idx].field_0
                        _175 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_175] = mem[_81]
                        mem[_175 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_175 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_175 + 96] = 1
                        mem[32] = 13
                        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 13)
                        _179 = mem[_175]
                        _180 = mem[mem[_175]]
                        sub_c8b6cbf7[address(msg.sender)][idx].field_0 = mem[mem[_175]]
                        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                        if not _180:
                            s = sha3(mem[0])
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        else:
                            t = sha3(mem[0])
                            s = _179 + 32
                            while _179 + (32 * _180) + 32 > s:
                                stor[t] = mem[s]
                                mem[0] = msg.sender
                                mem[32] = 13
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[0]) + (Mask(251, 0, (32 * _180) + 31) >> 5)
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        sub_c8b6cbf7[address(msg.sender)][idx].field_256 = mem[_175 + 32]
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _164 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_164] == bool(mem[_164])
                        mem[mem[64] + 4] = stor9
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor9, msg.sender, (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _172 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_172] == bool(mem[_172])
                        if sub_eeb58d0a < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        sub_eeb58d0a -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_9ffd36b0 < sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                            revert with 'NH{q', 17
                        sub_9ffd36b0 -= sub_c8b6cbf7[address(msg.sender)][idx].field_0
                        _181 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_181] = mem[_81]
                        mem[_181 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_181 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_181 + 96] = 1
                        mem[32] = 13
                        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 13)
                        _186 = mem[_181]
                        _187 = mem[mem[_181]]
                        sub_c8b6cbf7[address(msg.sender)][idx].field_0 = mem[mem[_181]]
                        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                        if not _187:
                            s = sha3(mem[0])
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        else:
                            t = sha3(mem[0])
                            s = _186 + 32
                            while _186 + (32 * _187) + 32 > s:
                                stor[t] = mem[s]
                                mem[0] = msg.sender
                                mem[32] = 13
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[0]) + (Mask(251, 0, (32 * _187) + 31) >> 5)
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        sub_c8b6cbf7[address(msg.sender)][idx].field_256 = mem[_181 + 32]
                    uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768) = 1
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[mem[64] + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    emit Withdrawn(msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256, sub_c8b6cbf7[address(msg.sender)][idx].field_0);
        else:
            mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
            mem[_82 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
            s = _82 + 32
            t = sha3(mem[0])
            while _82 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                mem[0] = msg.sender
                mem[32] = 13
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_81] = _82
            mem[_81 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
            mem[_81 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
            mem[_81 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
            _213 = mem[_82]
            if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                revert with 'NH{q', 17
            if block.timestamp >= sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod:
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    s = 0
                    while s < _213:
                        if s >= mem[mem[_81]]:
                            revert with 'NH{q', 50
                        _302 = mem[(32 * s) + mem[_81] + 32]
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _302
                        require ext_code.size(nftAddress)
                        call nftAddress.0x42842e0e with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _302
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if s == -1:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 13
                        s = s + 1
                        continue 
                    if sub_bff1dc04[address(msg.sender)] < _213:
                        revert with 'NH{q', 17
                    sub_bff1dc04[address(msg.sender)] -= _213
                    if sub_7414180d[address(msg.sender)] < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 15
                    sub_7414180d[address(msg.sender)] -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if _213 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _213:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _322 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_322] == bool(mem[_322])
                        mem[mem[64] + 4] = stor9
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor9, msg.sender, (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _330 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_330] == bool(mem[_330])
                        if sub_eeb58d0a < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        sub_eeb58d0a -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_9ffd36b0 < _213:
                            revert with 'NH{q', 17
                        sub_9ffd36b0 -= _213
                        _334 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_334] = mem[_81]
                        mem[_334 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_334 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_334 + 96] = 1
                        mem[32] = 13
                        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 13)
                        _338 = mem[_334]
                        _339 = mem[mem[_334]]
                        sub_c8b6cbf7[address(msg.sender)][idx].field_0 = mem[mem[_334]]
                        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                        if not _339:
                            s = sha3(mem[0])
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        else:
                            t = sha3(mem[0])
                            s = _338 + 32
                            while _338 + (32 * _339) + 32 > s:
                                stor[t] = mem[s]
                                mem[0] = msg.sender
                                mem[32] = 13
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[0]) + (Mask(251, 0, (32 * _339) + 31) >> 5)
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        sub_c8b6cbf7[address(msg.sender)][idx].field_256 = mem[_334 + 32]
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _213) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _213) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _213):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _213 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _213 * apr) / 100:
                            revert with 'NH{q', 17
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _323 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_323] == bool(mem[_323])
                        mem[mem[64] + 4] = stor9
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _213 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args stor9, msg.sender, (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _213 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_331] == bool(mem[_331])
                        if sub_eeb58d0a < sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        sub_eeb58d0a -= sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_9ffd36b0 < _213:
                            revert with 'NH{q', 17
                        sub_9ffd36b0 -= _213
                        _340 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_340] = mem[_81]
                        mem[_340 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_340 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_340 + 96] = 1
                        mem[32] = 13
                        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                            revert with 'NH{q', 50
                        mem[0] = sha3(address(msg.sender), 13)
                        _345 = mem[_340]
                        _346 = mem[mem[_340]]
                        sub_c8b6cbf7[address(msg.sender)][idx].field_0 = mem[mem[_340]]
                        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                        if not _346:
                            s = sha3(mem[0])
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        else:
                            t = sha3(mem[0])
                            s = _345 + 32
                            while _345 + (32 * _346) + 32 > s:
                                stor[t] = mem[s]
                                mem[0] = msg.sender
                                mem[32] = 13
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(mem[0]) + (Mask(251, 0, (32 * _346) + 31) >> 5)
                            while sha3((4 * idx) + sha3(sha3(address(msg.sender), 13))) + sub_c8b6cbf7[address(msg.sender)][idx].field_0 > s:
                                stor[s] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                s = s + 1
                                continue 
                        sub_c8b6cbf7[address(msg.sender)][idx].field_256 = mem[_340 + 32]
                    uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768) = 1
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[mem[64] + 64] = _213
                    emit Withdrawn(msg.sender, sub_c8b6cbf7[address(msg.sender)][idx].field_256, _213);
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 13
        idx = idx + 1
        continue 
    revert with 0, 'There are no rewards to claim at the moment.'
}

function sub_460664d3(?) payable {
    if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_c8b6cbf7[address(msg.sender)].field_0
    if not sub_c8b6cbf7[address(msg.sender)].field_0:
        if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128] = sub_c8b6cbf7[address(msg.sender)].field_0
        if not sub_c8b6cbf7[address(msg.sender)].field_0:
            if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
                revert with 'NH{q', 65
            mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)].field_0
            mem[64] = (98 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192
            if not sub_c8b6cbf7[address(msg.sender)].field_0:
                mem[0] = msg.sender
                mem[32] = 13
                idx = 0
                while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
                    mem[32] = 13
                    if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                        revert with 'NH{q', 50
                    mem[0] = sha3(address(msg.sender), 13)
                    _217 = mem[64]
                    mem[64] = mem[64] + 128
                    _218 = mem[64]
                    mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
                    mem[_218] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        mem[_217] = _218
                        mem[_217 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_217 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_217 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                        if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                                revert with 'NH{q', 17
                            if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                                revert with 'NH{q', 17
                            if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                    revert with 'NH{q', 17
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                    revert with 'NH{q', 17
                                if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                    revert with 'NH{q', 17
                                if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                            else:
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                                    revert with 'NH{q', 17
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                                    revert with 'NH{q', 17
                                if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                                    revert with 'NH{q', 17
                                if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                        mem[_218 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                        s = _218 + 32
                        t = sha3(mem[0])
                        while _218 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                            mem[0] = msg.sender
                            mem[32] = 13
                            mem[s + 32] = stor1[t]
                            s = s + 32
                            t = t + 1
                            continue 
                        mem[_217] = _218
                        mem[_217 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        mem[_217 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                        mem[_217 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                        if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                            _442 = mem[_218]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                                revert with 'NH{q', 17
                            if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                            if _442 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                                revert with 'NH{q', 17
                            if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _442:
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                    revert with 'NH{q', 17
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                    revert with 'NH{q', 17
                                if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                    revert with 'NH{q', 17
                                if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                            else:
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _442) - 1:
                                    revert with 'NH{q', 17
                                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _442) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _442):
                                    revert with 'NH{q', 17
                                if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _442 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _442 * apr) / 100:
                                    revert with 'NH{q', 17
                                if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _442 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    if idx == -1:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 13
                    idx = idx + 1
                    continue 
                _215 = mem[64]
                mem[mem[64]] = 96
                _303 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[mem[64] + 32] = (32 * _303) + 128
                _391 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
                mem[_215 + (32 * _303) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
                mem[_215 + (32 * _303) + 160 len 32 * _391] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _391]
                mem[_215 + 64] = (32 * _303) + (32 * _391) + 160
                _487 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
                mem[_215 + (32 * _303) + (32 * _391) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
                mem[_215 + (32 * _303) + (32 * _391) + 192 len 32 * _487] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _487]
                return memory
                  from mem[64]
                   len _215 + (32 * _303) + (32 * _391) + (32 * _487) + -mem[64] + 192
            mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
            mem[0] = msg.sender
            mem[32] = 13
            idx = 0
            while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
                mem[32] = 13
                if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 13)
                _221 = mem[64]
                mem[64] = mem[64] + 128
                _222 = mem[64]
                mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
                mem[_222] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                    mem[_221] = _222
                    mem[_221 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_221 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_221 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                    mem[_222 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    s = _222 + 32
                    t = sha3(mem[0])
                    while _222 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                        mem[0] = msg.sender
                        mem[32] = 13
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_221] = _222
                    mem[_221 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_221 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_221 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        _448 = mem[_222]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if _448 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _448:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _448) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _448) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _448):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _448 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _448 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _448 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                continue 
            _219 = mem[64]
            mem[mem[64]] = 96
            _304 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _304) + 128
            _392 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_219 + (32 * _304) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_219 + (32 * _304) + 160 len 32 * _392] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _392]
            mem[_219 + 64] = (32 * _304) + (32 * _392) + 160
            _488 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_219 + (32 * _304) + (32 * _392) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_219 + (32 * _304) + (32 * _392) + 192 len 32 * _488] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _488]
            return memory
              from mem[64]
               len _219 + (32 * _304) + (32 * _392) + (32 * _488) + -mem[64] + 192
        mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
        if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)].field_0
        mem[64] = (98 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192
        if not sub_c8b6cbf7[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 13
            idx = 0
            while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
                mem[32] = 13
                if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 13)
                _225 = mem[64]
                mem[64] = mem[64] + 128
                _226 = mem[64]
                mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
                mem[_226] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                    mem[_225] = _226
                    mem[_225 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_225 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_225 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                    mem[_226 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    s = _226 + 32
                    t = sha3(mem[0])
                    while _226 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                        mem[0] = msg.sender
                        mem[32] = 13
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_225] = _226
                    mem[_225 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_225 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_225 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        _454 = mem[_226]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if _454 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _454:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _454) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _454) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _454):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _454 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _454 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _454 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                continue 
            _223 = mem[64]
            mem[mem[64]] = 96
            _305 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _305) + 128
            _393 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_223 + (32 * _305) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_223 + (32 * _305) + 160 len 32 * _393] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _393]
            mem[_223 + 64] = (32 * _305) + (32 * _393) + 160
            _489 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_223 + (32 * _305) + (32 * _393) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_223 + (32 * _305) + (32 * _393) + 192 len 32 * _489] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _489]
            return memory
              from mem[64]
               len _223 + (32 * _305) + (32 * _393) + (32 * _489) + -mem[64] + 192
        mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
        mem[0] = msg.sender
        mem[32] = 13
        idx = 0
        while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
            mem[32] = 13
            if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 13)
            _229 = mem[64]
            mem[64] = mem[64] + 128
            _230 = mem[64]
            mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
            mem[_230] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
            if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                mem[_229] = _230
                mem[_229 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_229 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_229 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                mem[_230 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                s = _230 + 32
                t = sha3(mem[0])
                while _230 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                    mem[0] = msg.sender
                    mem[32] = 13
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_229] = _230
                mem[_229 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_229 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_229 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    _460 = mem[_230]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if _460 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _460:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _460) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _460) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _460):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _460 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _460 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _460 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            continue 
        _227 = mem[64]
        mem[mem[64]] = 96
        _306 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _306) + 128
        _394 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_227 + (32 * _306) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_227 + (32 * _306) + 160 len 32 * _394] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _394]
        mem[_227 + 64] = (32 * _306) + (32 * _394) + 160
        _490 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_227 + (32 * _306) + (32 * _394) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_227 + (32 * _306) + (32 * _394) + 192 len 32 * _490] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _490]
        return memory
          from mem[64]
           len _227 + (32 * _306) + (32 * _394) + (32 * _490) + -mem[64] + 192
    mem[128 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
    if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128] = sub_c8b6cbf7[address(msg.sender)].field_0
    if not sub_c8b6cbf7[address(msg.sender)].field_0:
        if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
            revert with 'NH{q', 65
        mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)].field_0
        mem[64] = (98 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192
        if not sub_c8b6cbf7[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 13
            idx = 0
            while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
                mem[32] = 13
                if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(msg.sender), 13)
                _233 = mem[64]
                mem[64] = mem[64] + 128
                _234 = mem[64]
                mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
                mem[_234] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                    mem[_233] = _234
                    mem[_233 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_233 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_233 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                else:
                    mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                    mem[_234 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                    s = _234 + 32
                    t = sha3(mem[0])
                    while _234 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                        mem[0] = msg.sender
                        mem[32] = 13
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[_233] = _234
                    mem[_233 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    mem[_233 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                    mem[_233 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                    if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                        _466 = mem[_234]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                            revert with 'NH{q', 17
                        if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                        if _466 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                            revert with 'NH{q', 17
                        if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _466:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                        else:
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _466) - 1:
                                revert with 'NH{q', 17
                            if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _466) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _466):
                                revert with 'NH{q', 17
                            if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _466 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _466 * apr) / 100:
                                revert with 'NH{q', 17
                            if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _466 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 13
                idx = idx + 1
                continue 
            _231 = mem[64]
            mem[mem[64]] = 96
            _307 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * _307) + 128
            _395 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_231 + (32 * _307) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
            mem[_231 + (32 * _307) + 160 len 32 * _395] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _395]
            mem[_231 + 64] = (32 * _307) + (32 * _395) + 160
            _491 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_231 + (32 * _307) + (32 * _395) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
            mem[_231 + (32 * _307) + (32 * _395) + 192 len 32 * _491] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _491]
            return memory
              from mem[64]
               len _231 + (32 * _307) + (32 * _395) + (32 * _491) + -mem[64] + 192
        mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
        mem[0] = msg.sender
        mem[32] = 13
        idx = 0
        while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
            mem[32] = 13
            if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 13)
            _237 = mem[64]
            mem[64] = mem[64] + 128
            _238 = mem[64]
            mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
            mem[_238] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
            if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                mem[_237] = _238
                mem[_237 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_237 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_237 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                mem[_238 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                s = _238 + 32
                t = sha3(mem[0])
                while _238 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                    mem[0] = msg.sender
                    mem[32] = 13
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_237] = _238
                mem[_237 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_237 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_237 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    _472 = mem[_238]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if _472 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _472:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _472) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _472) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _472):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _472 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _472 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _472 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            continue 
        _235 = mem[64]
        mem[mem[64]] = 96
        _308 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _308) + 128
        _396 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_235 + (32 * _308) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_235 + (32 * _308) + 160 len 32 * _396] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _396]
        mem[_235 + 64] = (32 * _308) + (32 * _396) + 160
        _492 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_235 + (32 * _308) + (32 * _396) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_235 + (32 * _308) + (32 * _396) + 192 len 32 * _492] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _492]
        return memory
          from mem[64]
           len _235 + (32 * _308) + (32 * _396) + (32 * _492) + -mem[64] + 192
    mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
    if sub_c8b6cbf7[address(msg.sender)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)].field_0
    mem[64] = (98 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192
    if not sub_c8b6cbf7[address(msg.sender)].field_0:
        mem[0] = msg.sender
        mem[32] = 13
        idx = 0
        while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
            mem[32] = 13
            if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(msg.sender), 13)
            _241 = mem[64]
            mem[64] = mem[64] + 128
            _242 = mem[64]
            mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
            mem[_242] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
            if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                mem[_241] = _242
                mem[_241 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_241 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_241 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
                mem[_242 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
                s = _242 + 32
                t = sha3(mem[0])
                while _242 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                    mem[0] = msg.sender
                    mem[32] = 13
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                mem[_241] = _242
                mem[_241 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                mem[_241 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
                mem[_241 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
                if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                    _478 = mem[_242]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                    if _478 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                        revert with 'NH{q', 17
                    if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _478:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                    else:
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _478) - 1:
                            revert with 'NH{q', 17
                        if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _478) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _478):
                            revert with 'NH{q', 17
                        if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _478 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _478 * apr) / 100:
                            revert with 'NH{q', 17
                        if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _478 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 13
            idx = idx + 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 96
        _309 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _309) + 128
        _397 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_239 + (32 * _309) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
        mem[_239 + (32 * _309) + 160 len 32 * _397] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _397]
        mem[_239 + 64] = (32 * _309) + (32 * _397) + 160
        _493 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_239 + (32 * _309) + (32 * _397) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
        mem[_239 + (32 * _309) + (32 * _397) + 192 len 32 * _493] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _493]
        return memory
          from mem[64]
           len _239 + (32 * _309) + (32 * _397) + (32 * _493) + -mem[64] + 192
    mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * sub_c8b6cbf7[address(msg.sender)].field_0] = call.data[calldata.size len 32 * sub_c8b6cbf7[address(msg.sender)].field_0]
    mem[0] = msg.sender
    mem[32] = 13
    idx = 0
    while idx < sub_c8b6cbf7[address(msg.sender)].field_0:
        mem[32] = 13
        if idx >= sub_c8b6cbf7[address(msg.sender)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(msg.sender), 13)
        _245 = mem[64]
        mem[64] = mem[64] + 128
        _246 = mem[64]
        mem[64] = mem[64] + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) + 32
        mem[_246] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
        if not sub_c8b6cbf7[address(msg.sender)][idx].field_0:
            mem[_245] = _246
            mem[_245 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
            mem[_245 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
            mem[_245 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
            if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                    revert with 'NH{q', 17
                if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                if sub_c8b6cbf7[address(msg.sender)][idx].field_0 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                    revert with 'NH{q', 17
                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                    revert with 'NH{q', 17
                if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0:
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                        revert with 'NH{q', 17
                    if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                        revert with 'NH{q', 17
                    if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                else:
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) - 1:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0):
                        revert with 'NH{q', 17
                    if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100:
                        revert with 'NH{q', 17
                    if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * sub_c8b6cbf7[address(msg.sender)][idx].field_0 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
        else:
            mem[0] = (4 * idx) + sha3(sha3(address(msg.sender), 13))
            mem[_246 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_0
            s = _246 + 32
            t = sha3(mem[0])
            while _246 + (32 * sub_c8b6cbf7[address(msg.sender)][idx].field_0) > s:
                mem[0] = msg.sender
                mem[32] = 13
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            mem[_245] = _246
            mem[_245 + 32] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
            mem[_245 + 64] = sub_c8b6cbf7[address(msg.sender)][idx].field_512
            mem[_245 + 96] = bool(uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768))
            if not uint8(sub_c8b6cbf7[address(msg.sender)][idx].field_768):
                _484 = mem[_246]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = sub_c8b6cbf7[address(msg.sender)][idx].field_256
                if sub_c8b6cbf7[address(msg.sender)][idx].field_512 > -lockPeriod - 1:
                    revert with 'NH{q', 17
                if idx >= mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160] = sub_c8b6cbf7[address(msg.sender)][idx].field_512 + lockPeriod
                if _484 > 0x192f9ab81379bf5278a92a03d1f70fab366a7ccd8cba717:
                    revert with 'NH{q', 17
                if sub_c8b6cbf7[address(msg.sender)][idx].field_256 and 30 > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256:
                    revert with 'NH{q', 17
                if 30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 <= 3000 * 10^18 * _484:
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > -(30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) - 1:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100):
                        revert with 'NH{q', 17
                    if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100:
                        revert with 'NH{q', 17
                    if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (30 * sub_c8b6cbf7[address(msg.sender)][idx].field_256 / 100 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
                else:
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 > (-3000 * 10^18 * _484) - 1:
                        revert with 'NH{q', 17
                    if sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _484) and apr > -1 / sub_c8b6cbf7[address(msg.sender)][idx].field_256 + (3000 * 10^18 * _484):
                        revert with 'NH{q', 17
                    if (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _484 * apr) / 100 and lockPeriod > -1 / (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _484 * apr) / 100:
                        revert with 'NH{q', 17
                    if idx >= mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192] = (sub_c8b6cbf7[address(msg.sender)][idx].field_256 * apr) + (3000 * 10^18 * _484 * apr) / 100 * lockPeriod / 8760 * 24 * 3600
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 13
        idx = idx + 1
        continue 
    _243 = mem[64]
    mem[mem[64]] = 96
    _310 = mem[96]
    mem[mem[64] + 96] = mem[96]
    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * _310) + 128
    _398 = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
    mem[_243 + (32 * _310) + 128] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 128]
    mem[_243 + (32 * _310) + 160 len 32 * _398] = mem[(32 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160 len 32 * _398]
    mem[_243 + 64] = (32 * _310) + (32 * _398) + 160
    _494 = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
    mem[_243 + (32 * _310) + (32 * _398) + 160] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 160]
    mem[_243 + (32 * _310) + (32 * _398) + 192 len 32 * _494] = mem[(64 * sub_c8b6cbf7[address(msg.sender)].field_0) + 192 len 32 * _494]
    return memory
      from mem[64]
       len _243 + (32 * _310) + (32 * _398) + (32 * _494) + -mem[64] + 192
}



}
