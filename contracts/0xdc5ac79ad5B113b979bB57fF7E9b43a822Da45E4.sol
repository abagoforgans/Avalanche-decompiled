contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - reclaimTokens(address arg1, uint256 arg2, address arg3)
#  - sub_ddc64598(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address stor51;
uint64 stor101;
uint128 stor101; offset 64
address owner;
uint8 paused;
address stor201;
uint256 stor202;
address lpTokenAddress;
address sub_a2419a6bAddress;
mapping of struct poolInfo;
mapping of struct nftInfo;
mapping of address rewardTokens;
array of struct sub_c82b882c;
mapping of uint256 sub_6b5399b8;
array of struct sub_19c78b43;

function sub_19c78b43(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_19c78b43[arg1].field_0
    return sub_19c78b43[arg1][arg2].field_0, sub_19c78b43[arg1][arg2].field_256
}

function nftInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(nftInfo[arg1].field_0), nftInfo[arg1].field_256, nftInfo[arg1].field_512, bool(uint8(nftInfo[arg1].field_768))
}

function paused() {
    return bool(paused)
}

function lpToken() {
    return lpTokenAddress
}

function sub_6b5399b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6b5399b8[arg1]
}

function owner() {
    return owner
}

function sub_964efe81(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_19c78b43[address(arg1)].field_0 < 1:
        revert with 0, 17
    if sub_19c78b43[address(arg1)].field_0 - 1 >= sub_19c78b43[address(arg1)].field_0:
        revert with 0, 50
    return sub_19c78b43[address(arg1)][sub_19c78b43[address(arg1)].field_0 - 1].field_0
}

function poolInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256
}

function sub_a2419a6b(?) {
    return sub_a2419a6bAddress
}

function sub_c82b882c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_c82b882c[arg1].field_0
    return sub_c82b882c[arg1][arg2].field_0
}

function rewardTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardTokens[arg1]
}

function _fallback() payable {
    revert
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor201)
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor51)
}

function renouncePauser() {
    if stor201 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    emit PauserChanged(stor201, 0);
    stor201 = 0
}

function changePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor201 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    require arg1
    emit PauserChanged(stor201, arg1);
    stor201 = arg1
}

