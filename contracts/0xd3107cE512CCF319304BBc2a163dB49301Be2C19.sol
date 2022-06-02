contract main {




// =====================  Runtime code  =====================


#
#  - depositsOf(address arg1)
#
address owner;
address sub_ec04327aAddress;
address sub_6b9f69b4Address;
address ERC721_CONTRACTAddress;
uint256 EXPIRATION;
array of uint256 stor5;
mapping of uint256 depositBlocks;
mapping of uint256 tokenRarity;
mapping of uint256 sub_44fddb3c;
mapping of uint256 prestige;
array of uint256 rewardRate;
array of uint256 sub_b72425e3;
uint8 stor20;
uint256 stor20;

function depositBlocks(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return depositBlocks[arg1][arg2]
}

function ERC721_CONTRACT() {
    return ERC721_CONTRACTAddress
}

function sub_44fddb3c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_44fddb3c[arg1]
}

function sub_6b9f69b4(?) {
    return sub_6b9f69b4Address
}

function prestige(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return prestige[arg1]
}

function owner() {
    return owner
}

function tokenRarity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tokenRarity[arg1]
}

function sub_b72425e3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 4
    return sub_b72425e3[arg1]
}

function EXPIRATION() {
    return EXPIRATION
}

function rewardRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 6
    return rewardRate[arg1]
}

function sub_ec04327a(?) {
    return sub_ec04327aAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleStart() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor20) = not bool(uint8(stor20)) or Mask(248, 8, uint256(stor20))
}

function setExpiration(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    EXPIRATION = arg1
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6b9f69b4Address = arg1
}

function setRarity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenRarity[arg1] = arg2
}

function setRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 6:
        revert with 'NH{q', 50
    rewardRate[arg1] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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

function sub_0459c564(?) {
    require calldata.size - 4 >= 32
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 3:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function sub_f4910a61(?) {
    require calldata.size - 4 >= 32
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] == 3:
            return 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function sub_a2d0e650(?) {
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
        mem[32] = 7
        tokenRarity[mem[(32 * idx) + 128]] = cd[36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function findRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_44fddb3c[arg1] >= 4:
        revert with 'NH{q', 50
    if 1 > -prestige[arg1] - 1:
        revert with 'NH{q', 17
    if tokenRarity[arg1] >= 6:
        revert with 'NH{q', 50
    if rewardRate[stor7[arg1]] and prestige[arg1] + 1 > -1 / rewardRate[stor7[arg1]]:
        revert with 'NH{q', 17
    if rewardRate[stor7[arg1]] + (prestige[arg1] * rewardRate[stor7[arg1]]) and sub_b72425e3[stor8[arg1]] > -1 / rewardRate[stor7[arg1]] + (prestige[arg1] * rewardRate[stor7[arg1]]):
        revert with 'NH{q', 17
    if (rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]) + (prestige[arg1] * rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]) and 10^18 > -1 / (rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]) + (prestige[arg1] * rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]):
        revert with 'NH{q', 17
    return ((10^18 * rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]) + (10^18 * prestige[arg1] * rewardRate[stor7[arg1]] * sub_b72425e3[stor8[arg1]]) / 6000)
}

function sub_b0ace769(?) {
    require calldata.size - 4 >= 32
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
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_44fddb3c[mem[(32 * idx) + 128]]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 1:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s > -30001:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 30000
                continue 
            if s > -20001:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 20000
                continue 
            if s + 20000 > -30001:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50000
            continue 
        if s > -10001:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 1:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 10000
                continue 
            if s + 10000 > -30001:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 40000
            continue 
        if s + 10000 > -20001:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 30000
            continue 
        if s + 30000 > -30001:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 60000
        continue 
    return s
}

