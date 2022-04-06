contract main {




// =====================  Runtime code  =====================


#
#  - take()
#
address owner;
address sub_fae318feAddress;
address usdtAddress;
uint256 period;
uint256 sub_85b8635a;
uint256 sub_0484d475;
uint256 sub_4f8ea29b;
mapping of struct userInfo;
mapping of uint256 sub_067d3956;
mapping of uint256 sub_d84d97ee;
uint256 totalShare;
array of struct userList;

function totalShare() payable {
    return totalShare
}

function sub_0484d475(?) payable {
    return sub_0484d475
}

function sub_067d3956(?) payable {
    require calldata.size - 4 >= 64
    return sub_067d3956[arg1][arg2]
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280
}

function userLength() payable {
    return userList.length
}

function usdt() payable {
    return usdtAddress
}

function sub_4f8ea29b(?) payable {
    return sub_4f8ea29b
}

function sub_85b8635a(?) payable {
    return sub_85b8635a
}

function owner() payable {
    return owner
}

function userList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userList.length
    return userList[arg1].field_0, 
           userList[arg1].field_256,
           userList[arg1].field_512,
           userList[arg1].field_768,
           userList[arg1].field_1024,
           userList[arg1].field_1280
}

function sub_d84d97ee(?) payable {
    require calldata.size - 4 >= 32
    return sub_d84d97ee[arg1]
}

function period() payable {
    return period
}

function sub_fae318fe(?) payable {
    return sub_fae318feAddress
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

function setPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    period = arg1
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdtAddress = arg1
}

function setTotalLine(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4f8ea29b = arg1
}

function setUsdtPoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_85b8635a = arg1
}

function setNikiPoints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0484d475 = arg1
}

function setNiki(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fae318feAddress = arg1
}

function getAmount() payable {
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (sub_85b8635a * 10^ext_call.return_data[0])
}

function userTotalTeam(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require sub_4f8ea29b
    if userList.length / sub_4f8ea29b > 5:
        if var20006 > 5:
            return var20007
    else:
        require sub_4f8ea29b
        if var20006 > userList.length / sub_4f8ea29b:
            return var20007
    mem[0] = var20006
    mem[32] = sha3(address(arg1), 8)
    var20006 = var20006 + 1
    var20007 = var20007 + sub_067d3956[address(arg1)][var20006]
    continue 
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

function withdraw() payable {
    if userInfo[address(msg.sender)].field_256 <= 0:
        revert with 0, 'NikiDrop: Must deposit!'
    if userInfo[address(msg.sender)].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - userInfo[address(msg.sender)].field_512 <= period:
        revert with 0, 'NikiDrop: When not to!'
    require ext_code.size(usdtAddress)
    call usdtAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[address(msg.sender)].field_256 = 0
}

function migrate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'migrate: no migrator'
    require ext_code.size(sub_fae318feAddress)
    staticcall sub_fae318feAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fae318feAddress)
    call sub_fae318feAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(msg.sender)].field_0:
        revert with 0, 'NikiDrop: Only once!'
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(usdtAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, sub_85b8635a * 10^ext_call.return_data[0]) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call usdtAddress with:
         gas gas_remaining wei
        args Mask(224, 32, sub_85b8635a * 10^ext_call.return_data[0]) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), sub_85b8635a * 10^ext_call.return_data[0]
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
    userInfo[address(msg.sender)].field_0 = userList.length + 1
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    userInfo[address(msg.sender)].field_256 = sub_85b8635a * 10^ext_call.return_data[0]
    userInfo[address(msg.sender)].field_512 = block.timestamp
    userInfo[address(msg.sender)].field_1024 = arg1
    userInfo[address(msg.sender)].field_1280 = msg.sender
    userList.length++
    userList[userList.length].field_0 = userInfo[address(msg.sender)].field_0
    userList[userList.length].field_256 = userInfo[address(msg.sender)].field_256
    userList[userList.length].field_512 = userInfo[address(msg.sender)].field_512
    userList[userList.length].field_768 = userInfo[address(msg.sender)].field_768
    userList[userList.length].field_1024 = userInfo[address(msg.sender)].field_1024
    userList[userList.length].field_1280 = userInfo[address(msg.sender)].field_1280
    require sub_4f8ea29b
    if arg1:
        if userInfo[address(arg1)].field_0:
            if userInfo[address(msg.sender)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b <= 5:
                if arg1 != msg.sender:
                    sub_067d3956[address(arg1)][stor7[address(msg.sender)].field_0 + stor6 - 1 / stor6]++
                    totalShare++
                    sub_d84d97ee[stor7[address(msg.sender)].field_0 + stor6 - 1 / stor6]++
}

