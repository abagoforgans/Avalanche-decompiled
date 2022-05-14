contract main {




// =====================  Runtime code  =====================


address owner;
address MIMAddress;
address sub_3bb8141aAddress;
address sub_e89b7016Address;
uint32 stor4;
address DAOAddress;
uint256 sub_24722a03;
uint256 sub_86e2685c;
uint256 cap;
uint256 minCap;
uint256 sub_56a14d2a;
uint256 totalDebt;
uint8 started;
uint8 ended; offset 8
uint8 isPublic; offset 16
uint8 claimable; offset 24
uint8 claimPresale; offset 32
uint8 contractPaused; offset 40
uint256 stor11; offset 40
uint256 stor11; offset 32
uint256 stor11; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8
mapping of struct userInfo;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 sub_d8f12e65;

function claimPresale() payable {
    return bool(claimPresale)
}

function ended() payable {
    return bool(ended)
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function started() payable {
    return bool(started)
}

function sub_24722a03(?) payable {
    return sub_24722a03
}

function cap() payable {
    return cap
}

function sub_3bb8141a(?) payable {
    return sub_3bb8141aAddress
}

function minCap() payable {
    return minCap
}

function sub_4a39a7e2(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function sub_56a14d2a(?) payable {
    return sub_56a14d2a
}

function sub_86e2685c(?) payable {
    return sub_86e2685c
}

function contractPaused() payable {
    return bool(contractPaused)
}

function owner() payable {
    return owner
}

function DAO() payable {
    return address(DAOAddress)
}

function claimable() payable {
    return bool(claimable)
}

function sub_d8f12e65(?) payable {
    require calldata.size - 4 >= 32
    return sub_d8f12e65[arg1]
}

function sub_d94be577(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function MIM() payable {
    return MIMAddress
}

function isPublic() payable {
    return bool(isPublic)
}

function sub_e89b7016(?) payable {
    return sub_e89b7016Address
}

function totalDebt() payable {
    return totalDebt
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_055bd58f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function sub_a5423d02(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function sub_affab14c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 1
}

function sub_f8a900bc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13[address(arg1)] = 0
}

function sub_f484ed2e(?) payable {
    require calldata.size - 4 >= 32
    if stor13[address(arg1)]:
        return sub_24722a03
    if not stor14[address(arg1)]:
        return 0
    return sub_86e2685c
}

function sub_0568ef19(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    sub_e89b7016Address = arg1
}

function sub_fde422ad(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    sub_3bb8141aAddress = arg1
}

function sub_22bb5cf0(?) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_0 > cap:
        revert with 0, 'SafeMath: subtraction overflow'
    return (cap - userInfo[address(arg1)].field_0)
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(216, 0, stor11.field_40) = Mask(216, 0, not bool(contractPaused))
    return bool(contractPaused)
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    started = 1
    emit SaleStarted(block.number);
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    cap = arg1
}

function sub_7dcd0690(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    sub_86e2685c = arg1
}

function sub_fa6cf31c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if started:
        revert with 0, 'Sale has already started'
    sub_24722a03 = arg1
}

function sub_77e56357(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ended:
        revert with 0, 'Sale has already ended'
    Mask(240, 0, stor11.field_16) = 1
    emit 0xf69bd4d6: block.number
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not started:
        revert with 0, 'Sale has not started'
    if ended:
        revert with 0, 'Sale has already ended'
    Mask(248, 0, stor11.field_8) = 1
    emit SaleEnded(block.number);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ea8a0fbe(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not claimable:
        revert with 0, 'Claim has not been unlocked'
    if claimPresale:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73436c61696d2050726573616c652068617320616c7265616479206265656e20756e6c6f636b65,
                    mem[203 len 25]
    Mask(224, 0, stor11.field_32) = 1
    emit 0x953b3148: block.number
}

function sub_33f740d9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 400:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_c6cb4c8a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length > 100:
        revert with 0, 'too many addresses'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 13
        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_80fbd162(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ended:
        revert with 0, 'Sale has not ended'
    if claimable:
        revert with 0, 'Claim has already been unlocked'
    require ext_code.size(sub_e89b7016Address)
    staticcall sub_e89b7016Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 'not enough VALDAO in contract'
    Mask(232, 0, stor11.field_24) = 1
    emit 0xd82fec69: block.number
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AdminWithdrawal(address(arg1), arg2);
}

function sub_f5e46484(?) payable {
    if contractPaused:
        revert with 0, 'contract is paused'
    if not claimPresale:
        revert with 0, 'aVALDAO is not yet claimable'
    if userInfo[address(msg.sender)].field_256 <= 0:
        revert with 0, 'msg.sender has not participated'
    if userInfo[address(msg.sender)].field_512:
        revert with 0, 'msg.sender has already claimed'
    userInfo[address(msg.sender)].field_512 = 1
    userInfo[address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(sub_3bb8141aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_288
    mem[324 len 0] = 0
    call sub_3bb8141aAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_256
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Withdraw(sub_3bb8141aAddress, userInfo[address(msg.sender)].field_256, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if contractPaused:
        revert with 0, 'contract is paused'
    if not claimable:
        revert with 0, 'VALDAO is not yet claimable'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x645f616d6f756e74206d7573742062652067726561746572207468616e207a6572,
                    mem[197 len 31]
    if userInfo[address(msg.sender)].field_256 + arg1 < userInfo[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(msg.sender)].field_256 += arg1
    if arg1 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    totalDebt -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(sub_3bb8141aAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_3bb8141aAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if ext_code.size(sub_e89b7016Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
        call sub_e89b7016Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg1, mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if ext_code.size(sub_e89b7016Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
        call sub_e89b7016Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit Mint(sub_3bb8141aAddress, arg1, msg.sender);
    emit Withdraw(sub_e89b7016Address, arg1, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if contractPaused:
        revert with 0, 'contract is paused'
    if not started:
        revert with 0, 'Sale has not started'
    if ended:
        revert with 0, 'Sale has ended'
    if bool(stor13[address(msg.sender)]) != 1:
        if bool(stor14[address(msg.sender)]) != 1:
            if not isPublic:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x776d73672e73656e646572206973206e6f742077686974656c697374656420757365,
                            mem[198 len 30]
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if cap < userInfo[address(msg.sender)].field_0 + arg1:
        revert with 0, 'new amount above user limit'
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(msg.sender)].field_0 += arg1
    if sub_56a14d2a + arg1 < sub_56a14d2a:
        revert with 0, 'SafeMath: addition overflow'
    sub_56a14d2a += arg1
    if bool(stor13[address(msg.sender)]) == 1:
        if not arg1:
            if sub_24722a03 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_24722a03
            if totalDebt + (0 / sub_24722a03 / 10^9) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 0 / sub_24722a03 / 10^9
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(MIMAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call MIMAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_3bb8141aAddress)
            call sub_3bb8141aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_24722a03 / 10^9
        else:
            require arg1
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_24722a03 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_24722a03
            if totalDebt + (10^18 * arg1 / sub_24722a03 / 10^9) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^18 * arg1 / sub_24722a03 / 10^9
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(MIMAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call MIMAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_3bb8141aAddress)
            call sub_3bb8141aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * arg1 / sub_24722a03 / 10^9
    else:
        if bool(stor14[address(msg.sender)]) != 1:
            if arg1:
                require arg1
                if 10^18 * arg1 / arg1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if sub_86e2685c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_86e2685c
            if totalDebt + (0 / sub_86e2685c / 10^9) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 0 / sub_86e2685c / 10^9
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(MIMAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call MIMAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_3bb8141aAddress)
            call sub_3bb8141aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0 / sub_86e2685c / 10^9
        else:
            require arg1
            if 10^18 * arg1 / arg1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_86e2685c <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_86e2685c
            if totalDebt + (10^18 * arg1 / sub_86e2685c / 10^9) < totalDebt:
                revert with 0, 'SafeMath: addition overflow'
            totalDebt += 10^18 * arg1 / sub_86e2685c / 10^9
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if ext_code.size(MIMAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call MIMAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(DAOAddress), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(sub_3bb8141aAddress)
            call sub_3bb8141aAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * arg1 / sub_86e2685c / 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Deposit(arg1, msg.sender);
}



}
