contract main {




// =====================  Runtime code  =====================


#
#  - claimJackpot()
#
address pefiAddress;
address nestAddress;
address sub_982cfe85Address;
uint256 stor2;
uint256 sub_2f366d6f;
uint256 sub_587b0896;
uint256 sub_50aa9e97;
uint256 jackpot;
uint256 sub_2915d5db;
uint256 minBidIncrease;
uint256 sub_aec44b56;
array of address stor10;
array of address sub_853082a6;
array of uint256 stor15;
array of uint256 sub_06f6a017;
uint256 stor20;
array of struct sub_803b0f8a;
mapping of uint8 stor22;
mapping of uint8 stor99;

function sub_06f6a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_06f6a017[arg1]
}

function sub_1cc41bba(?) payable {
    return bool(uint8(stor10.length))
}

function sub_2915d5db(?) payable {
    return sub_2915d5db
}

function sub_2f366d6f(?) payable {
    return sub_2f366d6f
}

function pefi() payable {
    return pefiAddress
}

function sub_50aa9e97(?) payable {
    return sub_50aa9e97
}

function sub_587b0896(?) payable {
    return sub_587b0896
}

function jackpot() payable {
    return jackpot
}

function minBidIncrease() payable {
    return minBidIncrease
}

function sub_803b0f8a(?) payable {
    return uint256(sub_803b0f8a[address(stor2)][0 len sub_803b0f8a[address(stor2)].length].field_0)
}

function sub_853082a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return sub_853082a6[arg1]
}

function sub_982cfe85(?) payable {
    return address(sub_982cfe85Address)
}

function sub_aec44b56(?) payable {
    return sub_aec44b56
}

function nest() payable {
    return nestAddress
}

function _fallback() payable {
    revert
}

function sub_64ac8dd1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor22[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_4a3c83cf(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require bool(sub_803b0f8a[msg.sender].field_512) != 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 22
    if 1 == bool(stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]):
        revert with 0, 
                    32,
                    55,
                    0x2e43686f6f7365206120646966666572656e74206e69636b6e616d652c2074686174206f6e6520697320616c72656164792074616b656e,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 283 len 9]
    uint256(sub_803b0f8a[msg.sender][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_803b0f8a[msg.sender][1][].field_0) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 22
    stor[mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)] = 1
    uint256(sub_803b0f8a[msg.sender].field_768) = arg3
    sub_803b0f8a[msg.sender].field_512 = 1
}

function sub_cb1d2b51(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 21
    mem[96] = sub_803b0f8a[arg1].length
    mem[0] = sha3(arg1, 21)
    mem[128] = uint256(sub_803b0f8a[arg1].field_0)
    idx = 128
    s = 0
    while sub_803b0f8a[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(sub_803b0f8a[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 160
    mem[ceil32(sub_803b0f8a[arg1].length) + 128] = sub_803b0f8a[arg1][1].length
    mem[ceil32(sub_803b0f8a[arg1].length) + 160] = uint256(sub_803b0f8a[arg1][1].field_0)
    idx = ceil32(sub_803b0f8a[arg1].length) + 160
    s = 0
    while ceil32(sub_803b0f8a[arg1].length) + sub_803b0f8a[arg1][1].length + 128 > idx:
        mem[idx + 32] = uint256(sub_803b0f8a[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 224] = bool(sub_803b0f8a[arg1].field_512)
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 256] = uint256(sub_803b0f8a[arg1].field_768)
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 288] = uint256(sub_803b0f8a[arg1].field_1024)
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 320] = uint256(sub_803b0f8a[arg1].field_1280)
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 160] = 192
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 352] = sub_803b0f8a[arg1].length
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 384 len ceil32(sub_803b0f8a[arg1].length)] = mem[128 len ceil32(sub_803b0f8a[arg1].length)]
    mem[ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 192] = sub_803b0f8a[arg1].length + 224
    mem[sub_803b0f8a[arg1].length + ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 384] = sub_803b0f8a[arg1][1].length
    mem[sub_803b0f8a[arg1].length + ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 416 len ceil32(sub_803b0f8a[arg1][1].length)] = mem[ceil32(sub_803b0f8a[arg1].length) + 160 len ceil32(sub_803b0f8a[arg1][1].length)]
    if not sub_803b0f8a[arg1][1].length % 32:
        return Array(len=sub_803b0f8a[arg1].length, data=mem[128 len ceil32(sub_803b0f8a[arg1].length)], mem[(2 * ceil32(sub_803b0f8a[arg1].length)) + ceil32(sub_803b0f8a[arg1][1].length) + 384 len sub_803b0f8a[arg1][1].length + sub_803b0f8a[arg1].length + -ceil32(sub_803b0f8a[arg1].length) + 32]), 
               sub_803b0f8a[arg1].length + 224,
               bool(sub_803b0f8a[arg1].field_512),
               uint256(sub_803b0f8a[arg1].field_768),
               uint256(sub_803b0f8a[arg1].field_1024),
               uint256(sub_803b0f8a[arg1].field_1280)
    mem[floor32(sub_803b0f8a[arg1][1].length) + sub_803b0f8a[arg1].length + ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + 416] = mem[floor32(sub_803b0f8a[arg1][1].length) + sub_803b0f8a[arg1].length + ceil32(sub_803b0f8a[arg1].length) + ceil32(sub_803b0f8a[arg1][1].length) + -sub_803b0f8a[arg1][1].length % 32 + 448 len sub_803b0f8a[arg1][1].length % 32]
    return Array(len=sub_803b0f8a[arg1].length, data=mem[128 len ceil32(sub_803b0f8a[arg1].length)], mem[(2 * ceil32(sub_803b0f8a[arg1].length)) + ceil32(sub_803b0f8a[arg1][1].length) + 384 len floor32(sub_803b0f8a[arg1][1].length) + sub_803b0f8a[arg1].length + -ceil32(sub_803b0f8a[arg1].length) + 64]), 
           sub_803b0f8a[arg1].length + 224,
           bool(sub_803b0f8a[arg1].field_512),
           uint256(sub_803b0f8a[arg1].field_768),
           uint256(sub_803b0f8a[arg1].field_1024),
           uint256(sub_803b0f8a[arg1].field_1280)
}

