contract main {




// =====================  Runtime code  =====================


#
#  - sub_6f2df4d1(?)
#  - sub_92c8eab6(?)
#  - sub_f614a54c(?)
#
address stor2;
address owner;
address governanceAddress;
address stakingContractAddress;
address sub_44a88cf6Address;
address sub_a4d290c2Address;
uint256 stor11;
uint128 stor12; offset 160
address stor12;
uint256 stor13;
array of struct stor14;
uint256 stor15;
uint256 sub_8056d3f0;
uint256 sub_17037512;
uint256 sub_38e1d337;
uint256 sub_841674a1;
uint256 sub_e11e5e8d;
uint256 lastRandom;
uint256 id;
uint8 lotteryState;
uint256 stor23;
uint256 maxTickets;
uint256 sub_4a1cb686;
mapping of uint256 sub_4ba57450;
array of address sub_9068bcf9;
array of uint256 sub_75db55d9;
uint8 sub_e8730333;
uint256 sub_b4d95087;
array of struct sub_966b08d5;
mapping of uint256 stor32;
array of struct sub_aca4dfc5;
array of struct sub_69fd6f56;
uint256 sub_f08f60c9;
array of uint256 stor6454973039698199198119942482240540643982028891330163610098731264865829167633;
array of uint256 stor26616959624788145501257665028759500958019551560565664426117466910078421933505;
array of address stor43880275961168830825126493365946484747370565303400739422783595429428448060688;
array of uint256 stor72469383181153217859287470524408136624600596745406682853122032531702882555911;

function sub_17037512(?) payable {
    return sub_17037512
}

function sub_38e1d337(?) payable {
    return sub_38e1d337
}

function sub_44a88cf6(?) payable {
    return sub_44a88cf6Address
}

function sub_4a1cb686(?) payable {
    return sub_4a1cb686
}

function sub_4ba57450(?) payable {
    return sub_4ba57450[address(msg.sender)]
}

function governance() payable {
    return governanceAddress
}

function lotteryState() payable {
    require uint8(lotteryState) < 7
    return uint8(lotteryState)
}

function sub_69fd6f56(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_69fd6f56.length
    return sub_69fd6f56[arg1].field_0
}

function sub_75db55d9(?) payable {
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    return sub_75db55d9[sub_75db55d9.length]
}

function sub_8056d3f0(?) payable {
    return sub_8056d3f0
}

function sub_841674a1(?) payable {
    return sub_841674a1
}

function owner() payable {
    return owner
}

function sub_8f8a0d37(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4ba57450[address(arg1)]
}

function sub_9068bcf9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9068bcf9.length
    return sub_9068bcf9[arg1]
}

function sub_90b728ee(?) payable {
    return sub_b4d95087
}

function sub_966b08d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_966b08d5.length
    return sub_966b08d5[arg1].field_0
}

function maxTickets() payable {
    return maxTickets
}

function sub_a4d290c2(?) payable {
    return sub_a4d290c2Address
}

function lastRandom() payable {
    return lastRandom
}

function sub_aca4dfc5(?) payable {
    return sub_aca4dfc5[address(msg.sender)].field_0
}

function id() payable {
    return id
}

function sub_b4d95087(?) payable {
    return sub_b4d95087
}

function sub_e11e5e8d(?) payable {
    return sub_e11e5e8d
}

function sub_e6e90d5d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_aca4dfc5[address(arg1)].field_0
}

function sub_e8730333(?) payable {
    return bool(sub_e8730333)
}

function stakingContract() payable {
    return stakingContractAddress
}

function sub_f08f60c9(?) payable {
    return sub_f08f60c9
}