function sub_e577940d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 3:
            revert with 0, 'One or more of the boob sizes are too small'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if ('cd', 4).length > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 'NH{q', 17
    mem[floor32(('cd', 4).length) + 133] = msg.sender
    mem[floor32(('cd', 4).length) + 165] = this.address
    mem[floor32(('cd', 4).length) + 197] = 10000 * ('cd', 4).length
    mem[floor32(('cd', 4).length) + 97] = 100
    mem[floor32(('cd', 4).length) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[floor32(('cd', 4).length) + 229] = 32
    mem[floor32(('cd', 4).length) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_ec04327aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[floor32(('cd', 4).length) + 293 len 128] = 0, msg.sender, address(this.address), 10000 * ('cd', 4).length, 0
    mem[floor32(('cd', 4).length) + 393] = 0
    call sub_ec04327aAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), 10000 * ('cd', 4).length, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), 10000 * ('cd', 4).length, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 4).length > 0:
                revert with memory
                  from 128
                   len ('cd', 4).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 4).length > 0:
            require ('cd', 4).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[floor32(('cd', 4).length) + 293] = return_data.size
        mem[floor32(('cd', 4).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[floor32(('cd', 4).length) + 325] == bool(mem[floor32(('cd', 4).length) + 325])
            if not mem[floor32(('cd', 4).length) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if prestige[mem[(32 * idx) + 128]] > -2:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        prestige[mem[(32 * idx) + 128]]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_f6f77851(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] == 3:
            revert with 0, 'One or more of the boob sizes are already maxed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_44fddb3c[mem[(32 * idx) + 128]]:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 1:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 8
                if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s > -30001:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 30000
                continue 
            if s > -20001:
                revert with 'NH{q', 17
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 20000
                continue 
            if s + 20000 > -30001:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 50000
            continue 
        if s > -10001:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 1:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 10000
                continue 
            if s + 10000 > -30001:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 40000
            continue 
        if s + 10000 > -20001:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_44fddb3c[mem[(32 * idx) + 128]] != 2:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 30000
            continue 
        if s + 30000 > -30001:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 60000
        continue 
    mem[floor32(('cd', 4).length) + 133] = msg.sender
    mem[floor32(('cd', 4).length) + 165] = this.address
    mem[floor32(('cd', 4).length) + 197] = s
    mem[floor32(('cd', 4).length) + 97] = 100
    mem[floor32(('cd', 4).length) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[floor32(('cd', 4).length) + 229] = 32
    mem[floor32(('cd', 4).length) + 261] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_ec04327aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[floor32(('cd', 4).length) + 293 len 128] = 0, msg.sender, address(this.address), s, 0
    mem[floor32(('cd', 4).length) + 393] = 0
    call sub_ec04327aAddress with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), s, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), s, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 4).length > 0:
                revert with memory
                  from 128
                   len ('cd', 4).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 4).length > 0:
            require ('cd', 4).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[floor32(('cd', 4).length) + 293] = return_data.size
        mem[floor32(('cd', 4).length) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[floor32(('cd', 4).length) + 325] == bool(mem[floor32(('cd', 4).length) + 325])
            if not mem[floor32(('cd', 4).length) + 325]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if sub_44fddb3c[mem[(32 * idx) + 128]] > -2:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        sub_44fddb3c[mem[(32 * idx) + 128]]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function calculateRewards(address arg1, uint256[] arg2) {
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
        if sub_44fddb3c[mem[(32 * idx) + 128]] >= 4:
            revert with 'NH{q', 50
        if 1 > -prestige[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if tokenRarity[mem[(32 * idx) + 128]] >= 6:
            revert with 'NH{q', 50
        if rewardRate[stor7[mem[(32 * idx) + 128]]] and prestige[mem[(32 * idx) + 128]] + 1 > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]) and sub_b72425e3[stor8[mem[(32 * idx) + 128]]] > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) and 10^18 > -1 / (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(arg1)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(arg1), 5) + 1
            if stor5[address(arg1)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and block.number - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = (block.number * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(arg1)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(arg1), 5) + 1
            if stor5[address(arg1)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and EXPIRATION - depositBlocks[address(arg1)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg2.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg2.length) + 129] = (EXPIRATION * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(arg1)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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

function claimRewards(uint256[] arg1) {
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
        if sub_44fddb3c[mem[(32 * idx) + 128]] >= 4:
            revert with 'NH{q', 50
        if 1 > -prestige[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if tokenRarity[mem[(32 * idx) + 128]] >= 6:
            revert with 'NH{q', 50
        if rewardRate[stor7[mem[(32 * idx) + 128]]] and prestige[mem[(32 * idx) + 128]] + 1 > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]) and sub_b72425e3[stor8[mem[(32 * idx) + 128]]] > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) and 10^18 > -1 / (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 6)
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
            mem[32] = sha3(address(msg.sender), 6)
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

function deposit(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not uint8(stor20):
        revert with 0, 'Staking boobas has not started'
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
        if sub_44fddb3c[mem[(32 * idx) + 128]] >= 4:
            revert with 'NH{q', 50
        if 1 > -prestige[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if tokenRarity[mem[(32 * idx) + 128]] >= 6:
            revert with 'NH{q', 50
        if rewardRate[stor7[mem[(32 * idx) + 128]]] and prestige[mem[(32 * idx) + 128]] + 1 > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]) and sub_b72425e3[stor8[mem[(32 * idx) + 128]]] > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) and 10^18 > -1 / (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 6)
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
            mem[32] = sha3(address(msg.sender), 6)
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
        mem[32] = sha3(address(msg.sender), 5) + 1
        if not stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]]:
            stor5[address(msg.sender)]++
            stor5[address(msg.sender)][stor5[address(msg.sender)]] = cd[((32 * idx) + arg1 + 36)]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5) + 1
            stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]] = stor5[address(msg.sender)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b97e439a(?) {
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
        if sub_44fddb3c[mem[(32 * idx) + 128]] >= 4:
            revert with 'NH{q', 50
        if 1 > -prestige[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if tokenRarity[mem[(32 * idx) + 128]] >= 6:
            revert with 'NH{q', 50
        if rewardRate[stor7[mem[(32 * idx) + 128]]] and prestige[mem[(32 * idx) + 128]] + 1 > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]) and sub_b72425e3[stor8[mem[(32 * idx) + 128]]] > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) and 10^18 > -1 / (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = (block.number * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = (EXPIRATION * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 6)
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
            mem[32] = sha3(address(msg.sender), 6)
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
        mem[32] = sha3(address(msg.sender), 5) + 1
        if not stor5[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]]:
            stor5[address(msg.sender)]++
            stor5[address(msg.sender)][stor5[address(msg.sender)]] = cd[((32 * idx) + cd[4] + 36)]
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(msg.sender), 5) + 1
            stor5[address(msg.sender)][1][cd[((32 * idx) + cd[4] + 36)]] = stor5[address(msg.sender)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdraw(uint256[] arg1) {
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
        if sub_44fddb3c[mem[(32 * idx) + 128]] >= 4:
            revert with 'NH{q', 50
        if 1 > -prestige[mem[(32 * idx) + 128]] - 1:
            revert with 'NH{q', 17
        if tokenRarity[mem[(32 * idx) + 128]] >= 6:
            revert with 'NH{q', 50
        if rewardRate[stor7[mem[(32 * idx) + 128]]] and prestige[mem[(32 * idx) + 128]] + 1 > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]]:
            revert with 'NH{q', 17
        if rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]) and sub_b72425e3[stor8[mem[(32 * idx) + 128]]] > -1 / rewardRate[stor7[mem[(32 * idx) + 128]]] + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) and 10^18 > -1 / (rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]):
            revert with 'NH{q', 17
        if block.number < EXPIRATION:
            if block.number < depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and block.number - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (block.number * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 5) + 1
            if stor5[address(msg.sender)][1][mem[(32 * idx) + 128]]:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 1 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and EXPIRATION - depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
                    revert with 'NH{q', 17
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg1.length) + 160] = (EXPIRATION * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000) - (depositBlocks[address(msg.sender)][mem[(32 * idx) + 128]] * (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000)
            else:
                if (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000 and 0 > -1 / (10^18 * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) + (10^18 * prestige[mem[(32 * idx) + 128]] * rewardRate[stor7[mem[(32 * idx) + 128]]] * sub_b72425e3[stor8[mem[(32 * idx) + 128]]]) / 6000:
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
            mem[32] = sha3(address(msg.sender), 6)
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
            mem[32] = sha3(address(msg.sender), 6)
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
        if not stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'Stake boobas: Token not deposited'
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = sha3(address(msg.sender), 5) + 1
        if stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]]:
            if stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]] < 1:
                revert with 'NH{q', 17
            if stor5[address(msg.sender)] < 1:
                revert with 'NH{q', 17
            if stor5[address(msg.sender)] - 1 != stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]] - 1:
                if stor5[address(msg.sender)] - 1 >= stor5[address(msg.sender)]:
                    revert with 'NH{q', 50
                if stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]] - 1 >= stor5[address(msg.sender)]:
                    revert with 'NH{q', 50
                stor5[address(msg.sender)][stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]]] = stor5[address(msg.sender)][stor5[address(msg.sender)]]
                stor5[address(msg.sender)][1][stor5[address(msg.sender)][stor5[address(msg.sender)]]] = stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]]
            if not stor5[address(msg.sender)]:
                revert with 'NH{q', 49
            stor5[address(msg.sender)][stor5[address(msg.sender)]] = 0
            stor5[address(msg.sender)]--
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(address(msg.sender), 5) + 1
            stor5[address(msg.sender)][1][cd[((32 * idx) + arg1 + 36)]] = 0
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
