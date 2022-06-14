contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address sub_23d51aadAddress;
address DAIAddress;
address HUBAddress;
uint256 price;
uint256 cap;
uint256 sub_e93ed224;
uint256 totalDebt;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint8 stor8; offset 24
uint256 stor8; offset 24
uint256 stor8; offset 16
uint256 stor8; offset 8
mapping of struct userInfo;

function ended() payable {
    return bool(uint8(stor8.field_8))
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512)
}

function started() payable {
    return bool(uint8(stor8.field_0))
}

function sub_23d51aad(?) payable {
    return address(sub_23d51aadAddress)
}

function cap() payable {
    return cap
}

function contractPaused() payable {
    return bool(uint8(stor8.field_24))
}

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function HUB() payable {
    return HUBAddress
}

function claimable() payable {
    return bool(uint8(stor8.field_16))
}

function DAI() payable {
    return DAIAddress
}

function sub_e93ed224(?) payable {
    return sub_e93ed224
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

function sub_b45cc46c(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    HUBAddress = arg1
}

function sub_0b262ba7(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    address(sub_23d51aadAddress) = arg1
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
    Mask(232, 0, stor8.field_24) = Mask(232, 0, not bool(uint8(stor8.field_24)))
    return bool(uint8(stor8.field_24))
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_0):
        revert with 0, 'Sale has already started'
    cap = arg1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_0):
        revert with 0, 'Sale has already started'
    uint8(stor8.field_0) = 1
    emit SaleStarted(block.number);
}

function setPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor8.field_0):
        revert with 0, 'Sale has already started'
    price = arg1
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor8.field_0):
        revert with 0, 'Sale has not started'
    if uint8(stor8.field_8):
        revert with 0, 'Sale has already ended'
    Mask(248, 0, stor8.field_8) = 1
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
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_80fbd162(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor8.field_8):
        revert with 0, 'Sale has not ended'
    if uint8(stor8.field_16):
        revert with 0, 'Claim has already been unlocked'
    require ext_code.size(HUBAddress)
    staticcall HUBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalDebt:
        revert with 0, 'not enough HUB in contract'
    Mask(240, 0, stor8.field_16) = 1
    emit 0xd82fec69: block.number
}

function adminWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AdminWithdrawal(address(arg1), arg2);
}

function claim() payable {
    if uint8(stor8.field_24):
        revert with 0, 'contract is paused'
    if not uint8(stor8.field_16):
        revert with 0, 'HUB is not yet claimable'
    if userInfo[address(msg.sender)].field_512:
        revert with 0, 'User already claimed HUB'
    if userInfo[address(msg.sender)].field_256 <= 0:
        revert with 0, 'User should have unclaimed HUB'
    require ext_code.size(HUBAddress)
    staticcall HUBAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < userInfo[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe4e6f7420656e6f7567682048554220746f6b656e73206f6e20636f6e74726163,
                    mem[197 len 31]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(HUBAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_288
    mem[324 len 0] = 0
    call HUBAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[address(msg.sender)].field_256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[address(msg.sender)].field_256
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    userInfo[address(msg.sender)].field_256 = 0
    userInfo[address(msg.sender)].field_512 = 1
    if userInfo[address(msg.sender)].field_256 > totalDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    totalDebt -= userInfo[address(msg.sender)].field_256
    emit Withdraw(HUBAddress, userInfo[address(msg.sender)].field_256, msg.sender);
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor8.field_24):
        revert with 0, 'contract is paused'
    if not uint8(stor8.field_0):
        revert with 0, 'Sale has not started'
    if uint8(stor8.field_8):
        revert with 0, 'Sale has ended'
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if cap < userInfo[address(msg.sender)].field_0 + arg1:
        revert with 0, 'new amount above user limit'
    if userInfo[address(msg.sender)].field_0 + arg1 < userInfo[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[address(msg.sender)].field_0 += arg1
    if sub_e93ed224 + arg1 < sub_e93ed224:
        revert with 0, 'SafeMath: addition overflow'
    sub_e93ed224 += arg1
    if not arg1:
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if userInfo[address(msg.sender)].field_256 + (0 / price / 10^9) < userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[address(msg.sender)].field_256 += 0 / price / 10^9
        if totalDebt + (0 / price / 10^9) < totalDebt:
            revert with 0, 'SafeMath: addition overflow'
        totalDebt += 0 / price / 10^9
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(DAIAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_23d51aadAddress), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if price <= 0:
            revert with 0, 'SafeMath: division by zero'
        require price
        if userInfo[address(msg.sender)].field_256 + (10^18 * arg1 / price / 10^9) < userInfo[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[address(msg.sender)].field_256 += 10^18 * arg1 / price / 10^9
        if totalDebt + (10^18 * arg1 / price / 10^9) < totalDebt:
            revert with 0, 'SafeMath: addition overflow'
        totalDebt += 10^18 * arg1 / price / 10^9
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(DAIAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_23d51aadAddress), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
    call DAIAddress with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_23d51aadAddress), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Deposit(arg1, msg.sender);
}



}
