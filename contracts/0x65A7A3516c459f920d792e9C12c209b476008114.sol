contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - completePot()
#
uint256 sub_56344647;
uint256 sub_2c08841c;
array of uint256 sub_ca1c6c45;
uint256 sub_f87f87ac;
uint256 sub_09d0c0ff;
uint256 sub_b7bb4424;
uint256 sub_77b5e1a5;
uint256 sub_5d424117;
uint256 sub_72c7358c;
uint256 sub_774940a5;
uint256 sub_0c8eb55e;
uint256 sub_dbba90a0;
uint256 total_deposit;
uint256 stor13; offset 1
uint256 sub_7145fd3e;
uint256 sub_b096515d;
uint256 sub_28b50789;
uint256 sub_b3952fd4;
array of struct sub_28e5c6b8;
uint32 stor18;
address sub_b9ec104bAddress;
uint256 stor18;
address sub_bc06a3f9Address;
uint32 stor20;
address sub_980c7707Address;
uint256 stor20;
address companyAddress;
address memoAddress;
address sub_8cab0f99Address;
uint8 sub_fecd1181; offset 160
uint8 sub_43e1be76; offset 168
uint8 sub_0c657160; offset 176
uint8 sub_a44f4556; offset 184
uint64 stor24; offset 192
uint128 stor24; offset 184
address ticketAddress;
mapping of struct player;
mapping of uint8 stor27;
array of struct stor28;
mapping of struct sub_a5139aa6;

function sub_09d0c0ff(?) payable {
    return sub_09d0c0ff
}

function sub_0c657160(?) payable {
    return bool(sub_0c657160)
}

function sub_0c8eb55e(?) payable {
    return sub_0c8eb55e
}

function sub_28b50789(?) payable {
    return sub_28b50789
}

function sub_28e5c6b8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_28e5c6b8.length
    return sub_28e5c6b8[arg1].field_0
}

function total_deposit() payable {
    return total_deposit
}

function sub_2c08841c(?) payable {
    return sub_2c08841c
}

function sub_43e1be76(?) payable {
    return bool(sub_43e1be76)
}

function player(address arg1) payable {
    require calldata.size - 4 >= 32
    return player[arg1].field_0, player[arg1].field_256, player[arg1].field_512, player[arg1].field_768, player[arg1].field_1024
}

function sub_56344647(?) payable {
    return sub_56344647
}

function memo() payable {
    return memoAddress
}

function sub_5d424117(?) payable {
    return sub_5d424117
}

function sub_6408d20a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor27[arg1])
}

function company() payable {
    return companyAddress
}

function ticket() payable {
    return ticketAddress
}

function sub_7145fd3e(?) payable {
    return sub_7145fd3e
}

function sub_72c7358c(?) payable {
    return sub_72c7358c
}

function sub_774940a5(?) payable {
    return sub_774940a5
}

function sub_77b5e1a5(?) payable {
    return sub_77b5e1a5
}

function sub_8cab0f99(?) payable {
    return sub_8cab0f99Address
}

function sub_980c7707(?) payable {
    return address(sub_980c7707Address)
}

function sub_a44f4556(?) payable {
    return bool(sub_a44f4556)
}

function sub_a5139aa6(?) payable {
    require calldata.size - 4 >= 32
    return sub_a5139aa6[arg1].field_0, 
           sub_a5139aa6[arg1].field_256,
           sub_a5139aa6[arg1].field_512,
           sub_a5139aa6[arg1].field_768,
           sub_a5139aa6[arg1].field_1024
}

function sub_b096515d(?) payable {
    return sub_b096515d
}

function sub_b3952fd4(?) payable {
    return sub_b3952fd4
}

function sub_b7bb4424(?) payable {
    return sub_b7bb4424
}

function sub_b9ec104b(?) payable {
    return address(sub_b9ec104bAddress)
}

function sub_bc06a3f9(?) payable {
    return sub_bc06a3f9Address
}

function sub_ca1c6c45(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ca1c6c45.length
    return sub_ca1c6c45[arg1]
}

