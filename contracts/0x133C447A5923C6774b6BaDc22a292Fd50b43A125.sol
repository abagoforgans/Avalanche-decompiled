contract main {




// =====================  Runtime code  =====================


const blockTimestamp = block.timestamp

const MAX_BET_FEE = 1000


address owner;
uint256 stor1;
address tomatoAddress;
uint32 stor3;
address feeAddress;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint32 stor7;
mapping of struct userInfoList;
mapping of struct stor9;
array of struct userInfo;
mapping of uint8 stor11;
mapping of uint8 stor12;

function userLength() payable {
    return userInfo.length
}

function userInfoList(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = userInfoList[arg1][1].field_0
    idx = 128
    s = 0
    while userInfoList[arg1][1].length + 96 > idx:
        mem[idx + 32] = userInfoList[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userInfoList[arg1].field_0, 
           Array(len=userInfoList[arg1][1].length, data=mem[128 len userInfoList[arg1][1].length]),
           userInfoList[arg1].field_512,
           bool(userInfoList[arg1].field_672)
}

function feeAddress() payable {
    return address(feeAddress)
}

function userInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userInfo.length
    mem[128] = stor[sha3((3 * arg1) + ('name', 'userInfo', 10) + 1)].field_0
    idx = 128
    s = 0
    while stor[(3 * arg1) + ('name', 'userInfo', 10) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'userInfo', 10) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userInfo[arg1].field_0, 
           Array(len=stor[(3 * arg1) + ('name', 'userInfo', 10) + 1].length, data=mem[128 len stor[(3 * arg1) + ('name', 'userInfo', 10) + 1].length]),
           userInfo[arg1].field_512,
           bool(userInfo[arg1].field_672)
}

function owner() payable {
    return owner
}

function didWon(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(userInfoList[address(arg1)].field_672)
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function tomato() payable {
    return tomatoAddress
}

function _fallback() payable {
    revert
}

function poolInfo() payable {
    return stor4, stor5, stor6, stor7
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_87985a56(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor12[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function setBetFee(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    stor7 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_600cee78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[arg1[all]] = 0
    stor9[arg1[all]].field_0 = 0
    stor9[arg1[all]].field_256 = 0
    if 31 < stor9[arg1[all]][1].length:
        idx = 0
        while stor9[arg1[all]][1].length + 31 / 32 > idx:
            stor9[arg1[all]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor9[arg1[all]].field_512 = 0
    stor9[arg1[all]].field_672 = 0
}

function sub_864a0d0a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if stor12[arg1[all]]:
        return 0
    stor12[arg1[all]] = 1
    userInfo.length++
    userInfo[userInfo.length].field_0 = 0
    stor[sha3((3 * userInfo.length) + ('name', 'userInfo', 10) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    userInfo[userInfo.length].field_512 = arg2
    userInfo[userInfo.length].field_672 = 0
    mem[ceil32(arg1.length) + 256] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 288 len -arg1.length + ceil32(arg1.length)]
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x6c736574466565416464726573733a2073657474696e67206665654164647265737320746f20746865207a65726f206164647265737320697320666f726269646465,
                    mem[230 len 30]
    if address(feeAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe736574466565416464726573733a2063616c6c6572206973206e6f7420666565416464726573,
                    mem[203 len 25]
    address(feeAddress) = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function emergencyWithdraw() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(stor4) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfoList[address(msg.sender)].field_32
    call stor4 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfoList[address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfoList[address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfoList[address(msg.sender)].field_0, msg.sender);
    userInfoList[address(msg.sender)].field_0 = 0
    stor1 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if userInfoList[address(msg.sender)].field_0 < arg1:
        revert with 0, 'withdraw: not good'
    if not userInfoList[address(msg.sender)].field_672:
        revert with 0, 'withdraw: user did not won'
    if arg1 > 0:
        if arg1 > userInfoList[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfoList[address(msg.sender)].field_0 -= arg1
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if ext_code.size(stor4) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        call stor4 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        userInfoList[address(msg.sender)].field_672 = 0
    emit Withdraw(arg1, msg.sender);
    stor1 = 1
}

function sub_3461b771(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = stor9[arg1[all]][1].length
    mem[ceil32(arg1.length) + 160] = stor9[arg1[all]][1].field_0
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + stor9[arg1[all]][1].length + 128 > idx:
        mem[idx + 32] = stor9[arg1[all]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 160] = stor9[arg1[all]].field_0
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 224] = stor9[arg1[all]].field_512
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 256] = bool(stor9[arg1[all]].field_672)
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 192] = 128
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 288] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 320 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        return memory
          from ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 160
           len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 320] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 352 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    return memory
      from ceil32(arg1.length) + ceil32(stor9[arg1[all]][1].length) + 160
       len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 <= 0:
        emit Deposit(arg1, msg.sender);
    else:
        require ext_code.size(stor4)
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(stor4) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call stor4 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 <= 0:
                if userInfoList[address(msg.sender)].field_0 < userInfoList[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                call stor4 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                if userInfoList[address(msg.sender)].field_0 < userInfoList[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > userInfoList[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
            emit Deposit(0, msg.sender);
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(stor4)
            staticcall stor4.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 <= 0:
                if userInfoList[address(msg.sender)].field_0 < userInfoList[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                emit Deposit(0, msg.sender);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(stor4) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                mem[ceil32(return_data.size) + 549 len 4] = 0
                call stor4 with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if userInfoList[address(msg.sender)].field_0 < userInfoList[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > userInfoList[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit Deposit(0, msg.sender);
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if userInfoList[address(msg.sender)].field_0 < userInfoList[address(msg.sender)].field_0:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if 0 > userInfoList[address(msg.sender)].field_0:
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    emit Deposit(address rg1, uint256 rg2):
                                 0,
                                 mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                 msg.sender,
    stor1 = 1
}



}