function pendingEarn(address arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[64] = 480
    mem[288] = userInfo[address(arg1)].field_0
    mem[320] = userInfo[address(arg1)].field_256
    mem[352] = userInfo[address(arg1)].field_512
    mem[384] = userInfo[address(arg1)].field_768
    mem[416] = userInfo[address(arg1)].field_1024
    mem[448] = userInfo[address(arg1)].field_1280
    if not userInfo[address(arg1)].field_0:
        return 0
    if userInfo[address(arg1)].field_0 > 5 * sub_4f8ea29b:
        return 0
    require sub_4f8ea29b
    if userInfo[address(arg1)].field_0 > userList.length / sub_4f8ea29b * sub_4f8ea29b:
        return 0
    require ext_code.size(sub_fae318feAddress)
    staticcall sub_fae318feAddress.0x313ce567 with:
            gas gas_remaining wei
    mem[480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_4f8ea29b
    require sub_4f8ea29b
    if userList.length / sub_4f8ea29b > 5:
        if userList.length / sub_4f8ea29b > 5:
            if not -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6:
                if totalShare <= 0:
                    return 0
                require sub_4f8ea29b
                if userList.length / sub_4f8ea29b > 5:
                    if var104006 > 5:
                        if var104009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var104009
                else:
                    require sub_4f8ea29b
                    if var104006 > userList.length / sub_4f8ea29b:
                        if var104009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var104009
                mem[0] = var104006
                mem[32] = 9
                if var104007 + sub_d84d97ee[var104006] <= 0:
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009
                    continue 
                if not var104007 + sub_d84d97ee[var104006]:
                    if var104006:
                        require var104006
                        if var104006 * sub_4f8ea29b / var104006 != sub_4f8ea29b:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if var104006 * sub_4f8ea29b:
                            require var104006 * sub_4f8ea29b
                            if (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) / var104006 * sub_4f8ea29b != var104008 + sub_067d3956[address(arg1)][var104006]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b):
                                require (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)
                                if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) / (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) != 2:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if uint255((var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)):
                                    require 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)
                                    if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                        require 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                        if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require var104007 + sub_d84d97ee[var104006]
                if (10 * var104007) + (10 * sub_d84d97ee[var104006]) / var104007 + sub_d84d97ee[var104006] != 10:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var104006:
                    if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                    if var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                        revert with 0, 'SafeMath: addition overflow'
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                    continue 
                require var104006
                if var104006 * sub_4f8ea29b / var104006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var104006 * sub_4f8ea29b:
                    if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                    if var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                        revert with 0, 'SafeMath: addition overflow'
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                    continue 
                require var104006 * sub_4f8ea29b
                if (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) / var104006 * sub_4f8ea29b != var104008 + sub_067d3956[address(arg1)][var104006]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b):
                    if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                    if var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                        revert with 0, 'SafeMath: addition overflow'
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                    continue 
                require (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)
                if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) / (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not uint255((var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)):
                    if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                    if var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                        revert with 0, 'SafeMath: addition overflow'
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                    continue 
                require 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b)
                if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                    if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                    if var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                        revert with 0, 'SafeMath: addition overflow'
                    var104006 = var104006 + 1
                    var104007 = var104007 + sub_d84d97ee[var104006]
                    var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                    var104009 = var104009 + (0 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                    continue 
                require 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                if 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (10 * var104007) + (10 * sub_d84d97ee[var104006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var104007) + (10 * sub_d84d97ee[var104006])
                if var104009 + (2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var104007) + (10 * sub_d84d97ee[var104006])) < var104009:
                    revert with 0, 'SafeMath: addition overflow'
                var104006 = var104006 + 1
                var104007 = var104007 + sub_d84d97ee[var104006]
                var104008 = var104008 + sub_067d3956[address(arg1)][var104006]
                var104009 = var104009 + (2 * (var104008 * var104006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var104006] * var104006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var104007) + (10 * sub_d84d97ee[var104006]))
                continue 
            require -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6
            if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 / -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 != 8:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not Mask(253, 0, -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6):
                if totalShare <= 0:
                    return 0
                require sub_4f8ea29b
                if userList.length / sub_4f8ea29b > 5:
                    if var106006 > 5:
                        if var106009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var106009
                else:
                    require sub_4f8ea29b
                    if var106006 > userList.length / sub_4f8ea29b:
                        if var106009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var106009
                mem[0] = var106006
                mem[32] = 9
                if var106007 + sub_d84d97ee[var106006] <= 0:
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009
                    continue 
                if not var106007 + sub_d84d97ee[var106006]:
                    if var106006:
                        require var106006
                        if var106006 * sub_4f8ea29b / var106006 != sub_4f8ea29b:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if var106006 * sub_4f8ea29b:
                            require var106006 * sub_4f8ea29b
                            if (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) / var106006 * sub_4f8ea29b != var106008 + sub_067d3956[address(arg1)][var106006]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b):
                                require (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)
                                if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) / (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) != 2:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if uint255((var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)):
                                    require 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)
                                    if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                        require 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                        if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require var106007 + sub_d84d97ee[var106006]
                if (10 * var106007) + (10 * sub_d84d97ee[var106006]) / var106007 + sub_d84d97ee[var106006] != 10:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var106006:
                    if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                    if var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                        revert with 0, 'SafeMath: addition overflow'
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                    continue 
                require var106006
                if var106006 * sub_4f8ea29b / var106006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var106006 * sub_4f8ea29b:
                    if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                    if var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                        revert with 0, 'SafeMath: addition overflow'
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                    continue 
                require var106006 * sub_4f8ea29b
                if (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) / var106006 * sub_4f8ea29b != var106008 + sub_067d3956[address(arg1)][var106006]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b):
                    if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                    if var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                        revert with 0, 'SafeMath: addition overflow'
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                    continue 
                require (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)
                if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) / (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not uint255((var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)):
                    if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                    if var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                        revert with 0, 'SafeMath: addition overflow'
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                    continue 
                require 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b)
                if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                    if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                    if var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                        revert with 0, 'SafeMath: addition overflow'
                    var106006 = var106006 + 1
                    var106007 = var106007 + sub_d84d97ee[var106006]
                    var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                    var106009 = var106009 + (0 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                    continue 
                require 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                if 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (10 * var106007) + (10 * sub_d84d97ee[var106006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var106007) + (10 * sub_d84d97ee[var106006])
                if var106009 + (2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var106007) + (10 * sub_d84d97ee[var106006])) < var106009:
                    revert with 0, 'SafeMath: addition overflow'
                var106006 = var106006 + 1
                var106007 = var106007 + sub_d84d97ee[var106006]
                var106008 = var106008 + sub_067d3956[address(arg1)][var106006]
                var106009 = var106009 + (2 * (var106008 * var106006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var106006] * var106006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var106007) + (10 * sub_d84d97ee[var106006]))
                continue 
            require 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6
            if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10:
                if totalShare <= 0:
                    return 0
                require sub_4f8ea29b
                if userList.length / sub_4f8ea29b > 5:
                    if var108006 > 5:
                        if var108009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var108009
                else:
                    require sub_4f8ea29b
                    if var108006 > userList.length / sub_4f8ea29b:
                        if var108009 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return var108009
                mem[0] = var108006
                mem[32] = 9
                if var108007 + sub_d84d97ee[var108006] <= 0:
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009
                    continue 
                if not var108007 + sub_d84d97ee[var108006]:
                    if var108006:
                        require var108006
                        if var108006 * sub_4f8ea29b / var108006 != sub_4f8ea29b:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if var108006 * sub_4f8ea29b:
                            require var108006 * sub_4f8ea29b
                            if (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) / var108006 * sub_4f8ea29b != var108008 + sub_067d3956[address(arg1)][var108006]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b):
                                require (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)
                                if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) / (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) != 2:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if uint255((var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)):
                                    require 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)
                                    if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                    if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                        require 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                        if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require var108007 + sub_d84d97ee[var108006]
                if (10 * var108007) + (10 * sub_d84d97ee[var108006]) / var108007 + sub_d84d97ee[var108006] != 10:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var108006:
                    if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                    if var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                        revert with 0, 'SafeMath: addition overflow'
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                    continue 
                require var108006
                if var108006 * sub_4f8ea29b / var108006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not var108006 * sub_4f8ea29b:
                    if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                    if var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                        revert with 0, 'SafeMath: addition overflow'
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                    continue 
                require var108006 * sub_4f8ea29b
                if (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) / var108006 * sub_4f8ea29b != var108008 + sub_067d3956[address(arg1)][var108006]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b):
                    if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                    if var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                        revert with 0, 'SafeMath: addition overflow'
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                    continue 
                require (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)
                if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) / (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not uint255((var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)):
                    if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                    if var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                        revert with 0, 'SafeMath: addition overflow'
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                    continue 
                require 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b)
                if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                    if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                    if var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                        revert with 0, 'SafeMath: addition overflow'
                    var108006 = var108006 + 1
                    var108007 = var108007 + sub_d84d97ee[var108006]
                    var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                    var108009 = var108009 + (0 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                    continue 
                require 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                if 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (10 * var108007) + (10 * sub_d84d97ee[var108006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var108007) + (10 * sub_d84d97ee[var108006])
                if var108009 + (2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var108007) + (10 * sub_d84d97ee[var108006])) < var108009:
                    revert with 0, 'SafeMath: addition overflow'
                var108006 = var108006 + 1
                var108007 = var108007 + sub_d84d97ee[var108006]
                var108008 = var108008 + sub_067d3956[address(arg1)][var108006]
                var108009 = var108009 + (2 * (var108008 * var108006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var108006] * var108006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var108007) + (10 * sub_d84d97ee[var108006]))
                continue 
            require 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10
            if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475 / 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if totalShare <= 0:
                if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                    revert with 0, 'SafeMath: addition overflow'
                return (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475)
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var110006 > 5:
                    if (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var110009 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var110009)
            else:
                require sub_4f8ea29b
                if var110006 > userList.length / sub_4f8ea29b:
                    if (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var110009 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var110009)
            mem[0] = var110006
            mem[32] = 9
            if var110007 + sub_d84d97ee[var110006] <= 0:
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009
                continue 
            if not var110007 + sub_d84d97ee[var110006]:
                if var110006:
                    require var110006
                    if var110006 * sub_4f8ea29b / var110006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var110006 * sub_4f8ea29b:
                        require var110006 * sub_4f8ea29b
                        if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / var110006 * sub_4f8ea29b != var110008 + sub_067d3956[address(arg1)][var110006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b):
                            require (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
                            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)):
                                require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
                                if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var110007 + sub_d84d97ee[var110006]
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) / var110007 + sub_d84d97ee[var110006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var110006:
                if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var110007) + (10 * sub_d84d97ee[var110006])
                if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                    revert with 0, 'SafeMath: addition overflow'
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
                continue 
            require var110006
            if var110006 * sub_4f8ea29b / var110006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var110006 * sub_4f8ea29b:
                if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var110007) + (10 * sub_d84d97ee[var110006])
                if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                    revert with 0, 'SafeMath: addition overflow'
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
                continue 
            require var110006 * sub_4f8ea29b
            if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / var110006 * sub_4f8ea29b != var110008 + sub_067d3956[address(arg1)][var110006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b):
                if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var110007) + (10 * sub_d84d97ee[var110006])
                if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                    revert with 0, 'SafeMath: addition overflow'
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
                continue 
            require (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)):
                if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var110007) + (10 * sub_d84d97ee[var110006])
                if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                    revert with 0, 'SafeMath: addition overflow'
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
                continue 
            require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var110007) + (10 * sub_d84d97ee[var110006])
                if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                    revert with 0, 'SafeMath: addition overflow'
                var110006 = var110006 + 1
                var110007 = var110007 + sub_d84d97ee[var110006]
                var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
                var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
                continue 
            require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require sub_4f8ea29b
        if not (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1:
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var107006 > 5:
                    if var107009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var107009
            else:
                require sub_4f8ea29b
                if var107006 > userList.length / sub_4f8ea29b:
                    if var107009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var107009
            mem[0] = var107006
            mem[32] = 9
            if var107007 + sub_d84d97ee[var107006] <= 0:
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009
                continue 
            if not var107007 + sub_d84d97ee[var107006]:
                if var107006:
                    require var107006
                    if var107006 * sub_4f8ea29b / var107006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var107006 * sub_4f8ea29b:
                        require var107006 * sub_4f8ea29b
                        if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / var107006 * sub_4f8ea29b != var107008 + sub_067d3956[address(arg1)][var107006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b):
                            require (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
                            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)):
                                require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
                                if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var107007 + sub_d84d97ee[var107006]
            if (10 * var107007) + (10 * sub_d84d97ee[var107006]) / var107007 + sub_d84d97ee[var107006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var107006:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require var107006
            if var107006 * sub_4f8ea29b / var107006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var107006 * sub_4f8ea29b:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require var107006 * sub_4f8ea29b
            if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / var107006 * sub_4f8ea29b != var107008 + sub_067d3956[address(arg1)][var107006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b):
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)):
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var107007) + (10 * sub_d84d97ee[var107006])
            if var107009 + (2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                revert with 0, 'SafeMath: addition overflow'
            var107006 = var107006 + 1
            var107007 = var107007 + sub_d84d97ee[var107006]
            var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
            var107009 = var107009 + (2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
            continue 
        require (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1
        if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 / (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 != 8:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not Mask(253, 0, (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1):
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var109006 > 5:
                    if var109009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var109009
            else:
                require sub_4f8ea29b
                if var109006 > userList.length / sub_4f8ea29b:
                    if var109009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var109009
            mem[0] = var109006
            mem[32] = 9
            if var109007 + sub_d84d97ee[var109006] <= 0:
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009
                continue 
            if not var109007 + sub_d84d97ee[var109006]:
                if var109006:
                    require var109006
                    if var109006 * sub_4f8ea29b / var109006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var109006 * sub_4f8ea29b:
                        require var109006 * sub_4f8ea29b
                        if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / var109006 * sub_4f8ea29b != var109008 + sub_067d3956[address(arg1)][var109006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b):
                            require (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
                            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)):
                                require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
                                if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var109007 + sub_d84d97ee[var109006]
            if (10 * var109007) + (10 * sub_d84d97ee[var109006]) / var109007 + sub_d84d97ee[var109006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var109006:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require var109006
            if var109006 * sub_4f8ea29b / var109006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var109006 * sub_4f8ea29b:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require var109006 * sub_4f8ea29b
            if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / var109006 * sub_4f8ea29b != var109008 + sub_067d3956[address(arg1)][var109006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b):
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)):
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var109007) + (10 * sub_d84d97ee[var109006])
            if var109009 + (2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                revert with 0, 'SafeMath: addition overflow'
            var109006 = var109006 + 1
            var109007 = var109007 + sub_d84d97ee[var109006]
            var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
            var109009 = var109009 + (2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
            continue 
        require 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1
        if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10:
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var111006 > 5:
                    if var111009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var111009
            else:
                require sub_4f8ea29b
                if var111006 > userList.length / sub_4f8ea29b:
                    if var111009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var111009
            mem[0] = var111006
            mem[32] = 9
            if var111007 + sub_d84d97ee[var111006] <= 0:
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009
                continue 
            if not var111007 + sub_d84d97ee[var111006]:
                if var111006:
                    require var111006
                    if var111006 * sub_4f8ea29b / var111006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var111006 * sub_4f8ea29b:
                        require var111006 * sub_4f8ea29b
                        if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / var111006 * sub_4f8ea29b != var111008 + sub_067d3956[address(arg1)][var111006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b):
                            require (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
                            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)):
                                require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
                                if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var111007 + sub_d84d97ee[var111006]
            if (10 * var111007) + (10 * sub_d84d97ee[var111006]) / var111007 + sub_d84d97ee[var111006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var111006:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require var111006
            if var111006 * sub_4f8ea29b / var111006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var111006 * sub_4f8ea29b:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require var111006 * sub_4f8ea29b
            if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / var111006 * sub_4f8ea29b != var111008 + sub_067d3956[address(arg1)][var111006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b):
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)):
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var111007) + (10 * sub_d84d97ee[var111006])
            if var111009 + (2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                revert with 0, 'SafeMath: addition overflow'
            var111006 = var111006 + 1
            var111007 = var111007 + sub_d84d97ee[var111006]
            var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
            var111009 = var111009 + (2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
            continue 
        require 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10
        if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475 / 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if totalShare <= 0:
            if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                revert with 0, 'SafeMath: addition overflow'
            return (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475)
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var113006 > 5:
                if (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                    revert with 0, 'SafeMath: addition overflow'
                return ((8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009)
        else:
            require sub_4f8ea29b
            if var113006 > userList.length / sub_4f8ea29b:
                if (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                    revert with 0, 'SafeMath: addition overflow'
                return ((8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009)
        mem[0] = var113006
        mem[32] = 9
        if var113007 + sub_d84d97ee[var113006] <= 0:
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009
            continue 
        if not var113007 + sub_d84d97ee[var113006]:
            if var113006:
                require var113006
                if var113006 * sub_4f8ea29b / var113006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var113006 * sub_4f8ea29b:
                    require var113006 * sub_4f8ea29b
                    if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / var113006 * sub_4f8ea29b != var113008 + sub_067d3956[address(arg1)][var113006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b):
                        require (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
                        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)):
                            require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
                            if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var113007 + sub_d84d97ee[var113006]
        if (10 * var113007) + (10 * sub_d84d97ee[var113006]) / var113007 + sub_d84d97ee[var113006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var113006:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require var113006
        if var113006 * sub_4f8ea29b / var113006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var113006 * sub_4f8ea29b:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require var113006 * sub_4f8ea29b
        if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / var113006 * sub_4f8ea29b != var113008 + sub_067d3956[address(arg1)][var113006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b):
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)):
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var113007) + (10 * sub_d84d97ee[var113006])
        if var113009 + (2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
            revert with 0, 'SafeMath: addition overflow'
        var113006 = var113006 + 1
        var113007 = var113007 + sub_d84d97ee[var113006]
        var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
        var113009 = var113009 + (2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
        continue 
    if userList.length / sub_4f8ea29b <= 0:
        if totalShare <= 0:
            return 0
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var99006 > 5:
                if var99009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var99009
        else:
            require sub_4f8ea29b
            if var99006 > userList.length / sub_4f8ea29b:
                if var99009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var99009
        mem[0] = var99006
        mem[32] = 9
        if var99007 + sub_d84d97ee[var99006] <= 0:
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009
            continue 
        if not var99007 + sub_d84d97ee[var99006]:
            if var99006:
                require var99006
                if var99006 * sub_4f8ea29b / var99006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var99006 * sub_4f8ea29b:
                    require var99006 * sub_4f8ea29b
                    if (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) / var99006 * sub_4f8ea29b != var99008 + sub_067d3956[address(arg1)][var99006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b):
                        require (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)
                        if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) / (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)):
                            require 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)
                            if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var99007 + sub_d84d97ee[var99006]
        if (10 * var99007) + (10 * sub_d84d97ee[var99006]) / var99007 + sub_d84d97ee[var99006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var99006:
            if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var99007) + (10 * sub_d84d97ee[var99006])
            if var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
                revert with 0, 'SafeMath: addition overflow'
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
            continue 
        require var99006
        if var99006 * sub_4f8ea29b / var99006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var99006 * sub_4f8ea29b:
            if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var99007) + (10 * sub_d84d97ee[var99006])
            if var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
                revert with 0, 'SafeMath: addition overflow'
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
            continue 
        require var99006 * sub_4f8ea29b
        if (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) / var99006 * sub_4f8ea29b != var99008 + sub_067d3956[address(arg1)][var99006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b):
            if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var99007) + (10 * sub_d84d97ee[var99006])
            if var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
                revert with 0, 'SafeMath: addition overflow'
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
            continue 
        require (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)
        if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) / (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)):
            if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var99007) + (10 * sub_d84d97ee[var99006])
            if var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
                revert with 0, 'SafeMath: addition overflow'
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
            continue 
        require 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b)
        if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var99007) + (10 * sub_d84d97ee[var99006])
            if var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
                revert with 0, 'SafeMath: addition overflow'
            var99006 = var99006 + 1
            var99007 = var99007 + sub_d84d97ee[var99006]
            var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
            var99009 = var99009 + (0 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
            continue 
        require 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var99007) + (10 * sub_d84d97ee[var99006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var99007) + (10 * sub_d84d97ee[var99006])
        if var99009 + (2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var99007) + (10 * sub_d84d97ee[var99006])) < var99009:
            revert with 0, 'SafeMath: addition overflow'
        var99006 = var99006 + 1
        var99007 = var99007 + sub_d84d97ee[var99006]
        var99008 = var99008 + sub_067d3956[address(arg1)][var99006]
        var99009 = var99009 + (2 * (var99008 * var99006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var99006] * var99006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var99007) + (10 * sub_d84d97ee[var99006]))
        continue 
    require sub_4f8ea29b
    if userList.length / sub_4f8ea29b > 5:
        if not -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6:
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var107006 > 5:
                    if var107009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var107009
            else:
                require sub_4f8ea29b
                if var107006 > userList.length / sub_4f8ea29b:
                    if var107009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var107009
            mem[0] = var107006
            mem[32] = 9
            if var107007 + sub_d84d97ee[var107006] <= 0:
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009
                continue 
            if not var107007 + sub_d84d97ee[var107006]:
                if var107006:
                    require var107006
                    if var107006 * sub_4f8ea29b / var107006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var107006 * sub_4f8ea29b:
                        require var107006 * sub_4f8ea29b
                        if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / var107006 * sub_4f8ea29b != var107008 + sub_067d3956[address(arg1)][var107006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b):
                            require (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
                            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)):
                                require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
                                if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var107007 + sub_d84d97ee[var107006]
            if (10 * var107007) + (10 * sub_d84d97ee[var107006]) / var107007 + sub_d84d97ee[var107006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var107006:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require var107006
            if var107006 * sub_4f8ea29b / var107006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var107006 * sub_4f8ea29b:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require var107006 * sub_4f8ea29b
            if (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / var107006 * sub_4f8ea29b != var107008 + sub_067d3956[address(arg1)][var107006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b):
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) / (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)):
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b)
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var107007) + (10 * sub_d84d97ee[var107006])
                if var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                    revert with 0, 'SafeMath: addition overflow'
                var107006 = var107006 + 1
                var107007 = var107007 + sub_d84d97ee[var107006]
                var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
                var107009 = var107009 + (0 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
                continue 
            require 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var107007) + (10 * sub_d84d97ee[var107006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var107007) + (10 * sub_d84d97ee[var107006])
            if var107009 + (2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var107007) + (10 * sub_d84d97ee[var107006])) < var107009:
                revert with 0, 'SafeMath: addition overflow'
            var107006 = var107006 + 1
            var107007 = var107007 + sub_d84d97ee[var107006]
            var107008 = var107008 + sub_067d3956[address(arg1)][var107006]
            var107009 = var107009 + (2 * (var107008 * var107006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var107006] * var107006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var107007) + (10 * sub_d84d97ee[var107006]))
            continue 
        require -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6
        if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 / -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 != 8:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not Mask(253, 0, -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6):
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var109006 > 5:
                    if var109009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var109009
            else:
                require sub_4f8ea29b
                if var109006 > userList.length / sub_4f8ea29b:
                    if var109009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var109009
            mem[0] = var109006
            mem[32] = 9
            if var109007 + sub_d84d97ee[var109006] <= 0:
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009
                continue 
            if not var109007 + sub_d84d97ee[var109006]:
                if var109006:
                    require var109006
                    if var109006 * sub_4f8ea29b / var109006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var109006 * sub_4f8ea29b:
                        require var109006 * sub_4f8ea29b
                        if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / var109006 * sub_4f8ea29b != var109008 + sub_067d3956[address(arg1)][var109006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b):
                            require (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
                            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)):
                                require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
                                if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var109007 + sub_d84d97ee[var109006]
            if (10 * var109007) + (10 * sub_d84d97ee[var109006]) / var109007 + sub_d84d97ee[var109006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var109006:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require var109006
            if var109006 * sub_4f8ea29b / var109006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var109006 * sub_4f8ea29b:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require var109006 * sub_4f8ea29b
            if (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / var109006 * sub_4f8ea29b != var109008 + sub_067d3956[address(arg1)][var109006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b):
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) / (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)):
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b)
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var109007) + (10 * sub_d84d97ee[var109006])
                if var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                    revert with 0, 'SafeMath: addition overflow'
                var109006 = var109006 + 1
                var109007 = var109007 + sub_d84d97ee[var109006]
                var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
                var109009 = var109009 + (0 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
                continue 
            require 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var109007) + (10 * sub_d84d97ee[var109006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var109007) + (10 * sub_d84d97ee[var109006])
            if var109009 + (2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var109007) + (10 * sub_d84d97ee[var109006])) < var109009:
                revert with 0, 'SafeMath: addition overflow'
            var109006 = var109006 + 1
            var109007 = var109007 + sub_d84d97ee[var109006]
            var109008 = var109008 + sub_067d3956[address(arg1)][var109006]
            var109009 = var109009 + (2 * (var109008 * var109006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var109006] * var109006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var109007) + (10 * sub_d84d97ee[var109006]))
            continue 
        require 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6
        if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10:
            if totalShare <= 0:
                return 0
            require sub_4f8ea29b
            if userList.length / sub_4f8ea29b > 5:
                if var111006 > 5:
                    if var111009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var111009
            else:
                require sub_4f8ea29b
                if var111006 > userList.length / sub_4f8ea29b:
                    if var111009 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return var111009
            mem[0] = var111006
            mem[32] = 9
            if var111007 + sub_d84d97ee[var111006] <= 0:
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009
                continue 
            if not var111007 + sub_d84d97ee[var111006]:
                if var111006:
                    require var111006
                    if var111006 * sub_4f8ea29b / var111006 != sub_4f8ea29b:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if var111006 * sub_4f8ea29b:
                        require var111006 * sub_4f8ea29b
                        if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / var111006 * sub_4f8ea29b != var111008 + sub_067d3956[address(arg1)][var111006]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b):
                            require (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
                            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 2:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if uint255((var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)):
                                require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
                                if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                    require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                    if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                revert with 0, 'SafeMath: division by zero'
            require var111007 + sub_d84d97ee[var111006]
            if (10 * var111007) + (10 * sub_d84d97ee[var111006]) / var111007 + sub_d84d97ee[var111006] != 10:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var111006:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require var111006
            if var111006 * sub_4f8ea29b / var111006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not var111006 * sub_4f8ea29b:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require var111006 * sub_4f8ea29b
            if (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / var111006 * sub_4f8ea29b != var111008 + sub_067d3956[address(arg1)][var111006]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b):
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) / (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 2:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not uint255((var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)):
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b)
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require (10 * var111007) + (10 * sub_d84d97ee[var111006])
                if var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                    revert with 0, 'SafeMath: addition overflow'
                var111006 = var111006 + 1
                var111007 = var111007 + sub_d84d97ee[var111006]
                var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
                var111009 = var111009 + (0 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
                continue 
            require 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
            if 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if (10 * var111007) + (10 * sub_d84d97ee[var111006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var111007) + (10 * sub_d84d97ee[var111006])
            if var111009 + (2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var111007) + (10 * sub_d84d97ee[var111006])) < var111009:
                revert with 0, 'SafeMath: addition overflow'
            var111006 = var111006 + 1
            var111007 = var111007 + sub_d84d97ee[var111006]
            var111008 = var111008 + sub_067d3956[address(arg1)][var111006]
            var111009 = var111009 + (2 * (var111008 * var111006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var111006] * var111006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var111007) + (10 * sub_d84d97ee[var111006]))
            continue 
        require 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10
        if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475 / 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if totalShare <= 0:
            if 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                revert with 0, 'SafeMath: addition overflow'
            return (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475)
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var113006 > 5:
                if (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                    revert with 0, 'SafeMath: addition overflow'
                return ((8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009)
        else:
            require sub_4f8ea29b
            if var113006 > userList.length / sub_4f8ea29b:
                if (8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009 < 8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                    revert with 0, 'SafeMath: addition overflow'
                return ((8 * -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 6 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var113009)
        mem[0] = var113006
        mem[32] = 9
        if var113007 + sub_d84d97ee[var113006] <= 0:
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009
            continue 
        if not var113007 + sub_d84d97ee[var113006]:
            if var113006:
                require var113006
                if var113006 * sub_4f8ea29b / var113006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var113006 * sub_4f8ea29b:
                    require var113006 * sub_4f8ea29b
                    if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / var113006 * sub_4f8ea29b != var113008 + sub_067d3956[address(arg1)][var113006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b):
                        require (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
                        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)):
                            require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
                            if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var113007 + sub_d84d97ee[var113006]
        if (10 * var113007) + (10 * sub_d84d97ee[var113006]) / var113007 + sub_d84d97ee[var113006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var113006:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require var113006
        if var113006 * sub_4f8ea29b / var113006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var113006 * sub_4f8ea29b:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require var113006 * sub_4f8ea29b
        if (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / var113006 * sub_4f8ea29b != var113008 + sub_067d3956[address(arg1)][var113006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b):
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) / (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)):
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b)
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var113007) + (10 * sub_d84d97ee[var113006])
            if var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
                revert with 0, 'SafeMath: addition overflow'
            var113006 = var113006 + 1
            var113007 = var113007 + sub_d84d97ee[var113006]
            var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
            var113009 = var113009 + (0 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
            continue 
        require 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var113007) + (10 * sub_d84d97ee[var113006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var113007) + (10 * sub_d84d97ee[var113006])
        if var113009 + (2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var113007) + (10 * sub_d84d97ee[var113006])) < var113009:
            revert with 0, 'SafeMath: addition overflow'
        var113006 = var113006 + 1
        var113007 = var113007 + sub_d84d97ee[var113006]
        var113008 = var113008 + sub_067d3956[address(arg1)][var113006]
        var113009 = var113009 + (2 * (var113008 * var113006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var113006] * var113006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var113007) + (10 * sub_d84d97ee[var113006]))
        continue 
    require sub_4f8ea29b
    if not (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1:
        if totalShare <= 0:
            return 0
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var110006 > 5:
                if var110009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var110009
        else:
            require sub_4f8ea29b
            if var110006 > userList.length / sub_4f8ea29b:
                if var110009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var110009
        mem[0] = var110006
        mem[32] = 9
        if var110007 + sub_d84d97ee[var110006] <= 0:
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009
            continue 
        if not var110007 + sub_d84d97ee[var110006]:
            if var110006:
                require var110006
                if var110006 * sub_4f8ea29b / var110006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var110006 * sub_4f8ea29b:
                    require var110006 * sub_4f8ea29b
                    if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / var110006 * sub_4f8ea29b != var110008 + sub_067d3956[address(arg1)][var110006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b):
                        require (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
                        if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)):
                            require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
                            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var110007 + sub_d84d97ee[var110006]
        if (10 * var110007) + (10 * sub_d84d97ee[var110006]) / var110007 + sub_d84d97ee[var110006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var110006:
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require var110006
        if var110006 * sub_4f8ea29b / var110006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var110006 * sub_4f8ea29b:
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require var110006 * sub_4f8ea29b
        if (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / var110006 * sub_4f8ea29b != var110008 + sub_067d3956[address(arg1)][var110006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b):
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
        if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) / (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)):
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b)
        if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var110007) + (10 * sub_d84d97ee[var110006])
            if var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
                revert with 0, 'SafeMath: addition overflow'
            var110006 = var110006 + 1
            var110007 = var110007 + sub_d84d97ee[var110006]
            var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
            var110009 = var110009 + (0 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
            continue 
        require 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var110007) + (10 * sub_d84d97ee[var110006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var110007) + (10 * sub_d84d97ee[var110006])
        if var110009 + (2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var110007) + (10 * sub_d84d97ee[var110006])) < var110009:
            revert with 0, 'SafeMath: addition overflow'
        var110006 = var110006 + 1
        var110007 = var110007 + sub_d84d97ee[var110006]
        var110008 = var110008 + sub_067d3956[address(arg1)][var110006]
        var110009 = var110009 + (2 * (var110008 * var110006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var110006] * var110006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var110007) + (10 * sub_d84d97ee[var110006]))
        continue 
    require (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1
    if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 / (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 != 8:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not Mask(253, 0, (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1):
        if totalShare <= 0:
            return 0
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var112006 > 5:
                if var112009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var112009
        else:
            require sub_4f8ea29b
            if var112006 > userList.length / sub_4f8ea29b:
                if var112009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var112009
        mem[0] = var112006
        mem[32] = 9
        if var112007 + sub_d84d97ee[var112006] <= 0:
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009
            continue 
        if not var112007 + sub_d84d97ee[var112006]:
            if var112006:
                require var112006
                if var112006 * sub_4f8ea29b / var112006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var112006 * sub_4f8ea29b:
                    require var112006 * sub_4f8ea29b
                    if (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) / var112006 * sub_4f8ea29b != var112008 + sub_067d3956[address(arg1)][var112006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b):
                        require (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)
                        if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) / (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)):
                            require 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)
                            if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var112007 + sub_d84d97ee[var112006]
        if (10 * var112007) + (10 * sub_d84d97ee[var112006]) / var112007 + sub_d84d97ee[var112006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var112006:
            if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var112007) + (10 * sub_d84d97ee[var112006])
            if var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
                revert with 0, 'SafeMath: addition overflow'
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
            continue 
        require var112006
        if var112006 * sub_4f8ea29b / var112006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var112006 * sub_4f8ea29b:
            if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var112007) + (10 * sub_d84d97ee[var112006])
            if var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
                revert with 0, 'SafeMath: addition overflow'
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
            continue 
        require var112006 * sub_4f8ea29b
        if (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) / var112006 * sub_4f8ea29b != var112008 + sub_067d3956[address(arg1)][var112006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b):
            if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var112007) + (10 * sub_d84d97ee[var112006])
            if var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
                revert with 0, 'SafeMath: addition overflow'
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
            continue 
        require (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)
        if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) / (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)):
            if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var112007) + (10 * sub_d84d97ee[var112006])
            if var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
                revert with 0, 'SafeMath: addition overflow'
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
            continue 
        require 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b)
        if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var112007) + (10 * sub_d84d97ee[var112006])
            if var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
                revert with 0, 'SafeMath: addition overflow'
            var112006 = var112006 + 1
            var112007 = var112007 + sub_d84d97ee[var112006]
            var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
            var112009 = var112009 + (0 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
            continue 
        require 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var112007) + (10 * sub_d84d97ee[var112006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var112007) + (10 * sub_d84d97ee[var112006])
        if var112009 + (2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var112007) + (10 * sub_d84d97ee[var112006])) < var112009:
            revert with 0, 'SafeMath: addition overflow'
        var112006 = var112006 + 1
        var112007 = var112007 + sub_d84d97ee[var112006]
        var112008 = var112008 + sub_067d3956[address(arg1)][var112006]
        var112009 = var112009 + (2 * (var112008 * var112006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var112006] * var112006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var112007) + (10 * sub_d84d97ee[var112006]))
        continue 
    require 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1
    if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 != 10^ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10:
        if totalShare <= 0:
            return 0
        require sub_4f8ea29b
        if userList.length / sub_4f8ea29b > 5:
            if var114006 > 5:
                if var114009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var114009
        else:
            require sub_4f8ea29b
            if var114006 > userList.length / sub_4f8ea29b:
                if var114009 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return var114009
        mem[0] = var114006
        mem[32] = 9
        if var114007 + sub_d84d97ee[var114006] <= 0:
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009
            continue 
        if not var114007 + sub_d84d97ee[var114006]:
            if var114006:
                require var114006
                if var114006 * sub_4f8ea29b / var114006 != sub_4f8ea29b:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if var114006 * sub_4f8ea29b:
                    require var114006 * sub_4f8ea29b
                    if (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) / var114006 * sub_4f8ea29b != var114008 + sub_067d3956[address(arg1)][var114006]:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b):
                        require (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)
                        if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) / (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) != 2:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if uint255((var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)):
                            require 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)
                            if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                                require 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                                if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            revert with 0, 'SafeMath: division by zero'
        require var114007 + sub_d84d97ee[var114006]
        if (10 * var114007) + (10 * sub_d84d97ee[var114006]) / var114007 + sub_d84d97ee[var114006] != 10:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var114006:
            if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var114007) + (10 * sub_d84d97ee[var114006])
            if var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
                revert with 0, 'SafeMath: addition overflow'
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
            continue 
        require var114006
        if var114006 * sub_4f8ea29b / var114006 != sub_4f8ea29b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not var114006 * sub_4f8ea29b:
            if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var114007) + (10 * sub_d84d97ee[var114006])
            if var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
                revert with 0, 'SafeMath: addition overflow'
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
            continue 
        require var114006 * sub_4f8ea29b
        if (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) / var114006 * sub_4f8ea29b != var114008 + sub_067d3956[address(arg1)][var114006]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b):
            if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var114007) + (10 * sub_d84d97ee[var114006])
            if var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
                revert with 0, 'SafeMath: addition overflow'
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
            continue 
        require (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)
        if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) / (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not uint255((var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)):
            if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var114007) + (10 * sub_d84d97ee[var114006])
            if var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
                revert with 0, 'SafeMath: addition overflow'
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
            continue 
        require 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b)
        if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
            if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (10 * var114007) + (10 * sub_d84d97ee[var114006])
            if var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
                revert with 0, 'SafeMath: addition overflow'
            var114006 = var114006 + 1
            var114007 = var114007 + sub_d84d97ee[var114006]
            var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
            var114009 = var114009 + (0 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
            continue 
        require 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
        if 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if (10 * var114007) + (10 * sub_d84d97ee[var114006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var114007) + (10 * sub_d84d97ee[var114006])
        if var114009 + (2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var114007) + (10 * sub_d84d97ee[var114006])) < var114009:
            revert with 0, 'SafeMath: addition overflow'
        var114006 = var114006 + 1
        var114007 = var114007 + sub_d84d97ee[var114006]
        var114008 = var114008 + sub_067d3956[address(arg1)][var114006]
        var114009 = var114009 + (2 * (var114008 * var114006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var114006] * var114006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var114007) + (10 * sub_d84d97ee[var114006]))
        continue 
    require 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10
    if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475 / 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 != sub_0484d475:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if totalShare <= 0:
        if 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
            revert with 0, 'SafeMath: addition overflow'
        return (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475)
    require sub_4f8ea29b
    if userList.length / sub_4f8ea29b > 5:
        if var116006 > 5:
            if (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var116009 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                revert with 0, 'SafeMath: addition overflow'
            return ((8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var116009)
    else:
        require sub_4f8ea29b
        if var116006 > userList.length / sub_4f8ea29b:
            if (8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var116009 < 8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475:
                revert with 0, 'SafeMath: addition overflow'
            return ((8 * (userList.length / sub_4f8ea29b) + -(userInfo[address(arg1)].field_0 + sub_4f8ea29b - 1 / sub_4f8ea29b) + 1 * 10^ext_call.return_data[0] / 10 * sub_0484d475) + var116009)
    mem[0] = var116006
    mem[32] = 9
    if var116007 + sub_d84d97ee[var116006] <= 0:
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009
        continue 
    if not var116007 + sub_d84d97ee[var116006]:
        if var116006:
            require var116006
            if var116006 * sub_4f8ea29b / var116006 != sub_4f8ea29b:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if var116006 * sub_4f8ea29b:
                require var116006 * sub_4f8ea29b
                if (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) / var116006 * sub_4f8ea29b != var116008 + sub_067d3956[address(arg1)][var116006]:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b):
                    require (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)
                    if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) / (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) != 2:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if uint255((var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)):
                        require 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)
                        if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
                            require 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
                            if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        revert with 0, 'SafeMath: division by zero'
    require var116007 + sub_d84d97ee[var116006]
    if (10 * var116007) + (10 * sub_d84d97ee[var116006]) / var116007 + sub_d84d97ee[var116006] != 10:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not var116006:
        if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var116007) + (10 * sub_d84d97ee[var116006])
        if var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
            revert with 0, 'SafeMath: addition overflow'
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
        continue 
    require var116006
    if var116006 * sub_4f8ea29b / var116006 != sub_4f8ea29b:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not var116006 * sub_4f8ea29b:
        if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var116007) + (10 * sub_d84d97ee[var116006])
        if var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
            revert with 0, 'SafeMath: addition overflow'
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
        continue 
    require var116006 * sub_4f8ea29b
    if (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) / var116006 * sub_4f8ea29b != var116008 + sub_067d3956[address(arg1)][var116006]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b):
        if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var116007) + (10 * sub_d84d97ee[var116006])
        if var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
            revert with 0, 'SafeMath: addition overflow'
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
        continue 
    require (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)
    if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) / (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) != 2:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not uint255((var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)):
        if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var116007) + (10 * sub_d84d97ee[var116006])
        if var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
            revert with 0, 'SafeMath: addition overflow'
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
        continue 
    require 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b)
    if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] / 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) != 10^ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0]:
        if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (10 * var116007) + (10 * sub_d84d97ee[var116006])
        if var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
            revert with 0, 'SafeMath: addition overflow'
        var116006 = var116006 + 1
        var116007 = var116007 + sub_d84d97ee[var116006]
        var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
        var116009 = var116009 + (0 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
        continue 
    require 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0]
    if 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / 2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] != sub_0484d475:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if (10 * var116007) + (10 * sub_d84d97ee[var116006]) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require (10 * var116007) + (10 * sub_d84d97ee[var116006])
    if var116009 + (2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var116007) + (10 * sub_d84d97ee[var116006])) < var116009:
        revert with 0, 'SafeMath: addition overflow'
    var116006 = var116006 + 1
    var116007 = var116007 + sub_d84d97ee[var116006]
    var116008 = var116008 + sub_067d3956[address(arg1)][var116006]
    var116009 = var116009 + (2 * (var116008 * var116006 * sub_4f8ea29b) + (sub_067d3956[address(arg1)][var116006] * var116006 * sub_4f8ea29b) * 10^ext_call.return_data[0] * sub_0484d475 / (10 * var116007) + (10 * sub_d84d97ee[var116006]))
    continue 
}



}