function sub_dbba90a0(?) payable {
    return sub_dbba90a0
}

function sub_f87f87ac(?) payable {
    return sub_f87f87ac
}

function sub_fecd1181(?) payable {
    return bool(sub_fecd1181)
}

function _fallback() payable {
    revert
}

function sub_78864425(?) payable {
    return (block.timestamp > sub_72c7358c)
}

function sub_00215d4d(?) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    memoAddress = arg1
}

function sub_4213d0d7(?) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    companyAddress = arg1
}

function sub_300d02dd(?) payable {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    sub_09d0c0ff = arg1
    sub_b7bb4424 = arg2
}

function updateDepositToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    sub_8cab0f99Address = arg1
}

function updateSessionEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    sub_72c7358c = arg1
}

function sub_e9f19ff0(?) payable {
    require calldata.size - 4 >= 64
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    address(sub_b9ec104bAddress) = arg1
    sub_bc06a3f9Address = arg2
}

function sub_5f0cd488(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_980c7707Address) != msg.sender:
        revert with 0, 'not pot owner'
    address(sub_980c7707Address) = arg1
    emit 0x761c90d7: arg1
}

function sub_3414d8e1(?) payable {
    require calldata.size - 4 >= 96
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    sub_774940a5 = arg1
    sub_77b5e1a5 = arg2
    sub_0c8eb55e = arg3
    emit 0xbd0039dc: arg1, arg2, arg3
}

function updateAccessPermission(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(sub_980c7707Address) != msg.sender:
        revert with 0, 'not pot owner'
    stor27[address(arg1)] = uint8(arg2)
    emit UpdateAccessPermission(address(arg1), arg2);
}

function sub_450536d7(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    if 2 * arg1 < arg1:
        revert with 0, 'SafeMath:INVALID_ADD'
    if 2 * arg1 > 10^9:
        revert with 0, 'total rate is over exceed'
    # nil
}

function sub_563a4024(?) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    if sub_28e5c6b8.length >= sub_774940a5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe636f6f776e6572206c69737420657863656564206e756d626572206f662077696e6e65,
                    mem[200 len 28]
    sub_28e5c6b8.length++
    sub_28e5c6b8[sub_28e5c6b8.length].field_0 = arg1
}

function sub_ea4c532f(?) payable {
    require calldata.size - 4 >= 128
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    sub_fecd1181 = uint8(arg1)
    sub_43e1be76 = uint8(arg2)
    sub_0c657160 = uint8(arg3)
    Mask(72, 0, stor24.field_184) = Mask(72, 0, arg4)
    uint64(stor24.field_192) = 0
    uint64(stor24.field_192) = Mask(64, 32, arg1) >> 32
    uint64(stor24.field_192) = Mask(64, 24, arg2) >> 24
    uint64(stor24.field_192) = Mask(64, 16, arg3) >> 16
    emit 0xa79d1d9b: arg1, arg2, arg3, arg4
}

function sub_a86f54d0(?) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    if sub_77b5e1a5 <= 0:
        revert with 0, 'session duration cannot be zero'
    if arg1 > 0:
        sub_5d424117 = arg1
    else:
        sub_5d424117 = block.timestamp
    if (60 * sub_77b5e1a5) + sub_5d424117 < sub_5d424117:
        revert with 0, 'SafeMath:INVALID_ADD'
    sub_72c7358c = (60 * sub_77b5e1a5) + sub_5d424117
    if not sub_b096515d:
        sub_b096515d = block.number
}