function sub_fda9bafb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_aca4dfc5[arg1].field_0
    return sub_aca4dfc5[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function sub_204186a6(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(lotteryState) = 6
}

function sub_0d815a4d(?) payable {
    require calldata.size - 4 >= 32
    if arg1 < sub_9068bcf9.length:
        return sub_9068bcf9[arg1]
    else:
        return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8829bb29(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 7
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 6
    uint256(stor23) = arg1 or Mask(248, 8, uint256(stor23))
    require uint8(lotteryState) < 7
    emit 0x7e376e73: uint8(lotteryState)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function linkBalance() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4f9aaa24(?) payable {
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.getTotalStakedFor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_4a1cb686
    return (ext_call.return_data[0] / sub_4a1cb686)
}

function sub_bdeabb90(?) payable {
    if not sub_4ba57450[address(msg.sender)]:
        return 0
    require sub_4ba57450[address(msg.sender)] < sub_75db55d9.length
    require sub_4ba57450[address(msg.sender)] - 1 < sub_75db55d9.length
    return sub_75db55d9[stor26[address(msg.sender)]] - sub_75db55d9[stor26[address(msg.sender)]], 
           sub_75db55d9[stor26[address(msg.sender)]] + 1,
           sub_75db55d9[stor26[address(msg.sender)]]
}

function sub_35e50f7d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not sub_4ba57450[address(arg1)]:
        return 0
    require sub_4ba57450[address(arg1)] < sub_75db55d9.length
    require sub_4ba57450[address(arg1)] - 1 < sub_75db55d9.length
    return sub_75db55d9[stor26[address(arg1)]] - sub_75db55d9[stor26[address(arg1)]], 
           sub_75db55d9[stor26[address(arg1)]] + 1,
           sub_75db55d9[stor26[address(arg1)]]
}

function sub_fce592ac(?) payable {
    mem[192] = uint256(stor14.field_0)
    idx = 192
    s = 0
    while stor14.length + 192 > idx + 32:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor11, 
           address(stor12.field_0),
           Mask(96, 0, stor12.field_160) << 224,
           stor13,
           160,
           64,
           stor15,
           stor14.length,
           mem[192 len ceil32(stor14.length)]
}

function sub_08213fe1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.getTotalStakedFor(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_4a1cb686
    return (ext_call.return_data[0] / sub_4a1cb686)
}

function setMaxTickets(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(lotteryState) <= 6
    if uint8(lotteryState):
        require uint8(lotteryState) <= 6
        if uint8(lotteryState) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lottery.setMaxTickets: claim period is finished'
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    require arg1 > sub_75db55d9[sub_75db55d9.length]
    maxTickets = arg1
}

function sub_79e37eb6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(lotteryState) <= 6
    if uint8(lotteryState):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lottery.openTicketClaim: claim is not closed'
    sub_8056d3f0 = block.timestamp
    sub_17037512 = arg1
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    sub_b4d95087 = sub_75db55d9[sub_75db55d9.length]
    uint8(lotteryState) = 1
    require uint8(lotteryState) < 7
    emit 0x7e376e73: uint8(lotteryState)
}

function fulfillRandom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require uint8(lotteryState) <= 6
    if uint8(lotteryState) != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery.fulfillRandom: LotteryState is not randomRequested'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Lottery.fulfillRandom: received 0 not a random number'
    lastRandom = arg1
    sub_841674a1 = block.timestamp
    uint8(lotteryState) = 4
    require uint8(lotteryState) < 7
    emit 0x7e376e73: uint8(lotteryState)
}

function sub_7052de7a(?) payable {
    require calldata.size - 4 >= 32
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    if sub_75db55d9[sub_75db55d9.length] != 0:
        if arg1 <= sub_75db55d9[sub_75db55d9.length]:
            if sub_75db55d9.length:
                idx = sub_75db55d9.length
                while 0 < idx:
                    require idx / 2 < sub_75db55d9.length
                    mem[0] = 28
                    if sub_75db55d9[0.5 / idx] <= arg1:
                        idx = idx
                        continue 
                    idx = idx / 2
                    continue 
    if 0 < sub_9068bcf9.length:
        return sub_9068bcf9
    else:
        return 0
}

function sub_594ca1b0(?) payable {
    if sub_966b08d5.length:
        mem[128] = uint256(sub_966b08d5.field_0)
        idx = 128
        s = 0
        while (32 * sub_966b08d5.length) + 96 > idx:
            mem[idx + 32] = sub_966b08d5[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_966b08d5.length, data=mem[128 len 32 * sub_966b08d5.length])
    mem[(32 * sub_966b08d5.length) + 128] = 32
    mem[(32 * sub_966b08d5.length) + 160] = sub_966b08d5.length
    mem[(32 * sub_966b08d5.length) + 192 len 32 * sub_966b08d5.length] = mem[128 len 32 * sub_966b08d5.length]
    return memory
      from (32 * sub_966b08d5.length) + 128
       len (96 * sub_966b08d5.length) + 64
}

function sub_0633486a(?) payable {
    require calldata.size - 4 >= 32
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    if sub_75db55d9[sub_75db55d9.length] != 0:
        if arg1 <= sub_75db55d9[sub_75db55d9.length]:
            if sub_75db55d9.length:
                idx = sub_75db55d9.length
                while 0 < idx:
                    require idx / 2 < sub_75db55d9.length
                    mem[0] = 28
                    if sub_75db55d9[0.5 / idx] <= arg1:
                        idx = idx
                        continue 
                    idx = idx / 2
                    continue 
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function withdrawLink() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}

