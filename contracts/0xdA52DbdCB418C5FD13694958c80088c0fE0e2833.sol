contract main {




// =====================  Runtime code  =====================


#
#  - sub_31001272(?)
#  - sub_31783e70(?)
#  - sub_526dbe0a(?)
#  - sub_61e319d6(?)
#  - sub_dac35eed(?)
#
uint256 stor0;
uint256 sub_1983e504;
array of struct auctionCount;
array of struct stor3;
array of address sub_57e929a1;
mapping of uint256 stor5;
mapping of uint256 stor6;
address owner;
address feeToAddress;
uint256 sub_57603b38;
uint256 sub_de8e8999;
uint256 sub_32a1af80;
address bidTokenAddress;
uint256 sub_19afe473;
uint256 sub_684f6b86;
uint256 sub_e9abd85e;
uint256 sub_76affbbb;

function feeTo() {
    return feeToAddress
}

function getAuctionCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return auctionCount[address(arg1)].field_0
}

function sub_1983e504(?) {
    return sub_1983e504
}

function sub_19afe473(?) {
    return sub_19afe473
}

function sub_32a1af80(?) {
    return sub_32a1af80
}

function sub_57603b38(?) {
    return sub_57603b38
}

function sub_57e929a1(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_57e929a1.length:
        revert with 0, 50
    return address(sub_57e929a1[arg1])
}

function sub_684f6b86(?) {
    return sub_684f6b86
}

function sub_76affbbb(?) {
    return sub_76affbbb
}

function getAuctionByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    return auctionCount[address(arg1)][arg2].field_0, 
           auctionCount[address(arg1)][arg2].field_256,
           auctionCount[address(arg1)][arg2].field_512,
           auctionCount[address(arg1)][arg2].field_768,
           auctionCount[address(arg1)][arg2].field_1024,
           auctionCount[address(arg1)][arg2].field_1280,
           auctionCount[address(arg1)][arg2].field_1536,
           auctionCount[address(arg1)][arg2].field_1792,
           auctionCount[address(arg1)][arg2].field_2048
}

function owner() {
    return owner
}

function sub_c6ed3eb9(?) {
    return sub_57e929a1.length
}

function sub_de8e8999(?) {
    return sub_de8e8999
}

function bidToken() {
    return bidTokenAddress
}

function sub_e9abd85e(?) {
    return sub_e9abd85e
}

function _fallback() payable {
    revert
}

function sub_0918d576(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_de8e8999 = arg1
    return 1
}

function sub_14c5d759(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_19afe473 = arg1
    return 1
}

function sub_a6ee37ff(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_57603b38 = arg1
    return 1
}

function sub_b0300d40(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_76affbbb = arg1
    return 1
}

function sub_b0c24ce4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_32a1af80 = arg1
    return 1
}

function sub_ccbecfa6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_e9abd85e = arg1
    return 1
}

function sub_fc26e533(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    sub_684f6b86 = arg1
    return 1
}

function sub_b908c84f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor6[address(arg1)]:
        return stor5[msg.sender]
    return sub_1983e504
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    owner = arg1
    return 1
}

function setFeeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    feeToAddress = arg1
    return 1
}

function sub_501ee126(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Forbidden'
    bidTokenAddress = address(arg1)
    return 1
}

function sub_62d59696(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'FN'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0d587c1e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[0] = arg2
    mem[32] = sha3(address(arg1), 3)
    mem[64] = (32 * stor3[address(arg1)][arg2].field_0) + 128
    mem[96] = stor3[address(arg1)][arg2].field_0
    s = 128
    idx = 0
    while idx < stor3[address(arg1)][arg2].field_0:
        mem[0] = sha3(arg2, sha3(address(arg1), 3))
        _13 = mem[64]
        mem[64] = mem[64] + 64
        mem[_13] = stor3[address(arg1)][arg2][idx].field_0
        mem[_13 + 32] = stor3[address(arg1)][arg2][idx].field_256
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _15:
        _20 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_20 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _14 + (64 * _15) + -mem[64] + 64
}