function renounceOwnership() {
    if stor51 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if stor201 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor51 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() {
    if stor201 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor51 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
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

function updateLiquidityProvider(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERR__LIQUIDITY_PROVIDER_IS_ZERO'
    sub_a2419a6bAddress = arg1
    emit 0xc4c228af: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor51 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_22b5c821(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if stor51 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    sub_19c78b43[address(cd[4])].field_0++
    sub_19c78b43[address(cd[4])][sub_19c78b43[address(cd[4])].field_0].field_0 = cd[36]
    sub_19c78b43[address(cd[4])][sub_19c78b43[address(cd[4])].field_0].field_256 = block.timestamp
    emit 0x4c0d746c: cd[36], address(cd[4])
}

function sub_18a1f564(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    if stor51 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if rewardTokens[address(cd[4])]:
        revert with 0, 'ERR__POOL_ALREADY_INITIALIZED'
    if not address(cd[4]):
        revert with 0, 'ERR__BASE_TOKEN_IS_ZERO'
    if not address(cd[36]):
        revert with 0, 'ERR_REWARD_TOKEN_IS_ZERO'
    rewardTokens[address(cd[4])] = address(cd[36])
    sub_19c78b43[address(cd[4])].field_0++
    sub_19c78b43[address(cd[4])][sub_19c78b43[address(cd[4])].field_0].field_0 = cd[68]
    sub_19c78b43[address(cd[4])][sub_19c78b43[address(cd[4])].field_0].field_256 = block.timestamp
    emit 0x7c250d92: address(cd[4]), address(cd[36]), cd[68]
}

function sub_ce8efa0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c82b882c[address(arg1)].field_0:
        mem[128] = sub_c82b882c[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_c82b882c[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_c82b882c[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_c82b882c[address(arg1)].field_0, data=mem[128 len 32 * sub_c82b882c[address(arg1)].field_0])
    mem[(32 * sub_c82b882c[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_c82b882c[address(arg1)].field_0) + 160] = sub_c82b882c[address(arg1)].field_0
    mem[(32 * sub_c82b882c[address(arg1)].field_0) + 192 len 32 * sub_c82b882c[address(arg1)].field_0] = mem[128 len 32 * sub_c82b882c[address(arg1)].field_0]
    return memory
      from (32 * sub_c82b882c[address(arg1)].field_0) + 128
       len (96 * sub_c82b882c[address(arg1)].field_0) + 64
}

function sub_46cf889c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 259
    if sub_19c78b43[address(arg1)].field_0 < 1:
        revert with 0, 17
    s = stor[sha3(mem[0 len 64])] - 1
    idx = block.timestamp
    t = 0
    while poolInfo[address(arg1)].field_256 < idx:
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        mem[32] = 259
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 259)
        if poolInfo[address(arg1)].field_256 >= sub_19c78b43[address(arg1)][s].field_256:
            if s != 0:
                if not s:
                    revert with 0, 17
                s = s - 1
                idx = sub_19c78b43[address(arg1)][s].field_256
                t = t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0)
                continue 
            if t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0):
                revert with 0, 17
            if not sub_6b5399b8[address(arg1)]:
                revert with 0, 18
            if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
                revert with 0, 17
            return (((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0)
        if s != 0:
            if not s:
                revert with 0, 17
            s = s - 1
            idx = sub_19c78b43[address(arg1)][s].field_256
            t = t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0)
            continue 
        if t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0):
            revert with 0, 17
        if not sub_6b5399b8[address(arg1)]:
            revert with 0, 18
        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
            revert with 0, 17
        return (((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0)
    if t and 10^12 > -1 / t:
        revert with 0, 17
    if not sub_6b5399b8[address(arg1)]:
        revert with 0, 18
    if 10^12 * t / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
        revert with 0, 17
    return ((10^12 * t / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0)
}

function updatePool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp <= poolInfo[address(arg1)].field_256:
        return poolInfo[address(arg1)].field_0, poolInfo[address(arg1)].field_256
    if not sub_6b5399b8[address(arg1)]:
        poolInfo[address(arg1)].field_256 = block.timestamp
        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(arg1)], poolInfo[address(arg1)].field_0, arg1);
        return poolInfo[address(arg1)].field_0, block.timestamp
    mem[0] = arg1
    mem[32] = 259
    if sub_19c78b43[address(arg1)].field_0 < 1:
        revert with 0, 17
    s = stor[sha3(mem[0 len 64])] - 1
    idx = block.timestamp
    t = 0
    while poolInfo[address(arg1)].field_256 < idx:
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        mem[32] = 259
        if s >= sub_19c78b43[address(arg1)].field_0:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 259)
        if poolInfo[address(arg1)].field_256 >= sub_19c78b43[address(arg1)][s].field_256:
            if s != 0:
                if not s:
                    revert with 0, 17
                s = s - 1
                idx = sub_19c78b43[address(arg1)][s].field_256
                t = t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0)
                continue 
            if t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0):
                revert with 0, 17
            if not sub_6b5399b8[address(arg1)]:
                revert with 0, 18
            if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
                revert with 0, 17
            poolInfo[address(arg1)].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]
            poolInfo[address(arg1)].field_256 = block.timestamp
            emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(arg1)], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, arg1);
            return ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * poolInfo[address(arg1)].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, 
                   block.timestamp
        if s != 0:
            if not s:
                revert with 0, 17
            s = s - 1
            idx = sub_19c78b43[address(arg1)][s].field_256
            t = t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0)
            continue 
        if t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(arg1)][s].field_0) - (sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0):
            revert with 0, 17
        if not sub_6b5399b8[address(arg1)]:
            revert with 0, 18
        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
            revert with 0, 17
        poolInfo[address(arg1)].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]
        poolInfo[address(arg1)].field_256 = block.timestamp
        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(arg1)], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, arg1);
        return ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(arg1)][s].field_0) - (10^12 * sub_19c78b43[address(arg1)][s].field_256 * sub_19c78b43[address(arg1)][s].field_0) / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, 
               block.timestamp
    if t and 10^12 > -1 / t:
        revert with 0, 17
    if not sub_6b5399b8[address(arg1)]:
        revert with 0, 18
    if 10^12 * t / sub_6b5399b8[address(arg1)] > !poolInfo[address(arg1)].field_0:
        revert with 0, 17
    poolInfo[address(arg1)].field_0 += 10^12 * t / sub_6b5399b8[address(arg1)]
    poolInfo[address(arg1)].field_256 = block.timestamp
    emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(arg1)], (10^12 * t / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, arg1);
    return (10^12 * t / sub_6b5399b8[address(arg1)]) + poolInfo[address(arg1)].field_0, block.timestamp
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        stor51 = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor51 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor51 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor51 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor51 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        stor51 = arg1
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
    if stor51 != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint64(stor101.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor101.field_64) = 0
        emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg2:
        revert with 0, 'Pauser Address cannot be 0'
    if uint8(stor0.field_8):
        paused = 0
        stor201 = arg2
        stor202 = 1
        sub_a2419a6bAddress = arg3
        lpTokenAddress = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor201 = arg2
            stor202 = 1
            sub_a2419a6bAddress = arg3
            lpTokenAddress = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor201 = arg2
                stor202 = 1
                sub_a2419a6bAddress = arg3
                lpTokenAddress = arg4
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor201 = arg2
                    stor202 = 1
                    sub_a2419a6bAddress = arg3
                    lpTokenAddress = arg4
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    paused = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor201 = arg2
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor202 = 1
                        sub_a2419a6bAddress = arg3
                        lpTokenAddress = arg4
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor202 = 1
                            sub_a2419a6bAddress = arg3
                            lpTokenAddress = arg4
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor202 = 1
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            sub_a2419a6bAddress = arg3
                            lpTokenAddress = arg4
                            uint8(stor0.field_8) = 0
}

function pendingToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(nftInfo[arg1].field_768):
        return 0
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x6914db60 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_a2419a6bAddress)
    staticcall sub_a2419a6bAddress.0x3ed77114 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 18
    if block.timestamp <= poolInfo[address(ext_call.return_data[0])].field_256:
        if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12 < nftInfo[arg1].field_256:
            revert with 0, 17
        if (ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12) - nftInfo[arg1].field_256 > !nftInfo[arg1].field_512:
            revert with 0, 17
        return ((ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12) - nftInfo[arg1].field_256 + nftInfo[arg1].field_512)
    if not sub_6b5399b8[address(ext_call.return_data[0])]:
        if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12 < nftInfo[arg1].field_256:
            revert with 0, 17
        if (ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12) - nftInfo[arg1].field_256 > !nftInfo[arg1].field_512:
            revert with 0, 17
        return ((ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12) - nftInfo[arg1].field_256 + nftInfo[arg1].field_512)
    mem[0] = address(ext_call.return_data[0])
    mem[32] = 259
    if sub_19c78b43[address(ext_call.return_data[0])].field_0 < 1:
        revert with 0, 17
    s = stor[sha3(mem[0 len 64])] - 1
    idx = block.timestamp
    t = 0
    while poolInfo[address(ext_call.return_data[0])].field_256 < idx:
        if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
            revert with 0, 50
        if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
            revert with 0, 50
        mem[32] = 259
        if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
            revert with 0, 50
        mem[0] = sha3(address(ext_call.return_data[0]), 259)
        if poolInfo[address(ext_call.return_data[0])].field_256 >= sub_19c78b43[address(ext_call.return_data[0])][s].field_256:
            if s != 0:
                if not s:
                    revert with 0, 17
                s = s - 1
                idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
                t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
                continue 
            if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
                revert with 0, 17
            if not sub_6b5399b8[address(ext_call.return_data[0])]:
                revert with 0, 18
            if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                revert with 0, 17
            if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                revert with 0, 17
            if ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12 < nftInfo[arg1].field_256:
                revert with 0, 17
            if (((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 > !nftInfo[arg1].field_512:
                revert with 0, 17
            return ((((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 + nftInfo[arg1].field_512)
        if s != 0:
            if not s:
                revert with 0, 17
            s = s - 1
            idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
            t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
            continue 
        if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
            revert with 0, 17
        if not sub_6b5399b8[address(ext_call.return_data[0])]:
            revert with 0, 18
        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
            revert with 0, 17
        if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
            revert with 0, 17
        if ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12 < nftInfo[arg1].field_256:
            revert with 0, 17
        if (((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 > !nftInfo[arg1].field_512:
            revert with 0, 17
        return ((((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 + nftInfo[arg1].field_512)
    if t and 10^12 > -1 / t:
        revert with 0, 17
    if not sub_6b5399b8[address(ext_call.return_data[0])]:
        revert with 0, 18
    if 10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
        revert with 0, 17
    if ext_call.return_data[64] / ext_call.return_data[0] and (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
        revert with 0, 17
    if (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12 < nftInfo[arg1].field_256:
        revert with 0, 17
    if ((10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 > !nftInfo[arg1].field_512:
        revert with 0, 17
    return (((10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12) - nftInfo[arg1].field_256 + nftInfo[arg1].field_512)
}

function deposit(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if paused:
        revert with 0, 'Pausable: paused'
    if stor202 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor202 = 2
    if not arg2:
        revert with 0, 'ERR__TO_IS_ZERO'
    require ext_code.size(lpTokenAddress)
    if stor51 != msg.sender:
        staticcall lpTokenAddress.0xe985e9c5 with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(lpTokenAddress)
            staticcall lpTokenAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0, 'ERR__NOT_APPROVED'
        if uint8(nftInfo[arg1].field_768):
            revert with 0, 'ERR__NFT_ALREADY_STAKED'
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x6914db60 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_a2419a6bAddress)
        staticcall sub_a2419a6bAddress.0x3ed77114 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not rewardTokens[address(ext_call.return_data[0])]:
            revert with 0, 'ERR__POOL_NOT_INITIALIZED'
        if not sub_19c78b43[address(ext_call.return_data[0])].field_0:
            revert with 0, 'ERR__POOL_NOT_INITIALIZED'
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if paused:
            revert with 0, 'Pausable: paused'
        if block.timestamp <= poolInfo[address(ext_call.return_data[0])].field_256:
            uint8(nftInfo[arg1].field_768) = 1
            address(nftInfo[arg1].field_0) = arg2
            if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                revert with 0, 17
            nftInfo[arg1].field_256 = ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12
        else:
            if not sub_6b5399b8[address(ext_call.return_data[0])]:
                poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                uint8(nftInfo[arg1].field_768) = 1
                address(nftInfo[arg1].field_0) = arg2
                if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                    revert with 0, 17
                nftInfo[arg1].field_256 = ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12
            else:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 259
                if sub_19c78b43[address(ext_call.return_data[0])].field_0 < 1:
                    revert with 0, 17
                s = stor[sha3(mem[0 len 64])] - 1
                idx = block.timestamp
                t = 0
                while poolInfo[address(ext_call.return_data[0])].field_256 < idx:
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    mem[32] = 259
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    mem[0] = sha3(address(ext_call.return_data[0]), 259)
                    if poolInfo[address(ext_call.return_data[0])].field_256 >= sub_19c78b43[address(ext_call.return_data[0])][s].field_256:
                        if s != 0:
                            if not s:
                                revert with 0, 17
                            s = s - 1
                            idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
                            t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
                            continue 
                        if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
                            revert with 0, 17
                        if not sub_6b5399b8[address(ext_call.return_data[0])]:
                            revert with 0, 18
                        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                            revert with 0, 17
                        poolInfo[address(ext_call.return_data[0])].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]
                        poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                        uint8(nftInfo[arg1].field_768) = 1
                        address(nftInfo[arg1].field_0) = arg2
                        if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                            revert with 0, 17
                        nftInfo[arg1].field_256 = ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
                    else:
                        if s != 0:
                            if not s:
                                revert with 0, 17
                            s = s - 1
                            idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
                            t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
                            continue 
                        if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
                            revert with 0, 17
                        if not sub_6b5399b8[address(ext_call.return_data[0])]:
                            revert with 0, 18
                        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                            revert with 0, 17
                        poolInfo[address(ext_call.return_data[0])].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]
                        poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                        uint8(nftInfo[arg1].field_768) = 1
                        address(nftInfo[arg1].field_0) = arg2
                        if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                            revert with 0, 17
                        nftInfo[arg1].field_256 = ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
                    sub_c82b882c[address(arg2)].field_0++
                    sub_c82b882c[address(arg2)][sub_c82b882c[address(arg2)].field_0].field_0 = arg1
                    if sub_6b5399b8[address(ext_call.return_data[0])] > !(ext_call.return_data[64] / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_6b5399b8[address(ext_call.return_data[0])] += ext_call.return_data[64] / ext_call.return_data[0]
                    emit LogDeposit(arg1, msg.sender, address(ext_call.return_data[0]));
                    stor202 = 1
                if t and 10^12 > -1 / t:
                    revert with 0, 17
                if not sub_6b5399b8[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if 10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                    revert with 0, 17
                poolInfo[address(ext_call.return_data[0])].field_0 += 10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]
                poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                uint8(nftInfo[arg1].field_768) = 1
                address(nftInfo[arg1].field_0) = arg2
                if ext_call.return_data[64] / ext_call.return_data[0] and (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                    revert with 0, 17
                nftInfo[arg1].field_256 = (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
        sub_c82b882c[address(arg2)].field_0++
        sub_c82b882c[address(arg2)][sub_c82b882c[address(arg2)].field_0].field_0 = arg1
        if sub_6b5399b8[address(ext_call.return_data[0])] > !(ext_call.return_data[64] / ext_call.return_data[0]):
            revert with 0, 17
        sub_6b5399b8[address(ext_call.return_data[0])] += ext_call.return_data[64] / ext_call.return_data[0]
        emit LogDeposit(arg1, msg.sender, address(ext_call.return_data[0]));
    else:
        staticcall lpTokenAddress.0xe985e9c5 with:
                gas gas_remaining wei
               args Mask(64, 96, cd[(calldata.size - 20)]) << 96, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            require ext_code.size(lpTokenAddress)
            staticcall lpTokenAddress.getApproved(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != this.address:
                revert with 0, 'ERR__NOT_APPROVED'
        if uint8(nftInfo[arg1].field_768):
            revert with 0, 'ERR__NFT_ALREADY_STAKED'
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x6914db60 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_a2419a6bAddress)
        staticcall sub_a2419a6bAddress.0x3ed77114 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not rewardTokens[address(ext_call.return_data[0])]:
            revert with 0, 'ERR__POOL_NOT_INITIALIZED'
        if not sub_19c78b43[address(ext_call.return_data[0])].field_0:
            revert with 0, 'ERR__POOL_NOT_INITIALIZED'
        require ext_code.size(lpTokenAddress)
        call lpTokenAddress.0x42842e0e with:
             gas gas_remaining wei
            args Mask(64, 96, cd[(calldata.size - 20)]) << 96, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if paused:
            revert with 0, 'Pausable: paused'
        if block.timestamp <= poolInfo[address(ext_call.return_data[0])].field_256:
            uint8(nftInfo[arg1].field_768) = 1
            address(nftInfo[arg1].field_0) = arg2
            if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                revert with 0, 17
            nftInfo[arg1].field_256 = ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12
        else:
            if not sub_6b5399b8[address(ext_call.return_data[0])]:
                poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                uint8(nftInfo[arg1].field_768) = 1
                address(nftInfo[arg1].field_0) = arg2
                if ext_call.return_data[64] / ext_call.return_data[0] and poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                    revert with 0, 17
                nftInfo[arg1].field_256 = ext_call.return_data[64] / ext_call.return_data[0] * poolInfo[address(ext_call.return_data[0])].field_0 / 10^12
            else:
                mem[0] = address(ext_call.return_data[0])
                mem[32] = 259
                if sub_19c78b43[address(ext_call.return_data[0])].field_0 < 1:
                    revert with 0, 17
                s = stor[sha3(mem[0 len 64])] - 1
                idx = block.timestamp
                t = 0
                while poolInfo[address(ext_call.return_data[0])].field_256 < idx:
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    mem[32] = 259
                    if s >= sub_19c78b43[address(ext_call.return_data[0])].field_0:
                        revert with 0, 50
                    mem[0] = sha3(address(ext_call.return_data[0]), 259)
                    if poolInfo[address(ext_call.return_data[0])].field_256 >= sub_19c78b43[address(ext_call.return_data[0])][s].field_256:
                        if s != 0:
                            if not s:
                                revert with 0, 17
                            s = s - 1
                            idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
                            t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
                            continue 
                        if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
                            revert with 0, 17
                        if not sub_6b5399b8[address(ext_call.return_data[0])]:
                            revert with 0, 18
                        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                            revert with 0, 17
                        poolInfo[address(ext_call.return_data[0])].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]
                        poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                        uint8(nftInfo[arg1].field_768) = 1
                        address(nftInfo[arg1].field_0) = arg2
                        if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                            revert with 0, 17
                        nftInfo[arg1].field_256 = ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * poolInfo[address(ext_call.return_data[0])].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
                    else:
                        if s != 0:
                            if not s:
                                revert with 0, 17
                            s = s - 1
                            idx = sub_19c78b43[address(ext_call.return_data[0])][s].field_256
                            t = t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0)
                            continue 
                        if t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) and 10^12 > -1 / t + (idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0):
                            revert with 0, 17
                        if not sub_6b5399b8[address(ext_call.return_data[0])]:
                            revert with 0, 18
                        if (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                            revert with 0, 17
                        poolInfo[address(ext_call.return_data[0])].field_0 += (10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]
                        poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                        emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                        uint8(nftInfo[arg1].field_768) = 1
                        address(nftInfo[arg1].field_0) = arg2
                        if ext_call.return_data[64] / ext_call.return_data[0] and ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                            revert with 0, 17
                        nftInfo[arg1].field_256 = ((10^12 * t) + (10^12 * idx * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) - (10^12 * sub_19c78b43[address(ext_call.return_data[0])][s].field_256 * sub_19c78b43[address(ext_call.return_data[0])][s].field_0) / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
                    sub_c82b882c[address(arg2)].field_0++
                    sub_c82b882c[address(arg2)][sub_c82b882c[address(arg2)].field_0].field_0 = arg1
                    if sub_6b5399b8[address(ext_call.return_data[0])] > !(ext_call.return_data[64] / ext_call.return_data[0]):
                        revert with 0, 17
                    sub_6b5399b8[address(ext_call.return_data[0])] += ext_call.return_data[64] / ext_call.return_data[0]
                    emit LogDeposit(arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(ext_call.return_data[0]));
                    stor202 = 1
                if t and 10^12 > -1 / t:
                    revert with 0, 17
                if not sub_6b5399b8[address(ext_call.return_data[0])]:
                    revert with 0, 18
                if 10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] > !poolInfo[address(ext_call.return_data[0])].field_0:
                    revert with 0, 17
                poolInfo[address(ext_call.return_data[0])].field_0 += 10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]
                poolInfo[address(ext_call.return_data[0])].field_256 = block.timestamp
                emit LogUpdatePool(block.timestamp, sub_6b5399b8[address(ext_call.return_data[0])], (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0, address(ext_call.return_data[0]));
                uint8(nftInfo[arg1].field_768) = 1
                address(nftInfo[arg1].field_0) = arg2
                if ext_call.return_data[64] / ext_call.return_data[0] and (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])]) + poolInfo[address(ext_call.return_data[0])].field_0 > -1 / ext_call.return_data[64] / ext_call.return_data[0]:
                    revert with 0, 17
                nftInfo[arg1].field_256 = (10^12 * t / sub_6b5399b8[address(ext_call.return_data[0])] * ext_call.return_data[64] / ext_call.return_data[0]) + (poolInfo[address(ext_call.return_data[0])].field_0 * ext_call.return_data[64] / ext_call.return_data[0]) / 10^12
        sub_c82b882c[address(arg2)].field_0++
        sub_c82b882c[address(arg2)][sub_c82b882c[address(arg2)].field_0].field_0 = arg1
        if sub_6b5399b8[address(ext_call.return_data[0])] > !(ext_call.return_data[64] / ext_call.return_data[0]):
            revert with 0, 17
        sub_6b5399b8[address(ext_call.return_data[0])] += ext_call.return_data[64] / ext_call.return_data[0]
        emit LogDeposit(arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96, address(ext_call.return_data[0]));
    stor202 = 1
}



}