function sub_b62c06aa(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require uint8(lotteryState) <= 6
    require uint8(lotteryState) == 1
    sub_38e1d337 = block.timestamp
    uint8(lotteryState) = 2
    require ext_code.size(governanceAddress)
    call governanceAddress.0x36013189 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).requestRandomNumber(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args id, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(lotteryState) = 3
    id++
    emit 0x7e376e73: 3
}

function sub_07e9c8ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_aca4dfc5[address(arg1)].field_0:
        mem[128] = sub_aca4dfc5[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_aca4dfc5[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_aca4dfc5[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_aca4dfc5[address(arg1)].field_0, data=mem[128 len 32 * sub_aca4dfc5[address(arg1)].field_0])
    mem[(32 * sub_aca4dfc5[address(arg1)].field_0) + 128] = 32
    mem[(32 * sub_aca4dfc5[address(arg1)].field_0) + 160] = sub_aca4dfc5[address(arg1)].field_0
    mem[(32 * sub_aca4dfc5[address(arg1)].field_0) + 192 len 32 * sub_aca4dfc5[address(arg1)].field_0] = mem[128 len 32 * sub_aca4dfc5[address(arg1)].field_0]
    return memory
      from (32 * sub_aca4dfc5[address(arg1)].field_0) + 128
       len (96 * sub_aca4dfc5[address(arg1)].field_0) + 64
}

function sub_d9960bab(?) payable {
    if sub_aca4dfc5[address(msg.sender)].field_0:
        mem[128] = sub_aca4dfc5[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * sub_aca4dfc5[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = sub_aca4dfc5[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_aca4dfc5[address(msg.sender)].field_0, data=mem[128 len 32 * sub_aca4dfc5[address(msg.sender)].field_0])
    mem[(32 * sub_aca4dfc5[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * sub_aca4dfc5[address(msg.sender)].field_0) + 160] = sub_aca4dfc5[address(msg.sender)].field_0
    mem[(32 * sub_aca4dfc5[address(msg.sender)].field_0) + 192 len 32 * sub_aca4dfc5[address(msg.sender)].field_0] = mem[128 len 32 * sub_aca4dfc5[address(msg.sender)].field_0]
    return memory
      from (32 * sub_aca4dfc5[address(msg.sender)].field_0) + 128
       len (96 * sub_aca4dfc5[address(msg.sender)].field_0) + 64
}

function sub_5d3a2b6a(?) payable {
    mem[64] = (32 * sub_69fd6f56.length) + 128
    mem[96] = sub_69fd6f56.length
    if not sub_69fd6f56.length:
        mem[(32 * sub_69fd6f56.length) + 128] = 32
        mem[(32 * sub_69fd6f56.length) + 160] = sub_69fd6f56.length
        idx = 0
        s = (32 * sub_69fd6f56.length) + 192
        t = 128
        while idx < sub_69fd6f56.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_69fd6f56.length) + 128
           len (96 * sub_69fd6f56.length) + 64
    mem[128] = address(sub_69fd6f56.field_0)
    idx = 128
    s = 0
    while (32 * sub_69fd6f56.length) + 96 > idx:
        mem[idx + 32] = sub_69fd6f56[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_69fd6f56.length) + 128] = 32
    mem[(32 * sub_69fd6f56.length) + 160] = sub_69fd6f56.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_69fd6f56.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_69fd6f56.length) + -mem[64] + 192
}

function sub_81fe4c61(?) payable {
    require uint8(lotteryState) <= 6
    if uint8(lotteryState) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Lottery.claimTickets: ticket claim is not open'
    require ext_code.size(stakingContractAddress)
    staticcall stakingContractAddress.getTotalStakedFor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_4a1cb686
    if ext_call.return_data[0] / sub_4a1cb686 <= 0:
        revert with 0, 'Lottery.claimTickets: no ticket allocation'
    if not sub_4ba57450[address(msg.sender)]:
        if 0 >= ext_call.return_data[0] / sub_4a1cb686:
            revert with 0, 'Lottery.claimTickets: no (more) tickets to claim'
    else:
        require sub_4ba57450[address(msg.sender)] < sub_75db55d9.length
        require sub_4ba57450[address(msg.sender)] - 1 < sub_75db55d9.length
        if sub_75db55d9[stor26[address(msg.sender)]] - sub_75db55d9[stor26[address(msg.sender)]] >= ext_call.return_data[0] / sub_4a1cb686:
            revert with 0, 'Lottery.claimTickets: no (more) tickets to claim'
    require sub_75db55d9.length - 1 < sub_75db55d9.length
    if sub_75db55d9[sub_75db55d9.length] >= maxTickets:
        revert with 0, 'Lottery.claimTickets: no (more) tickets left to claim'
    sub_4ba57450[msg.sender] = sub_75db55d9.length
    sub_75db55d9.length++
    if ext_call.return_data[0] / sub_4a1cb686 <= maxTickets - sub_75db55d9[sub_75db55d9.length]:
        storE456[stor28.length] = (ext_call.return_data[0] / sub_4a1cb686) + sub_75db55d9[sub_75db55d9.length]
        sub_9068bcf9.length++
        stor3AD8[stor27.length] = msg.sender or Mask(96, 160, stor3AD8[stor27.length])
        if sub_75db55d9.length != sub_9068bcf9.length:
            revert with 0, 'Lottery.claimTickets: internal error - array index mismatch'
        emit 0x8695139d: ext_call.return_data[0] / sub_4a1cb686, 64, 38, 'Lottery.claimTickets: claim succ', 0x65737366756c0000000000000000000000000000000000000000000000000000
    else:
        storE456[stor28.length] = maxTickets
        sub_9068bcf9.length++
        stor3AD8[stor27.length] = msg.sender or Mask(96, 160, stor3AD8[stor27.length])
        if sub_75db55d9.length != sub_9068bcf9.length:
            revert with 0, 'Lottery.claimTickets: internal error - array index mismatch'
        emit 0x8695139d: maxTickets - sub_75db55d9[sub_75db55d9.length], 64, 38, 'Lottery.claimTickets: claim succ', 0x65737366756c0000000000000000000000000000000000000000000000000000
}

function sub_d8cb08ab(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'getNextTicket: internal error - randomTicketNumber == 0'
    if arg1 > sub_b4d95087:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'getNextTicket: internal error - randomTicketNumber out of range'
    if not stor32[stor30]:
        stor32[arg1] = sub_b4d95087
    else:
        stor32[arg1] = stor32[stor30]
    stor32[stor30] = 0
    sub_b4d95087--
    sub_966b08d5.length++
    if not stor32[arg1]:
        storA038[stor31.length] = arg1
        require sub_75db55d9.length - 1 < sub_75db55d9.length
        if sub_75db55d9[sub_75db55d9.length] != 0:
            if arg1 <= sub_75db55d9[sub_75db55d9.length]:
                if sub_75db55d9.length:
                    idx = sub_75db55d9.length
                    while 0 < idx:
                        require idx / 2 < sub_75db55d9.length
                        mem[0] = 28
                        if sub_75db55d9[0.5 / idx] <= arg1:
                            idx = idx
                            continue 
                        idx = idx / 2
                        continue 
        require 0 < sub_9068bcf9.length
        if not sub_aca4dfc5[stor27].field_0:
            sub_69fd6f56.length++
            stor6103[stor34.length] = sub_9068bcf9
        sub_aca4dfc5[stor27].field_0++
        sub_aca4dfc5[stor27][sub_aca4dfc5[stor27].field_0].field_0 = arg1
        if arg1 < sub_9068bcf9.length:
            return sub_9068bcf9[arg1]
    else:
        storA038[stor31.length] = stor32[arg1]
        require sub_75db55d9.length - 1 < sub_75db55d9.length
        if sub_75db55d9[sub_75db55d9.length] != 0:
            if stor32[arg1] <= sub_75db55d9[sub_75db55d9.length]:
                if sub_75db55d9.length:
                    idx = sub_75db55d9.length
                    while 0 < idx:
                        require idx / 2 < sub_75db55d9.length
                        mem[0] = 28
                        if sub_75db55d9[0.5 / idx] <= stor32[arg1]:
                            idx = idx
                            continue 
                        idx = idx / 2
                        continue 
        require 0 < sub_9068bcf9.length
        if not sub_aca4dfc5[stor27].field_0:
            sub_69fd6f56.length++
            stor6103[stor34.length] = sub_9068bcf9
        sub_aca4dfc5[stor27].field_0++
        sub_aca4dfc5[stor27][sub_aca4dfc5[stor27].field_0].field_0 = stor32[arg1]
        if stor32[arg1] < sub_9068bcf9.length:
            return sub_9068bcf9[stor32[arg1]]
    return 0
}



}