function sub_f5d69af4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if block.timestamp <= auctionCount[address(arg1)][arg2].field_768:
        return 0
    if not stor3[address(arg1)][arg2].field_0:
        return 0
    if arg3 >= stor3[address(arg1)][arg2].field_0:
        return 0
    if arg3 > stor3[address(arg1)][arg2].field_0:
        revert with 0, '', 0
    if stor3[address(arg1)][arg2].field_0 < arg3:
        revert with 0, 17
    if not sub_76affbbb:
        if arg2 >= auctionCount[address(arg1)].field_0:
            revert with 0, 50
        if auctionCount[address(arg1)][arg2].field_768 > -1:
            revert with 0, 17
        if auctionCount[address(arg1)][arg2].field_768 < auctionCount[address(arg1)][arg2].field_768:
            revert with 0, 'OADD'
        return auctionCount[address(arg1)][arg2].field_768
    if sub_76affbbb and stor3[address(arg1)][arg2].field_0 - arg3 > -1 / sub_76affbbb:
        revert with 0, 17
    if not sub_76affbbb:
        revert with 0, 18
    if (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb) / sub_76affbbb != stor3[address(arg1)][arg2].field_0 - arg3:
        revert with 0, 'OMUL'
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if auctionCount[address(arg1)][arg2].field_768 > !((stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb)):
        revert with 0, 17
    if auctionCount[address(arg1)][arg2].field_768 + (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb) < auctionCount[address(arg1)][arg2].field_768:
        revert with 0, 'OADD'
    return (auctionCount[address(arg1)][arg2].field_768 + (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb))
}

