contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6b9f69b4Address;
address ERC721_CONTRACTAddress;
uint256 EXPIRATION;
array of struct stor4;
mapping of uint256 depositBlocks;
mapping of uint256 tokenRarity;
array of uint256 rewardRate;
uint8 stor14;
uint256 stor14;

function depositBlocks(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return depositBlocks[arg1][arg2]
}

function ERC721_CONTRACT() payable {
    return ERC721_CONTRACTAddress
}

function sub_6b9f69b4(?) payable {
    return sub_6b9f69b4Address
}

function owner() payable {
    return owner
}

function tokenRarity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenRarity[arg1]
}

function EXPIRATION() payable {
    return EXPIRATION
}

function rewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 7
    return rewardRate[arg1]
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

function toggleStart() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14) = not bool(uint8(stor14)) or Mask(248, 8, uint256(stor14))
}

function setExpiration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    EXPIRATION = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6b9f69b4Address = arg1
}

function setRarity(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenRarity[arg1] = arg2
}

function setRate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 7:
        revert with 'NH{q', 50
    rewardRate[arg1] = arg2
}

function findRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenRarity[arg1] >= 7:
        revert with 'NH{q', 50
    if rewardRate[stor6[arg1]] and 10^18 > -1 / rewardRate[stor6[arg1]]:
        revert with 'NH{q', 17
    return (10^18 * rewardRate[stor6[arg1]] / 6000)
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

function sub_a2d0e650(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == cd[36]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        tokenRarity[mem[(32 * idx) + 128]] = cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function depositsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[32] = 4
    if stor4[address(arg1)].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor4[address(arg1)].field_0
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    if not stor4[address(arg1)].field_0:
        if var46002 >= stor4[address(arg1)].field_0:
            mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
            mem[(32 * stor4[address(arg1)].field_0) + 192 len 32 * stor4[address(arg1)].field_0] = mem[128 len 32 * stor4[address(arg1)].field_0]
            return memory
              from (32 * stor4[address(arg1)].field_0) + 128
               len (96 * stor4[address(arg1)].field_0) + 64
        if var52001 >= stor4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if var58002 >= stor4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[(32 * var58002) + 128] = var58001
        s = var58002
        t = var58001
        idx = var58002
        while idx != -1:
            if idx + 1 >= stor4[address(arg1)].field_0:
                mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
                mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
                idx = 0
                u = 128
                v = (32 * stor4[address(arg1)].field_0) + 192
                while idx < stor4[address(arg1)].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor4[address(arg1)].field_0) + 128
                   len (96 * stor4[address(arg1)].field_0) + 64
            mem[0] = sha3(address(arg1), 4)
            if idx + 1 >= stor4[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor4[address(arg1)][idx].field_512
            s = idx + 1
            t = stor4[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor4[address(arg1)].field_0] = call.data[calldata.size len 32 * stor4[address(arg1)].field_0]
        if var47002 >= stor4[address(arg1)].field_0:
            mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
            mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
            mem[(32 * stor4[address(arg1)].field_0) + 192 len 32 * stor4[address(arg1)].field_0] = call.data[calldata.size len 32 * stor4[address(arg1)].field_0]
            return memory
              from (32 * stor4[address(arg1)].field_0) + 128
               len (96 * stor4[address(arg1)].field_0) + 64
        if var53001 >= stor4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 4)
        if var59002 >= stor4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[(32 * var59002) + 128] = var59001
        s = var59002
        t = var59001
        idx = var59002
        while idx != -1:
            if idx + 1 >= stor4[address(arg1)].field_0:
                mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
                mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
                idx = 0
                u = 128
                v = (32 * stor4[address(arg1)].field_0) + 192
                while idx < stor4[address(arg1)].field_0:
                    mem[v] = mem[u]
                    mem[(32 * s) + 128] = t
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor4[address(arg1)].field_0) + 128
                   len (96 * stor4[address(arg1)].field_0) + 64
            mem[0] = sha3(address(arg1), 4)
            if idx + 1 >= stor4[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[(32 * idx + 2) + 128] = stor4[address(arg1)][idx].field_512
            s = idx + 1
            t = stor4[address(arg1)][idx].field_256
            idx = idx + 1
            continue 
    revert with 'NH{q', 17
}

