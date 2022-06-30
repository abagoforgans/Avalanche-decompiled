contract main {




// =====================  Runtime code  =====================


address stor0;
address founderAddress;
address treasuryAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint8 stor6;
uint256 sub_abb39be7;
uint256 minReward;
uint256 sub_79ca54b7;
uint256 sub_fc0f372e;
mapping of uint256 sub_6b81e11b;
mapping of uint8 stor12;
array of address sub_42712568;
array of address advertisements;

function sub_42712568(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_42712568[arg1])
    return address(sub_42712568[arg1][arg2])
}

function founder() payable {
    return founderAddress
}

function sub_525016c8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function paused() payable {
    return bool(stor6)
}

function treasury() payable {
    return treasuryAddress
}

function sub_6b81e11b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_6b81e11b[arg1]
}

function sub_6e089249(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor5[arg1][arg2])
}

function sub_79ca54b7(?) payable {
    return sub_79ca54b7
}

function sub_97b43ae8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_42712568[address(arg1)])
}

function sub_abb39be7(?) payable {
    return sub_abb39be7
}

function promotionCount() payable {
    return advertisements.length
}

function registered(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function minReward() payable {
    return minReward
}

function advertisements(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < advertisements.length
    return advertisements[arg1]
}

function delegateContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function sub_fc0f372e(?) payable {
    return sub_fc0f372e
}

function _fallback() payable {
    revert
}

function unpause() payable {
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    require stor6
    stor6 = 0
    emit Unpause()
    return 1
}

function sub_5d5e6457(?) payable {
    require calldata.size - 4 >= 32
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    sub_79ca54b7 = arg1
    return 1
}

function sub_5f0f0156(?) payable {
    require calldata.size - 4 >= 32
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    sub_abb39be7 = arg1
    return 1
}

function setMinReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    minReward = arg1
    return 1
}

function setClaimerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    sub_fc0f372e = arg1
    return 1
}

function sub_ca1bd89e(?) payable {
    require calldata.size - 4 >= 64
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    stor4[arg1] = 1
    stor4[arg2] = 1
    return 1
}

function sub_5c97cce6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if bool(stor12[msg.sender]) != 1:
        revert with 2184277984
    sub_6b81e11b[address(arg1)] = arg2
    return 1
}

function sub_2ea2ee1b(?) payable {
    require calldata.size - 4 >= 32
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if bool(stor4[arg1]) != 1:
        revert with 1892444423
    stor4[arg1] = 0
    return 1
}

function pause() payable {
    if founderAddress != msg.sender:
        revert with 0, 'Your are not the Founder.'
    if stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'All publications have been paused.'
    stor6 = 1
    emit Pause()
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function contractInfo() payable {
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args treasuryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], advertisements.length, sub_abb39be7, sub_79ca54b7, sub_fc0f372e, minReward
}

function sub_b83e1605(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], sub_6b81e11b[address(arg1)], uint256(sub_42712568[address(arg1)])
}

function sub_99604333(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor3[msg.sender]:
        revert with 2001255654
    if bool(stor4[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256]) != 1:
        revert with 1892444423
    stor5[msg.sender][arg2] = 1
    stor4[arg3] = 1
    stor4[arg4] = 1
    emit 0xed35485e 
}

function sub_16b1bf54(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if 1 == bool(stor3[msg.sender]):
        revert with Registered()
    if bool(stor4[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256]) != 1:
        revert with 1892444423
    stor3[msg.sender] = 1
    stor5[msg.sender][arg2] = 1
    stor4[arg3] = 1
    stor4[arg4] = 1
    emit 0xed35485e 
}

function sub_fe5cedde(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 == address(arg3)
    if bool(stor3[address(arg3)]) != 1:
        revert with 2001255654
    if bool(stor5[address(arg3)][sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)]) != 1:
        revert with 1892444423
    stor5[address(arg3)][sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)] = 0
    stor5[address(arg3)][arg2] = 1
    emit 0x30f9ecf8 
    return 1
}

function sub_5605a8fe(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor6:
        revert with 0, 'All publications have been paused.'
    if arg3 < 30:
        revert with 0, 'You must enter at least 30.'
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 and arg4 > -1 / arg3:
        revert with 0, 17
    if arg3 * arg4 > ext_call.return_data[0]:
        revert with 0, arg3 * arg4, ext_call.return_data[0]
    if sub_6b81e11b[msg.sender] > !(arg3 * arg4):
        revert with 0, 17
    if sub_6b81e11b[msg.sender] + (arg3 * arg4) > ext_call.return_data[0]:
        revert with 0, sub_6b81e11b[msg.sender], ext_call.return_data[0]
    if arg4 < minReward:
        revert with 0, arg4, minReward
    if sub_6b81e11b[msg.sender] > !(arg3 * arg4):
        revert with 0, 17
    sub_6b81e11b[msg.sender] += arg3 * arg4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 98 len 7094] = code.data[5541 len 7094]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7192] = msg.sender
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7224] = stor0
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7256] = 320
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7512] = arg2.length
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7544 len ceil32(arg2.length)] = arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7288] = ceil32(arg2.length) + 352
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7544] = arg1.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7576 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7320] = arg3
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7352] = arg4
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7384] = minReward
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7416] = sub_fc0f372e
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7448] = sub_79ca54b7
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7480] = sub_abb39be7
        create contract with 0 wei
                        code: code.data[5541 len 7094], msg.sender, stor0, Array(len=sub_abb39be7, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(arg2.length) + 352, arg3, arg4, minReward, sub_fc0f372e, sub_79ca54b7
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 7544] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7288] = ceil32(arg2.length) + 352
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7544] = arg1.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7576 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 7576] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7320] = arg3
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7352] = arg4
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7384] = minReward
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7416] = sub_fc0f372e
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7448] = sub_79ca54b7
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 7480] = sub_abb39be7
        create contract with 0 wei
                        code: code.data[5541 len 7094], msg.sender, stor0, Array(len=sub_abb39be7, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 7576 len ceil32(arg1.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg2.length) + 352, arg3, arg4, minReward, sub_fc0f372e, sub_79ca54b7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    advertisements.length++
    advertisements[advertisements.length] = address(create.new_address)
    uint256(sub_42712568[msg.sender])++
    address(sub_42712568[msg.sender][uint256(sub_42712568[msg.sender])]) = address(create.new_address)
    stor12[address(create.new_address)] = 1
    if ceil32(arg2.length) <= arg2.length:
        emit 0x19b2b7b2: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256), ceil32(arg2.length) + 192, arg3, arg4, arg3 * arg4, block.timestamp, msg.sender, address(create.new_address)
    else:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 290] = arg1.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 322 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg2.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg1.length + 322] = 0
        emit 0x19b2b7b2: Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 322 len ceil32(arg1.length) - arg2.length + ceil32(arg2.length)]), ceil32(arg2.length) + 192, arg3, arg4, arg3 * arg4, block.timestamp, msg.sender, address(create.new_address)
    return 1
}



}