function sub_d21945ed(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg2 < auctionCount[address(arg1)].field_0:
        if arg2 >= auctionCount[address(arg1)].field_0:
            revert with 0, 50
        if 1 == auctionCount[address(arg1)][arg2].field_2048:
            return 1
        if arg2 >= auctionCount[address(arg1)].field_0:
            revert with 0, 50
        if block.timestamp >= auctionCount[address(arg1)][arg2].field_768:
            if stor3[address(arg1)][arg2].field_0:
                if arg3 < stor3[address(arg1)][arg2].field_0:
                    if arg3 > stor3[address(arg1)][arg2].field_0:
                        revert with 0, '', 0
                    if stor3[address(arg1)][arg2].field_0 < arg3:
                        revert with 0, 17
                    if not sub_76affbbb:
                        if arg2 >= auctionCount[address(arg1)].field_0:
                            revert with 0, 50
                        if auctionCount[address(arg1)][arg2].field_768 > -1:
                            revert with 0, 17
                        if auctionCount[address(arg1)][arg2].field_768 < auctionCount[address(arg1)][arg2].field_768:
                            revert with 0, 'OADD'
                        if block.timestamp > auctionCount[address(arg1)][arg2].field_768:
                            return 1
                    else:
                        if sub_76affbbb and stor3[address(arg1)][arg2].field_0 - arg3 > -1 / sub_76affbbb:
                            revert with 0, 17
                        if not sub_76affbbb:
                            revert with 0, 18
                        if (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb) / sub_76affbbb != stor3[address(arg1)][arg2].field_0 - arg3:
                            revert with 0, 'OMUL'
                        if arg2 >= auctionCount[address(arg1)].field_0:
                            revert with 0, 50
                        if auctionCount[address(arg1)][arg2].field_768 > !((stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb)):
                            revert with 0, 17
                        if auctionCount[address(arg1)][arg2].field_768 + (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb) < auctionCount[address(arg1)][arg2].field_768:
                            revert with 0, 'OADD'
                        if block.timestamp > auctionCount[address(arg1)][arg2].field_768 + (stor3[address(arg1)][arg2].field_0 * sub_76affbbb) - (arg3 * sub_76affbbb):
                            return 1
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_1ab7c988(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 'IX'
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if auctionCount[address(arg1)][arg2].field_768 <= block.timestamp:
        revert with 0, 'ED'
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if auctionCount[address(arg1)][arg2].field_2048 != 0:
        revert with 0, 'FN'
    if stor3[address(arg1)][arg2].field_0 >= sub_1983e504:
        revert with 0, 'MAX'
    require ext_code.size(bidTokenAddress)
    staticcall bidTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_19afe473:
        revert with 0, 'AL'
    require ext_code.size(bidTokenAddress)
    call bidTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeToAddress, sub_19afe473
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    auctionCount[address(arg1)][arg2].field_1536 = auctionCount[address(arg1)][arg2].field_1280
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    if not auctionCount[address(arg1)][arg2].field_1536:
        if not stor0:
            revert with 0, '', 0
        if auctionCount[address(arg1)][arg2].field_1536 > !(0 / stor0):
            revert with 0, 17
        if auctionCount[address(arg1)][arg2].field_1536 + (0 / stor0) < auctionCount[address(arg1)][arg2].field_1536:
            revert with 0, 'OADD'
        if arg2 >= auctionCount[address(arg1)].field_0:
            revert with 0, 50
        auctionCount[address(arg1)][arg2].field_1280 = auctionCount[address(arg1)][arg2].field_1536 + (0 / stor0)
    else:
        if auctionCount[address(arg1)][arg2].field_1536 and sub_e9abd85e > -1 / auctionCount[address(arg1)][arg2].field_1536:
            revert with 0, 17
        if not auctionCount[address(arg1)][arg2].field_1536:
            revert with 0, 18
        if auctionCount[address(arg1)][arg2].field_1536 * sub_e9abd85e / auctionCount[address(arg1)][arg2].field_1536 != sub_e9abd85e:
            revert with 0, 'OMUL'
        if not stor0:
            revert with 0, '', 0
        if auctionCount[address(arg1)][arg2].field_1536 > !(auctionCount[address(arg1)][arg2].field_1536 * sub_e9abd85e / stor0):
            revert with 0, 17
        if auctionCount[address(arg1)][arg2].field_1536 + (auctionCount[address(arg1)][arg2].field_1536 * sub_e9abd85e / stor0) < auctionCount[address(arg1)][arg2].field_1536:
            revert with 0, 'OADD'
        if arg2 >= auctionCount[address(arg1)].field_0:
            revert with 0, 50
        auctionCount[address(arg1)][arg2].field_1280 = auctionCount[address(arg1)][arg2].field_1536 + (auctionCount[address(arg1)][arg2].field_1536 * sub_e9abd85e / stor0)
    if arg2 >= auctionCount[address(arg1)].field_0:
        revert with 0, 50
    stor3[address(arg1)][arg2].field_0++
    stor3[address(arg1)][arg2][stor3[address(arg1)][arg2].field_0].field_0 = msg.sender
    stor3[address(arg1)][arg2][stor3[address(arg1)][arg2].field_0].field_256 = auctionCount[address(arg1)][arg2].field_1536
    return 1
}

function sub_d96c6851(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 <= 0:
        revert with 0, 'ZRO'
    if not arg3:
        if not stor0:
            revert with 0, '', 0
        if msg.value < 0 / stor0:
            revert with 0, 'LOW'
    else:
        if arg3 and sub_57603b38 > -1 / arg3:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if arg3 * sub_57603b38 / arg3 != sub_57603b38:
            revert with 0, 'OMUL'
        if not stor0:
            revert with 0, '', 0
        if msg.value < arg3 * sub_57603b38 / stor0:
            revert with 0, 'LOW'
    call feeToAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'AL'
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > !sub_684f6b86:
        revert with 0, 17
    if block.timestamp + sub_684f6b86 < block.timestamp:
        revert with 0, 'OADD'
    if not stor6[msg.sender]:
        sub_57e929a1.length++
        uint256(sub_57e929a1[sub_57e929a1.length]) = msg.sender or Mask(96, 160, uint256(sub_57e929a1[sub_57e929a1.length]))
        if sub_57e929a1.length < 1:
            revert with 0, 17
        stor5[msg.sender] = sub_57e929a1.length - 1
        stor6[msg.sender] = 1
    if not arg3:
        if not stor0:
            revert with 0, '', 0
        if arg3 > !(0 / stor0):
            revert with 0, 17
        if arg3 + (0 / stor0) < arg3:
            revert with 0, 'OADD'
        auctionCount[address(msg.sender)].field_0++
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_0 = address(arg1)
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_256 = arg2
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_512 = block.timestamp
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_768 = block.timestamp + sub_684f6b86
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1024 = arg3
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1280 = arg3 + (0 / stor0)
    else:
        if arg3 and sub_e9abd85e > -1 / arg3:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if arg3 * sub_e9abd85e / arg3 != sub_e9abd85e:
            revert with 0, 'OMUL'
        if not stor0:
            revert with 0, '', 0
        if arg3 > !(arg3 * sub_e9abd85e / stor0):
            revert with 0, 17
        if arg3 + (arg3 * sub_e9abd85e / stor0) < arg3:
            revert with 0, 'OADD'
        auctionCount[address(msg.sender)].field_0++
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_0 = address(arg1)
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_256 = arg2
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_512 = block.timestamp
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_768 = block.timestamp + sub_684f6b86
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1024 = arg3
        auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1280 = arg3 + (arg3 * sub_e9abd85e / stor0)
    auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1536 = arg3
    auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_1792 = 0
    auctionCount[address(msg.sender)][auctionCount[address(msg.sender)].field_0].field_2048 = 0
    emit 0x9e53d10d: msg.sender, address(arg1), block.timestamp, block.timestamp + sub_684f6b86, arg3, msg.value
}



}
