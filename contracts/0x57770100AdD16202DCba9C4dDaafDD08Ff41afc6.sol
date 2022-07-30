contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1)
#  - redeem(uint256 arg1)
#
const name = 'Degis Purchase Incentive Vault', 0

const sub_b4ac62c5(?) = 50

const SCALE = 10^18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
uint256 stor151;
address stor201;
address stor202;
uint256 currentRound;
uint256 sub_c708c5f4;
uint256 distributionInterval;
uint256 lastDistribution;
mapping of struct sub_1aeee41d;
array of struct users;
mapping of uint256 sub_2f017901;
array of struct stor210;
array of uint256 stor211;

function sub_1aeee41d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1aeee41d[arg1].field_256
}

function sub_2f017901(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_2f017901[arg1][arg2]
}

function paused() payable {
    return bool(paused)
}

function distributionInterval() payable {
    return distributionInterval
}

function currentRound() payable {
    return currentRound
}

function rounds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_1aeee41d[arg1].field_0, bool(sub_1aeee41d[arg1].field_512), sub_1aeee41d[arg1].field_768
}

function owner() payable {
    return owner
}

function lastDistribution() payable {
    return lastDistribution
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0
}

function sub_c708c5f4(?) payable {
    return sub_c708c5f4
}

function sub_ddd9d045(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_2f017901[address(arg1)][arg2]
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
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_e6848ead(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x8c48647d: sub_c708c5f4, arg1
    sub_c708c5f4 = arg1
}

function setDistributionInterval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xbcbec4c9: distributionInterval, arg1
    distributionInterval = arg1
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    paused = 0
    stor151 = 1
    stor201 = arg1
    stor202 = arg2
    lastDistribution = block.timestamp
}

function sub_c42d5efb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if users[address(arg1)].field_256:
        mem[128] = users[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * users[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = users[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=users[address(arg1)].field_256, data=mem[128 len 32 * users[address(arg1)].field_256])
    mem[(32 * users[address(arg1)].field_256) + 128] = 32
    mem[(32 * users[address(arg1)].field_256) + 160] = users[address(arg1)].field_256
    mem[(32 * users[address(arg1)].field_256) + 192 len 32 * users[address(arg1)].field_256] = mem[128 len 32 * users[address(arg1)].field_256]
    return memory
      from (32 * users[address(arg1)].field_256) + 128
       len (96 * users[address(arg1)].field_256) + 64
}

function sub_ef618eb5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * sub_1aeee41d[arg1].field_256) + 128
    mem[96] = sub_1aeee41d[arg1].field_256
    if not sub_1aeee41d[arg1].field_256:
        mem[(32 * sub_1aeee41d[arg1].field_256) + 128] = 32
        mem[(32 * sub_1aeee41d[arg1].field_256) + 160] = sub_1aeee41d[arg1].field_256
        idx = 0
        s = 128
        t = (32 * sub_1aeee41d[arg1].field_256) + 192
        while idx < sub_1aeee41d[arg1].field_256:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_1aeee41d[arg1].field_256) + 128
           len (96 * sub_1aeee41d[arg1].field_256) + 64
    mem[128] = sub_1aeee41d[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_1aeee41d[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_1aeee41d[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_1aeee41d[arg1].field_256) + 128] = 32
    mem[(32 * sub_1aeee41d[arg1].field_256) + 160] = sub_1aeee41d[arg1].field_256
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_1aeee41d[arg1].field_256:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_1aeee41d[arg1].field_256) + -mem[64] + 192
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not users[address(arg1)].field_256:
        if users[address(arg1)].field_256 < users[address(arg1)].field_0:
            revert with 0, 17
        if users[address(arg1)].field_0 > !(users[address(arg1)].field_256 - users[address(arg1)].field_0):
            revert with 0, 17
        if var42002 >= users[address(arg1)].field_256:
            return var42006
        if var44001 >= users[address(arg1)].field_256:
            revert with 0, 50
        if var48001 and var48002 > -1 / var48001:
            revert with 0, 17
        if var60001 > !var60002:
            revert with 0, 17
        if not var66001 + 1:
            revert with 0, 17
        # nil
    else:
        idx = 192
        s = 0
        while (32 * users[address(arg1)].field_256) + 160 > idx:
            mem[idx + 32] = users[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if users[address(arg1)].field_256 < users[address(arg1)].field_0:
            revert with 0, 17
        if users[address(arg1)].field_0 > !(users[address(arg1)].field_256 - users[address(arg1)].field_0):
            revert with 0, 17
        if var46002 >= users[address(arg1)].field_256:
            return var46006
        if var48001 >= users[address(arg1)].field_256:
            revert with 0, 50
        if var52001 and var52002 > -1 / var52001:
            revert with 0, 17
        if var64001 > !var64002:
            revert with 0, 17
        if not var70001 + 1:
            revert with 0, 17
        # nil
}