function getClaimable() payable {
    if sub_7145fd3e <= 0:
        return 0
    if sub_f87f87ac:
        require sub_f87f87ac
        if player[msg.sender].field_256 * sub_f87f87ac / sub_f87f87ac != player[msg.sender].field_256:
            revert with 0, 'SafeMath: multiple overflow'
    if (player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 < player[msg.sender].field_256 * sub_f87f87ac:
        revert with 0, 'SafeMath: multiple overflow'
    if player[msg.sender].field_1024 > (player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    return (((player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9) - player[msg.sender].field_1024)
}

function sub_3a24aaba(?) payable {
    require calldata.size - 4 >= 32
    if (60 * sub_09d0c0ff) + player[address(arg1)].field_512 < player[address(arg1)].field_512:
        revert with 0, 'SafeMath:INVALID_ADD'
    if (60 * sub_09d0c0ff) + player[address(arg1)].field_512 >= block.timestamp:
        if 10^9 * sub_b7bb4424 / 10^9 != sub_b7bb4424:
            revert with 0, 'SafeMath: multiple overflow'
        if (10^9 * sub_b7bb4424) + 500 * 10^6 < 10^9 * sub_b7bb4424:
            revert with 0, 'SafeMath: multiple overflow'
        if (10^9 * sub_b7bb4424) + 500 * 10^6 / 10^9 > 10^9:
            revert with 0, 'SafeMath:OVERFLOW_SUB'
    return (60 * sub_09d0c0ff) + player[address(arg1)].field_512 >= block.timestamp, 
           (60 * sub_09d0c0ff) + player[address(arg1)].field_512,
           sub_b7bb4424
}

function sub_7c4a285e(?) payable {
    require calldata.size - 4 >= 32
    if address(sub_980c7707Address) != msg.sender:
        revert with 0, 'not pot owner'
    call address(sub_980c7707Address) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[248 len 12]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 249 len 12]
    ('bool', 'ext_call.success')
}

function sub_4b815897(?) payable {
    require calldata.size - 4 >= 32
    if sub_7145fd3e <= 0:
        return 0
    if not sub_7145fd3e:
        revert with 0, 'SafeMath: division by zero'
    if not player[address(arg1)].field_256:
        if (10^9 * player[address(arg1)].field_256) + stor13 < 10^9 * player[address(arg1)].field_256:
            revert with 0, 'SafeMath: division internal'
        if sub_7145fd3e:
            return ((10^9 * player[address(arg1)].field_256) + stor13 / sub_7145fd3e)
    else:
        if player[address(arg1)].field_256:
            if 10^9 * player[address(arg1)].field_256 / player[address(arg1)].field_256 != 10^9:
                revert with 0, 'SafeMath: division internal'
            if (10^9 * player[address(arg1)].field_256) + stor13 < 10^9 * player[address(arg1)].field_256:
                revert with 0, 'SafeMath: division internal'
            if sub_7145fd3e:
                return ((10^9 * player[address(arg1)].field_256) + stor13 / sub_7145fd3e)
    revert
}

function sub_bfb15238(?) payable {
    require calldata.size - 4 >= 64
    if (60 * sub_09d0c0ff) + player[address(arg1)].field_512 < player[address(arg1)].field_512:
        revert with 0, 'SafeMath:INVALID_ADD'
    if (60 * sub_09d0c0ff) + player[address(arg1)].field_512 < block.timestamp:
        return arg2, 
               (60 * sub_09d0c0ff) + player[address(arg1)].field_512 >= block.timestamp,
               (60 * sub_09d0c0ff) + player[address(arg1)].field_512,
               sub_b7bb4424
    if arg2:
        require arg2
        if sub_b7bb4424 * arg2 / arg2 != sub_b7bb4424:
            revert with 0, 'SafeMath: multiple overflow'
    if (sub_b7bb4424 * arg2) + 500 * 10^6 < sub_b7bb4424 * arg2:
        revert with 0, 'SafeMath: multiple overflow'
    if (sub_b7bb4424 * arg2) + 500 * 10^6 / 10^9 > arg2:
        revert with 0, 'SafeMath:OVERFLOW_SUB'
    return arg2 - ((sub_b7bb4424 * arg2) + 500 * 10^6 / 10^9), 
           (60 * sub_09d0c0ff) + player[address(arg1)].field_512 >= block.timestamp,
           (60 * sub_09d0c0ff) + player[address(arg1)].field_512,
           sub_b7bb4424
}

function sub_69b2ac8e(?) payable {
    require calldata.size - 4 >= 32
    if not stor27[msg.sender]:
        revert with 0, 'dno access permission'
    idx = 0
    while idx < sub_28e5c6b8.length:
        mem[0] = 17
        if sub_28e5c6b8[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        if idx < sub_28e5c6b8.length:
            s = idx
            while s < sub_28e5c6b8.length - 1:
                require s + 1 < sub_28e5c6b8.length
                require s < sub_28e5c6b8.length
                mem[0] = 17
                sub_28e5c6b8[s].field_0 = sub_28e5c6b8[s].field_256
                s = s + 1
                continue 
            require sub_28e5c6b8.length
            sub_28e5c6b8[sub_28e5c6b8.length].field_0 = 0
            sub_28e5c6b8.length--
    if 0 < sub_28e5c6b8.length:
        idx = 0
        while idx < sub_28e5c6b8.length - 1:
            require idx + 1 < sub_28e5c6b8.length
            require idx < sub_28e5c6b8.length
            mem[0] = 17
            sub_28e5c6b8[idx].field_0 = sub_28e5c6b8[idx].field_256
            idx = idx + 1
            continue 
        require sub_28e5c6b8.length
        sub_28e5c6b8[sub_28e5c6b8.length].field_0 = 0
        sub_28e5c6b8.length--
}

function sub_3330fc23(?) payable {
    require calldata.size - 4 >= 32
    if stor28[arg1].field_768:
        mem[128] = stor28[arg1][3].field_0
        idx = 128
        s = 0
        while (32 * stor28[arg1].field_768) + 96 > idx:
            mem[idx + 32] = stor28[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if stor28[arg1].field_1024:
        mem[(32 * stor28[arg1].field_768) + 160] = stor28[arg1][4].field_0
        idx = (32 * stor28[arg1].field_768) + 160
        s = 0
        while (32 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + 128 > idx:
            mem[idx + 32] = stor28[arg1][s + 4].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + 352 len floor32(stor28[arg1].field_768)] = mem[128 len floor32(stor28[arg1].field_768)]
    mem[(64 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + 352] = stor28[arg1].field_1024
    mem[(64 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + 384 len floor32(stor28[arg1].field_1024)] = mem[(32 * stor28[arg1].field_768) + 160 len floor32(stor28[arg1].field_1024)]
    return stor28[arg1].field_256, 
           stor28[arg1].field_512,
           Array(len=stor28[arg1].field_768, data=mem[128 len floor32(stor28[arg1].field_768)], mem[(32 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + floor32(stor28[arg1].field_768) + 352 len (32 * stor28[arg1].field_768) + (32 * stor28[arg1].field_1024) + -floor32(stor28[arg1].field_768) + 32]),
           (32 * stor28[arg1].field_768) + 192,
           stor28[arg1].field_0
}

function emergencyTransferToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(sub_980c7707Address) != msg.sender:
        revert with 0, 'not pot owner'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor20)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                        mem[309 len 19]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor20):
            revert with 0, 
                        32,
                        45,
                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                        mem[309 len 19]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                        mem[ceil32(return_data.size) + 310 len 19]
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            45,
                            0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                            mem[ceil32(return_data.size) + 310 len 19]
}

function claim() payable {
    if not sub_a44f4556:
        if block.number > player[address(msg.sender)].field_768:
            if sub_7145fd3e > 0:
                if sub_f87f87ac:
                    require sub_f87f87ac
                    if player[msg.sender].field_256 * sub_f87f87ac / sub_f87f87ac != player[msg.sender].field_256:
                        revert with 0, 'SafeMath: multiple overflow'
                if (player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 < player[msg.sender].field_256 * sub_f87f87ac:
                    revert with 0, 'SafeMath: multiple overflow'
                if player[msg.sender].field_1024 > (player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9:
                    revert with 0, 'SafeMath:OVERFLOW_SUB'
                if ((player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9) - player[msg.sender].field_1024:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9) - player[msg.sender].field_1024) >> 32
                    call sub_8cab0f99Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((player[msg.sender].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9) - player[msg.sender].field_1024) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                        mem[309 len 19]
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        45,
                                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                        mem[309 len 19]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                        mem[ceil32(return_data.size) + 310 len 19]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            45,
                                            0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                            mem[ceil32(return_data.size) + 310 len 19]
                    player[address(msg.sender)].field_768 = block.number
            if sub_f87f87ac:
                require sub_f87f87ac
                if player[address(msg.sender)].field_256 * sub_f87f87ac / sub_f87f87ac != player[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: multiple overflow'
            if (player[address(msg.sender)].field_256 * sub_f87f87ac) + 500 * 10^6 < player[address(msg.sender)].field_256 * sub_f87f87ac:
                revert with 0, 'SafeMath: multiple overflow'
            player[address(msg.sender)].field_1024 = (player[address(msg.sender)].field_256 * sub_f87f87ac) + 500 * 10^6 / 10^9
}

function sub_68d1a952(?) payable {
    if address(sub_980c7707Address) != msg.sender:
        revert with 0, 'not pot owner'
    require ext_code.size(memoAddress)
    staticcall memoAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(memoAddress)
    staticcall memoAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(sub_b9ec104bAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(address(sub_b9ec104bAddress))
        call address(sub_b9ec104bAddress).unstake(uint256 arg1, bool arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_8cab0f99Address)
        staticcall sub_8cab0f99Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), ext_call.return_data[0 len 28]
        call sub_8cab0f99Address with:
           funct uint32(stor20)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                            mem[309 len 19]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor20):
                revert with 0, 
                            32,
                            45,
                            0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                            mem[309 len 19]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                            mem[ceil32(return_data.size) + 310 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                45,
                                0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                mem[ceil32(return_data.size) + 310 len 19]
    else:
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor18), uint32(stor18), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call memoAddress with:
           funct uint32(stor18)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 32, 43, 0x645472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65, mem[307 len 21]
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                revert with 0, 32, 43, 0x645472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65, mem[307 len 21]
            require ext_code.size(address(sub_b9ec104bAddress))
            call address(sub_b9ec104bAddress).unstake(uint256 arg1, bool arg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_8cab0f99Address)
            staticcall sub_8cab0f99Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), ext_call.return_data[0 len 28]
            call sub_8cab0f99Address with:
               funct uint32(stor20)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                mem[409 len 19]
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                    revert with 0, 
                                32,
                                45,
                                0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                mem[409 len 19]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                mem[ceil32(return_data.size) + 410 len 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[ceil32(return_data.size) + 410 len 19]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            43,
                            0x645472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                            mem[ceil32(return_data.size) + 308 len 21]
            if not return_data.size:
                require ext_code.size(address(sub_b9ec104bAddress))
                call address(sub_b9ec104bAddress).unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_8cab0f99Address)
                staticcall sub_8cab0f99Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), ext_call.return_data[0 len 28]
                call sub_8cab0f99Address with:
                   funct uint32(stor20)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[ceil32(return_data.size) + 410 len 19]
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[ceil32(return_data.size) + 410 len 19]
                else:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[(2 * ceil32(return_data.size)) + 411 len 19]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        32,
                                        45,
                                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                        mem[(2 * ceil32(return_data.size)) + 411 len 19]
            else:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                43,
                                0x645472616e7366657248656c7065723a3a73616665417070726f76653a20617070726f7665206661696c65,
                                mem[ceil32(return_data.size) + 308 len 21]
                require ext_code.size(address(sub_b9ec104bAddress))
                call address(sub_b9ec104bAddress).unstake(uint256 arg1, bool arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_8cab0f99Address)
                staticcall sub_8cab0f99Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor20), uint32(stor20), ext_call.return_data[0 len 28]
                call sub_8cab0f99Address with:
                   funct uint32(stor20)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[ceil32(return_data.size) + 410 len 19]
                    if not approve(address arg1, uint256 arg2), Mask(224, 0, stor18):
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[ceil32(return_data.size) + 410 len 19]
                else:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                    mem[(2 * ceil32(return_data.size)) + 411 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        32,
                                        45,
                                        0x5472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c6500,
                                        mem[(2 * ceil32(return_data.size)) + 411 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 19]
}



}