function calculateRewards(address arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg2.length) + 97] = arg2.length
    if arg2.length:
        mem[floor32(arg2.length) + 129 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if tokenRarity[mem[(32 * idx) + 128]] >= 7:
            revert with 'NH{q', 50
        if rewardRate[stor6[mem[(32 * idx) + 128]]] and 10^18 > -1 / rewardRate[stor6[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(arg1)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 4) + 1
            if stor4[address(arg1)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and block.number - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = (block.number * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(arg1)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and block.number - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = 0
        else:
            if EXPIRATION < depositBlocks[address(arg1)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 4) + 1
            if stor4[address(arg1)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and EXPIRATION - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = (EXPIRATION * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(arg1)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and EXPIRATION - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return Array(len=arg2.length, data=mem[floor32(arg2.length) + 129 len 32 * arg2.length])
}

function claimRewards(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if tokenRarity[mem[(32 * idx) + 128]] >= 7:
            revert with 'NH{q', 50
        if rewardRate[stor6[mem[(32 * idx) + 128]]] and 10^18 > -1 / rewardRate[stor6[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        else:
            if EXPIRATION < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if block.number < EXPIRATION:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    else:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = EXPIRATION
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length > 0:
        require ext_code.size(sub_6b9f69b4Address)
        call sub_6b9f69b4Address.0x20e45f6e with:
             gas gas_remaining wei
            args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not uint8(stor14):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakeSeals: Staking contract not started yet'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if tokenRarity[mem[(32 * idx) + 128]] >= 7:
            revert with 'NH{q', 50
        if rewardRate[stor6[mem[(32 * idx) + 128]]] and 10^18 > -1 / rewardRate[stor6[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        else:
            if EXPIRATION < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if block.number < EXPIRATION:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    else:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = EXPIRATION
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length > 0:
        require ext_code.size(sub_6b9f69b4Address)
        call sub_6b9f69b4Address.0x20e45f6e with:
             gas gas_remaining wei
            args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        mem[(64 * arg1.length) + 160] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg1.length) + 164] = msg.sender
        mem[(64 * arg1.length) + 196] = this.address
        mem[(64 * arg1.length) + 228] = cd[((32 * idx) + arg1 + 36)]
        mem[(64 * arg1.length) + 260] = 128
        mem[(64 * arg1.length) + 292] = 0
        require ext_code.size(ERC721_CONTRACTAddress)
        call ERC721_CONTRACTAddress.0xb88d4fde with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = sha3(address(msg.sender), 4) + 1
        if not stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0:
            stor4[address(msg.sender)].field_0++
            stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + arg1 + 36)]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 4) + 1
            stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0 = stor4[address(msg.sender)].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b97e439a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if tokenRarity[mem[(32 * idx) + 128]] >= 7:
            revert with 'NH{q', 50
        if rewardRate[stor6[mem[(32 * idx) + 128]]] and 10^18 > -1 / rewardRate[stor6[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = (block.number * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
        else:
            if EXPIRATION < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = (EXPIRATION * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if block.number < EXPIRATION:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * ('cd', 4).length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)]] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            continue 
    else:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * ('cd', 4).length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + cd[4] + 36)]] = EXPIRATION
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            continue 
    if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length > 0:
        require ext_code.size(sub_6b9f69b4Address)
        call sub_6b9f69b4Address.0x20e45f6e with:
             gas gas_remaining wei
            args msg.sender, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        mem[(64 * ('cd', 4).length) + 160] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[(64 * ('cd', 4).length) + 164] = msg.sender
        mem[(64 * ('cd', 4).length) + 196] = this.address
        mem[(64 * ('cd', 4).length) + 228] = cd[((32 * idx) + cd[4] + 36)]
        mem[(64 * ('cd', 4).length) + 260] = 128
        mem[(64 * ('cd', 4).length) + 292] = 0
        require ext_code.size(ERC721_CONTRACTAddress)
        call ERC721_CONTRACTAddress.0xb88d4fde with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + cd[4] + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(address(msg.sender), 4) + 1
        if not stor4[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0:
            stor4[address(msg.sender)].field_0++
            stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 4) + 1
            stor4[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]].field_0 = stor4[address(msg.sender)].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if tokenRarity[mem[(32 * idx) + 128]] >= 7:
            revert with 'NH{q', 50
        if rewardRate[stor6[mem[(32 * idx) + 128]]] and 10^18 > -1 / rewardRate[stor6[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        else:
            if EXPIRATION < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 4) + 1
            if stor4[address(msg.sender)][1][mem[(32 * idx) + 128]].field_0:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 1 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000)
            else:
                if 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000 and 0 > -1 / 10^18 * rewardRate[stor6[mem[(32 * idx) + 128]]] / 6000:
                    revert with 'NH{q', 17
                if False and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > 0:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if block.number < EXPIRATION:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    else:
        idx = 0
        s = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + (32 * arg1.length) + 160] - 1:
                revert with 'NH{q', 17
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5)
            depositBlocks[address(msg.sender)][cd[((32 * idx) + arg1 + 36)]] = EXPIRATION
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length > 0:
        require ext_code.size(sub_6b9f69b4Address)
        call sub_6b9f69b4Address.0x20e45f6e with:
             gas gas_remaining wei
            args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < arg1.length:
        if not stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0:
            revert with 0, 'StakeSeals: Token not deposited'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = sha3(address(msg.sender), 4) + 1
        if stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0:
            if stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0 < 1:
                revert with 'NH{q', 17
            if stor4[address(msg.sender)].field_0 < 1:
                revert with 'NH{q', 17
            if stor4[address(msg.sender)].field_0 - 1 != stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0 - 1:
                if stor4[address(msg.sender)].field_0 - 1 >= stor4[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                if stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0 - 1 >= stor4[address(msg.sender)].field_0:
                    revert with 'NH{q', 50
                stor4[address(msg.sender)][stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0].field_0 = stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0
                stor4[address(msg.sender)][1][stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0].field_0 = stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0
            if not stor4[address(msg.sender)].field_0:
                revert with 'NH{q', 49
            stor4[address(msg.sender)][stor4[address(msg.sender)].field_0].field_0 = 0
            stor4[address(msg.sender)].field_0--
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 4) + 1
            stor4[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[(64 * arg1.length) + 160] = 0xb88d4fde00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg1.length) + 164] = this.address
        mem[(64 * arg1.length) + 196] = msg.sender
        mem[(64 * arg1.length) + 228] = cd[((32 * idx) + arg1 + 36)]
        mem[(64 * arg1.length) + 260] = 128
        mem[(64 * arg1.length) + 292] = 0
        require ext_code.size(ERC721_CONTRACTAddress)
        call ERC721_CONTRACTAddress.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