function sub_482d1adb(?) payable {
    mem[96] = stor210.length
    if not stor210.length:
        if not -stor210.length:
            return sub_c708c5f4
        if stor210.length < 1:
            revert with 0, 17
        if var11001 >= stor210.length:
            revert with 0, 50
        if sub_1aeee41d[stor203].field_0 < mem[(32 * var13001) + 128]:
            idx = var13003
            while idx - 1 < stor210.length:
                if sub_1aeee41d[stor203].field_0 < mem[(32 * idx - 1) + 128]:
                    idx = idx - 1
                    continue 
                if idx - 1 >= stor211.length:
                    revert with 0, 50
                return stor211[idx]
            revert with 0, 50
        if var13003 >= stor211.length:
            revert with 0, 50
        return stor211[var13003]
    mem[128] = uint256(stor210.field_0)
    idx = 128
    s = 0
    while (32 * stor210.length) + 96 > idx:
        mem[idx + 32] = stor210[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not -stor210.length:
        return sub_c708c5f4
    if stor210.length < 1:
        revert with 0, 17
    if var15001 >= stor210.length:
        revert with 0, 50
    if sub_1aeee41d[stor203].field_0 < mem[(32 * var17001) + 128]:
        idx = var17003
        while idx - 1 < stor210.length:
            if sub_1aeee41d[stor203].field_0 < mem[(32 * idx - 1) + 128]:
                idx = idx - 1
                continue 
            if idx - 1 >= stor211.length:
                revert with 0, 50
            return stor211[idx]
        revert with 0, 50
    if var17003 >= stor211.length:
        revert with 0, 50
    return stor211[var17003]
}

function sub_c966fbf8(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor210.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor210.length > idx:
            stor210[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor210[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor210.length > idx:
            stor210[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor211.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor211.length > idx:
            stor211[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor211[s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor211.length > idx:
            stor211[idx] = 0
            idx = idx + 1
            continue 
}

function sub_ca1fe809(?) payable {
    if block.timestamp < lastDistribution:
        revert with 0, 17
    if block.timestamp - lastDistribution <= distributionInterval:
        revert with 366474243
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_1aeee41d[stor203].field_512:
        revert with 2918766657
    mem[96] = stor210.length
    if not stor210.length:
        if not -stor210.length:
            if not -sub_1aeee41d[stor203].field_0:
                sub_1aeee41d[stor203].field_768 = 0
            else:
                if sub_c708c5f4 and 10^18 > -1 / sub_c708c5f4:
                    revert with 0, 17
                if not sub_1aeee41d[stor203].field_0:
                    revert with 0, 18
                sub_1aeee41d[stor203].field_768 = 10^18 * sub_c708c5f4 / sub_1aeee41d[stor203].field_0
        else:
            if stor210.length < 1:
                revert with 0, 17
            if var18001 >= stor210.length:
                revert with 0, 50
            if sub_1aeee41d[stor203].field_0 < mem[(32 * var20001) + 128]:
                idx = var20003
                while idx - 1 < stor210.length:
                    if sub_1aeee41d[stor203].field_0 < mem[(32 * idx - 1) + 128]:
                        idx = idx - 1
                        continue 
                    if idx - 1 >= stor211.length:
                        revert with 0, 50
                    if not -sub_1aeee41d[stor203].field_0:
                        sub_1aeee41d[stor203].field_768 = 0
                    else:
                        if stor211[idx] and 10^18 > -1 / stor211[idx]:
                            revert with 0, 17
                        if not sub_1aeee41d[stor203].field_0:
                            revert with 0, 18
                        sub_1aeee41d[stor203].field_768 = 10^18 * stor211[idx] / sub_1aeee41d[stor203].field_0
                    sub_1aeee41d[stor203].field_512 = 1
                    emit 0x84ea2725: currentRound, block.timestamp
                    if not currentRound + 1:
                        revert with 0, 17
                    currentRound++
                    lastDistribution = block.timestamp
                revert with 0, 50
            if var20003 >= stor211.length:
                revert with 0, 50
            if not -sub_1aeee41d[stor203].field_0:
                sub_1aeee41d[stor203].field_768 = 0
            else:
                if stor211[var20003] and 10^18 > -1 / stor211[var20003]:
                    revert with 0, 17
                if not sub_1aeee41d[stor203].field_0:
                    revert with 0, 18
                sub_1aeee41d[stor203].field_768 = 10^18 * stor211[var20003] / sub_1aeee41d[stor203].field_0
    else:
        mem[128] = uint256(stor210.field_0)
        idx = 128
        s = 0
        while (32 * stor210.length) + 96 > idx:
            mem[idx + 32] = stor210[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not -stor210.length:
            if not -sub_1aeee41d[stor203].field_0:
                sub_1aeee41d[stor203].field_768 = 0
            else:
                if sub_c708c5f4 and 10^18 > -1 / sub_c708c5f4:
                    revert with 0, 17
                if not sub_1aeee41d[stor203].field_0:
                    revert with 0, 18
                sub_1aeee41d[stor203].field_768 = 10^18 * sub_c708c5f4 / sub_1aeee41d[stor203].field_0
        else:
            if stor210.length < 1:
                revert with 0, 17
            if var22001 >= stor210.length:
                revert with 0, 50
            if sub_1aeee41d[stor203].field_0 < mem[(32 * var24001) + 128]:
                idx = var24003
                while idx - 1 < stor210.length:
                    if sub_1aeee41d[stor203].field_0 < mem[(32 * idx - 1) + 128]:
                        idx = idx - 1
                        continue 
                    if idx - 1 >= stor211.length:
                        revert with 0, 50
                    if not -sub_1aeee41d[stor203].field_0:
                        sub_1aeee41d[stor203].field_768 = 0
                    else:
                        if stor211[idx] and 10^18 > -1 / stor211[idx]:
                            revert with 0, 17
                        if not sub_1aeee41d[stor203].field_0:
                            revert with 0, 18
                        sub_1aeee41d[stor203].field_768 = 10^18 * stor211[idx] / sub_1aeee41d[stor203].field_0
                    sub_1aeee41d[stor203].field_512 = 1
                    emit 0x84ea2725: currentRound, block.timestamp
                    if not currentRound + 1:
                        revert with 0, 17
                    currentRound++
                    lastDistribution = block.timestamp
                revert with 0, 50
            if var24003 >= stor211.length:
                revert with 0, 50
            if not -sub_1aeee41d[stor203].field_0:
                sub_1aeee41d[stor203].field_768 = 0
            else:
                if stor211[var24003] and 10^18 > -1 / stor211[var24003]:
                    revert with 0, 17
                if not sub_1aeee41d[stor203].field_0:
                    revert with 0, 18
                sub_1aeee41d[stor203].field_768 = 10^18 * stor211[var24003] / sub_1aeee41d[stor203].field_0
    sub_1aeee41d[stor203].field_512 = 1
    emit 0x84ea2725: currentRound, block.timestamp
    if not currentRound + 1:
        revert with 0, 17
    currentRound++
    lastDistribution = block.timestamp
}

function claim() payable {
    if not stor151 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    mem[160] = users[msg.sender].field_256
    if users[msg.sender].field_256:
        idx = 192
        s = 0
        while (32 * users[msg.sender].field_256) + 160 > idx:
            mem[idx + 32] = users[msg.sender][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not -users[msg.sender].field_256:
            revert with 1928735657
        if users[msg.sender].field_256 < users[msg.sender].field_0:
            revert with 0, 17
        if not -users[msg.sender].field_256 + users[msg.sender].field_0:
            revert with 3568942906
        if users[msg.sender].field_256 < 1:
            revert with 0, 17
        if users[msg.sender].field_256 - 1 >= users[msg.sender].field_256:
            revert with 0, 50
        if mem[(32 * users[msg.sender].field_256 - 1) + 192] - currentRound:
            if users[msg.sender].field_256 - users[msg.sender].field_0 <= 50:
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                users[msg.sender].field_0 = users[msg.sender].field_256
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                if var46002 >= users[msg.sender].field_256:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var46003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var48001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var52001 and var52002 > -1 / var52001:
                    revert with 0, 17
                if var64001 > !var64002:
                    revert with 0, 17
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                # nil
            else:
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                users[msg.sender].field_0 += 50
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var46002 >= users[msg.sender].field_0 + 50:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var46003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var48001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var52001 and var52002 > -1 / var52001:
                    revert with 0, 17
                if var64001 > !var64002:
                    revert with 0, 17
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                # nil
        else:
            if users[msg.sender].field_256 - users[msg.sender].field_0 < 1:
                revert with 0, 17
            if users[msg.sender].field_256 + -users[msg.sender].field_0 - 1 <= 50:
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                users[msg.sender].field_0 = users[msg.sender].field_256 - 1
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                if var50002 >= users[msg.sender].field_256 - 1:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var50003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var52001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var56001 and var56002 > -1 / var56001:
                    revert with 0, 17
                if var68001 > !var68002:
                    revert with 0, 17
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                # nil
            else:
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                users[msg.sender].field_0 += 50
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var50002 >= users[msg.sender].field_0 + 50:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var50003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var52001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var56001 and var56002 > -1 / var56001:
                    revert with 0, 17
                if var68001 > !var68002:
                    revert with 0, 17
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                # nil
    else:
        if not -users[msg.sender].field_256:
            revert with 1928735657
        if users[msg.sender].field_256 < users[msg.sender].field_0:
            revert with 0, 17
        if not -users[msg.sender].field_256 + users[msg.sender].field_0:
            revert with 3568942906
        if users[msg.sender].field_256 < 1:
            revert with 0, 17
        if users[msg.sender].field_256 - 1 >= users[msg.sender].field_256:
            revert with 0, 50
        if mem[(32 * users[msg.sender].field_256 - 1) + 192] - currentRound:
            if users[msg.sender].field_256 - users[msg.sender].field_0 <= 50:
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                users[msg.sender].field_0 = users[msg.sender].field_256
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                if var42002 >= users[msg.sender].field_256:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var42003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var44001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var48001 and var48002 > -1 / var48001:
                    revert with 0, 17
                if var60001 > !var60002:
                    revert with 0, 17
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 - users[msg.sender].field_0):
                    revert with 0, 17
                if var72002 < users[msg.sender].field_256:
                    # nil
                else:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var72003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
            else:
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                users[msg.sender].field_0 += 50
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var42002 >= users[msg.sender].field_0 + 50:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var42003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var44001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var48001 and var48002 > -1 / var48001:
                    revert with 0, 17
                if var60001 > !var60002:
                    revert with 0, 17
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var72002 < users[msg.sender].field_0 + 50:
                    # nil
                else:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var72003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
        else:
            if users[msg.sender].field_256 - users[msg.sender].field_0 < 1:
                revert with 0, 17
            if users[msg.sender].field_256 + -users[msg.sender].field_0 - 1 <= 50:
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                users[msg.sender].field_0 = users[msg.sender].field_256 - 1
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                if var46002 >= users[msg.sender].field_256 - 1:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var46003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var48001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var52001 and var52002 > -1 / var52001:
                    revert with 0, 17
                if var64001 > !var64002:
                    revert with 0, 17
                if users[msg.sender].field_0 > !(users[msg.sender].field_256 + -users[msg.sender].field_0 - 1):
                    revert with 0, 17
                if var76002 < users[msg.sender].field_256 - 1:
                    # nil
                else:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var76003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
            else:
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                users[msg.sender].field_0 += 50
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var46002 >= users[msg.sender].field_0 + 50:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var46003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
                if var48001 >= users[msg.sender].field_256:
                    revert with 0, 50
                if var52001 and var52002 > -1 / var52001:
                    revert with 0, 17
                if var64001 > !var64002:
                    revert with 0, 17
                if users[msg.sender].field_0 > -51:
                    revert with 0, 17
                if var76002 < users[msg.sender].field_0 + 50:
                    # nil
                else:
                    require ext_code.size(stor202)
                    call stor202.0xb4767398 with:
                         gas gas_remaining wei
                        args msg.sender, var76003
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor151 = 1
}



}