function sub_f40a3685(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= sub_2915d5db:
        revert with 0, 'The competiton is over.'
    if not sub_803b0f8a[msg.sender].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e506c6561736520726567697374657220796f75722050656e6775696e206669727374,
                    mem[199 len 29]
    if msg.sender == address(sub_982cfe85Address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64596f752061726520616c726561647920746865204b696e67206f662050656e6775696e73,
                    mem[201 len 27]
    if arg1 <= sub_2f366d6f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x77596f757220626964206973206c6f776572207468616e207468652063757272656e74204b696e67277320626964,
                    mem[210 len 18]
    if minBidIncrease + sub_2f366d6f < sub_2f366d6f:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < minBidIncrease + sub_2f366d6f:
        revert with 0, 'Bad bid'
    if sub_aec44b56 + sub_2f366d6f < sub_2f366d6f:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 > sub_aec44b56 + sub_2f366d6f:
        revert with 0, 'Bad bid'
    if not sub_2f366d6f:
        if not sub_2f366d6f:
            if not sub_2f366d6f:
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if sub_50aa9e97 * sub_2f366d6f / sub_2f366d6f != sub_50aa9e97:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_50aa9e97 * sub_2f366d6f / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_50aa9e97 * sub_2f366d6f / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(pefiAddress)
            staticcall pefiAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pefiAddress)
            call pefiAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args nestAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            staticcall nestAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            if 0 <= ext_call.return_data[0]:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), 0
            else:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if sub_587b0896 * sub_2f366d6f / sub_2f366d6f != sub_587b0896:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_2f366d6f:
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_587b0896 * sub_2f366d6f / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if sub_50aa9e97 * sub_2f366d6f / sub_2f366d6f != sub_50aa9e97:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_50aa9e97 * sub_2f366d6f / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if 0 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), 0
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_587b0896 * sub_2f366d6f / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if 0 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), 0
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_50aa9e97 * sub_2f366d6f / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(pefiAddress)
            staticcall pefiAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pefiAddress)
            call pefiAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args nestAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            staticcall nestAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            if 0 <= ext_call.return_data[0]:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), 0
            else:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
            jackpot += sub_587b0896 * sub_2f366d6f / 10000
    else:
        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / sub_2f366d6f != -sub_587b0896 + -sub_50aa9e97 + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_2f366d6f:
            if not sub_2f366d6f:
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if sub_50aa9e97 * sub_2f366d6f / sub_2f366d6f != sub_50aa9e97:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_50aa9e97 * sub_2f366d6f / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_50aa9e97 * sub_2f366d6f / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(pefiAddress)
            staticcall pefiAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pefiAddress)
            call pefiAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args nestAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            staticcall nestAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
            else:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if sub_587b0896 * sub_2f366d6f / sub_2f366d6f != sub_587b0896:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_2f366d6f:
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_587b0896 * sub_2f366d6f / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if sub_50aa9e97 * sub_2f366d6f / sub_2f366d6f != sub_50aa9e97:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(sub_803b0f8a[address(stor2)].field_1280) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024) < uint256(sub_803b0f8a[address(stor2)].field_1024):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(sub_803b0f8a[address(stor2)].field_1024) = block.timestamp - uint256(sub_803b0f8a[address(stor2)].field_1280) + uint256(sub_803b0f8a[address(stor2)].field_1024)
                uint256(sub_803b0f8a[msg.sender].field_1280) = block.timestamp
                idx = 0
                while idx < 5:
                    if sub_853082a6[idx] != address(sub_982cfe85Address):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if sub_06f6a017[s] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            sub_06f6a017[t] = stor15[t]
                            require t - 1 < 5
                            require t < 5
                            sub_853082a6[t] = address(stor10[t])
                            t = t - 1
                            continue 
                        require s < 5
                        sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[s] = address(sub_982cfe85Address)
                        require ext_code.size(nestAddress)
                        call nestAddress.leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_50aa9e97 * sub_2f366d6f / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(pefiAddress)
                        staticcall pefiAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(pefiAddress)
                        call pefiAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args nestAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        staticcall nestAddress.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(nestAddress)
                        if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                        else:
                            call nestAddress.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(sub_982cfe85Address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                            revert with 0, 'SafeMath: addition overflow'
                        jackpot += sub_587b0896 * sub_2f366d6f / 10000
                        require ext_code.size(nestAddress)
                        call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                        sub_2f366d6f = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        sub_06f6a017[t] = stor15[t]
                        require t - 1 < 5
                        require t < 5
                        sub_853082a6[t] = address(stor10[t])
                        t = t - 1
                        continue 
                    require s < 5
                    sub_06f6a017[s] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[s] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                idx = 0
                while idx < 5:
                    if sub_06f6a017[idx] >= uint256(sub_803b0f8a[address(stor2)].field_1024):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        sub_06f6a017[s] = stor15[s]
                        require s - 1 < 5
                        require s < 5
                        sub_853082a6[s] = address(stor10[s])
                        s = s - 1
                        continue 
                    if idx < 4:
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                    else:
                        if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                            require idx < 5
                            sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                            sub_853082a6[idx] = address(sub_982cfe85Address)
                    require ext_code.size(nestAddress)
                    call nestAddress.leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_50aa9e97 * sub_2f366d6f / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(pefiAddress)
                    staticcall pefiAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(pefiAddress)
                    call pefiAddress.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args nestAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    staticcall nestAddress.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nestAddress)
                    if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
                    else:
                        call nestAddress.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(sub_982cfe85Address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                        revert with 0, 'SafeMath: addition overflow'
                    jackpot += sub_587b0896 * sub_2f366d6f / 10000
                    require ext_code.size(nestAddress)
                    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
                    sub_2f366d6f = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    sub_06f6a017[s] = stor15[s]
                    require s - 1 < 5
                    require s < 5
                    sub_853082a6[s] = address(stor10[s])
                    s = s - 1
                    continue 
                if idx < 4:
                    sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                    sub_853082a6[idx] = address(sub_982cfe85Address)
                else:
                    if uint256(sub_803b0f8a[address(stor2)].field_1024) > stor20:
                        require idx < 5
                        sub_06f6a017[idx] = uint256(sub_803b0f8a[address(stor2)].field_1024)
                        sub_853082a6[idx] = address(sub_982cfe85Address)
                require ext_code.size(nestAddress)
                call nestAddress.leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_50aa9e97 * sub_2f366d6f / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(pefiAddress)
            staticcall pefiAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(pefiAddress)
            call pefiAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args nestAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            staticcall nestAddress.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(nestAddress)
            if (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000 <= ext_call.return_data[0]:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), (10000 * sub_2f366d6f) - (sub_587b0896 * sub_2f366d6f) - (sub_50aa9e97 * sub_2f366d6f) / 10000
            else:
                call nestAddress.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(sub_982cfe85Address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if (sub_587b0896 * sub_2f366d6f / 10000) + jackpot < jackpot:
                revert with 0, 'SafeMath: addition overflow'
            jackpot += sub_587b0896 * sub_2f366d6f / 10000
    require ext_code.size(nestAddress)
    call nestAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    sub_2f366d6f = arg1
}



}
