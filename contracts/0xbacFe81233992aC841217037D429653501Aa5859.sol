contract main {




// =====================  Runtime code  =====================


const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const buyBackAddress = 57005

const sub_7c717c09(?) = 9500

const withdrawFeeFactorLL = 9950

const sub_a613a28a(?) = 10000

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address farmContractAddress; offset 24
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address sub_cb971847Address;
uint256 sub_1b61e055;
address sub_e110930fAddress;
uint32 stor12;
address sub_88f9e800Address;
uint256 stor12;
address sub_b3ed4599Address;
address govAddress;
uint256 lastEarnBlock;
uint256 stor16; offset 32
uint256 wantLockedTotal;
big480 stor16;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
uint256 entranceFeeFactor;
uint256 sub_25c7ce6b;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_67eed8e0;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;
array of address sub_c854f12a;
array of address sub_4ae042ef;
address earned0Address;
array of address sub_07e2318d;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function sub_07e2318d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_07e2318d.length
    return sub_07e2318d[arg1]
}

function sub_0ddea8c3(?) payable {
    return bool(uint8(stor2.field_8))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function buyBackRate() payable {
    return buyBackRate
}

function sub_1b61e055(?) payable {
    return sub_1b61e055
}

function sub_25c7ce6b(?) payable {
    return sub_25c7ce6b
}

function earned0Address() payable {
    return earned0Address
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function govAddress() payable {
    return govAddress
}

function sub_4ae042ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4ae042ef.length
    return sub_4ae042ef[arg1]
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function sub_67eed8e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_67eed8e0.length
    return sub_67eed8e0[arg1]
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function token0Address() payable {
    return token0Address
}

function controllerFee() payable {
    return controllerFee
}

function sub_88f9e800(?) payable {
    return address(sub_88f9e800Address)
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function farmContractAddress() payable {
    return farmContractAddress
}

function sub_b3ed4599(?) payable {
    return sub_b3ed4599Address
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function sub_c854f12a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c854f12a.length
    return sub_c854f12a[arg1]
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function sub_cb971847(?) payable {
    return sub_cb971847Address
}

function token1Address() payable {
    return token1Address
}

function sub_e110930f(?) payable {
    return sub_e110930fAddress
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_16))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function slippageFactor() payable {
    return slippageFactor
}

function earn() payable {
  stop
}

function _fallback() payable {
    revert
}

function convertDustToEarned() payable {
  stop
}

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    stor1 = 1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    govAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBuybackRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    sub_cb971847Address = arg1
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 > 300:
        revert with 0, 'too high'
    controllerFee = arg1
}

function setbuyBackRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if buyBackRate > 800:
        revert with 0, 'too high'
    buyBackRate = arg1
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function setDepositFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9500:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    sub_25c7ce6b = arg1
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    entranceFeeFactor = arg1
}

function setWithdrawFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 <= 9950:
        revert with 0, '!safe - too low'
    if arg1 > 10000:
        revert with 0, '!safe - too high'
    withdrawFeeFactor = arg1
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

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'Not authorised'
    if arg1 == earnedAddress:
        revert with 0, '!safe'
    if arg1 == wantAddress:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if sub_25c7ce6b >= 10000:
            if wantLockedTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sharesTotal / arg2 != sharesTotal:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not arg2 * sharesTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sharesTotal
            if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            stor1 = 1
            return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
        if not arg2:
            if wantLockedTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor1 = 1
                return 0
            if sharesTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor1 = 1
                return 0
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if wantLockedTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if sharesTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if not arg2 * sub_25c7ce6b / 10000:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
        if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000 * sharesTotal
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[457 len 31]
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
        if sub_25c7ce6b >= 10000:
            if wantLockedTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if sharesTotal <= 0:
                if sharesTotal + arg2 < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += arg2
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if not arg2:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2
            if arg2 * sharesTotal / arg2 != sharesTotal:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not arg2 * sharesTotal:
                if wantLockedTotal <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require wantLockedTotal
                if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                sharesTotal += 0 / wantLockedTotal / 10000
                if not uint8(stor2.field_16):
                    if wantLockedTotal + arg2 < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                    wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            require arg2 * sharesTotal
            if arg2 * sharesTotal * entranceFeeFactor / arg2 * sharesTotal != entranceFeeFactor:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            stor1 = 1
            return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
        if not arg2:
            if wantLockedTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor1 = 1
                return 0
            if sharesTotal <= 0:
                if sharesTotal < sharesTotal:
                    revert with 0, 'SafeMath: addition overflow'
                if not uint8(stor2.field_16):
                    if wantLockedTotal < wantLockedTotal:
                        revert with 0, 'SafeMath: addition overflow'
                stor1 = 1
                return 0
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2
        if arg2 * sub_25c7ce6b / arg2 != sub_25c7ce6b:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if wantLockedTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if sharesTotal <= 0:
            if sharesTotal + (arg2 * sub_25c7ce6b / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2 * sub_25c7ce6b / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (arg2 * sub_25c7ce6b / 10000)
        if not arg2 * sub_25c7ce6b / 10000:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal / arg2 * sub_25c7ce6b / 10000 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
        if not arg2 * sub_25c7ce6b / 10000 * sharesTotal:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_16):
                if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2 * sub_25c7ce6b / 10000
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        require arg2 * sub_25c7ce6b / 10000 * sharesTotal
        if arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / arg2 * sub_25c7ce6b / 10000 * sharesTotal != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 458 len 31]
    ('eq', ('div', ('mul', ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sub_25c7ce6b', 21))), 10000), ('stor', ('name', 'sharesTotal', 17)), ('stor', ('name', 'entranceFeeFactor', 20))), ('mul', ('div', ('mul', ('param', 'arg2'), ('stor', ('name', 'sub_25c7ce6b', 21))), 10000), ('stor', ('name', 'sharesTotal', 17)))), ('stor', ('name', 'entranceFeeFactor', 20)))
    if wantLockedTotal <= 0:
        revert with 0, 'SafeMath: division by zero'
    require wantLockedTotal
    if sharesTotal + (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000) < sharesTotal:
        revert with 0, 'SafeMath: addition overflow'
    sharesTotal += arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000
    if not uint8(stor2.field_16):
        if wantLockedTotal + (arg2 * sub_25c7ce6b / 10000) < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += arg2 * sub_25c7ce6b / 10000
    stor1 = 1
    return (arg2 * sub_25c7ce6b / 10000 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 <= 0:
        revert with 0, '_wantAmt <= 0'
    if not arg2:
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        if 0 / wantLockedTotal <= sharesTotal:
            sharesTotal -= 0 / wantLockedTotal
            if withdrawFeeFactor >= 10000:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor2.field_16):
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                else:
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal < ext_call.return_data[0]:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                        else:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
            else:
                if not arg2:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint8(stor2.field_16):
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args 0, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if 0 <= ext_call.return_data[0]:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not uint8(stor2.field_16):
                        if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                            if wantLockedTotal >= arg2 * withdrawFeeFactor / 10000:
                                if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if arg2 * withdrawFeeFactor / 10000 > ext_call.return_data[0]:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal < arg2 * withdrawFeeFactor / 10000:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor16.field_0), mem[580 len 4]
                            else:
                                if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor12)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            stor1 = 1
            return (0 / wantLockedTotal)
        if sharesTotal > sharesTotal:
            revert with 0, 'SafeMath: subtraction overflow'
        sharesTotal = 0
        if withdrawFeeFactor >= 10000:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 <= ext_call.return_data[0]:
                if wantLockedTotal >= arg2:
                    if arg2 > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= arg2
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[516 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[516 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                else:
                    if wantLockedTotal > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                    call wantAddress with:
                       funct uint32(stor12)
                         gas gas_remaining wei
                        args Mask(480, 0, stor16.field_0), mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
        else:
            if not arg2:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor2.field_16):
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
            else:
                require arg2
                if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2 * withdrawFeeFactor / 10000:
                        if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
    else:
        require arg2
        if arg2 * sharesTotal / arg2 != sharesTotal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        if arg2 * sharesTotal / wantLockedTotal <= sharesTotal:
            sharesTotal -= arg2 * sharesTotal / wantLockedTotal
            if withdrawFeeFactor >= 10000:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint8(stor2.field_16):
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                else:
                    if arg2 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2:
                            if arg2 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
            else:
                if not arg2:
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    require ext_code.size(wantAddress)
                    staticcall wantAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2 * withdrawFeeFactor / 10000:
                            if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[548]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 627 len 22]
            stor1 = 1
            return (arg2 * sharesTotal / wantLockedTotal)
        if sharesTotal > sharesTotal:
            revert with 0, 'SafeMath: subtraction overflow'
        sharesTotal = 0
        if withdrawFeeFactor >= 10000:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint8(stor2.field_16):
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
            else:
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal >= arg2:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                    else:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal < ext_call.return_data[0]:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, 0, stor16.field_0), mem[516 len 4]
                    else:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor12)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[484]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 563 len 22]
        else:
            if not arg2:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor2.field_16):
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args 0, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    if 0 <= ext_call.return_data[0]:
                        if wantLockedTotal >= 0:
                            if 0 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), 0) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
            else:
                require arg2
                if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not uint8(stor2.field_16):
                    if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                        if wantLockedTotal >= arg2 * withdrawFeeFactor / 10000:
                            if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                else:
                    if arg2 * withdrawFeeFactor / 10000 > ext_call.return_data[0]:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal < arg2 * withdrawFeeFactor / 10000:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 0, stor16.field_32)
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor16.field_0), mem[580 len 4]
                        else:
                            if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor12)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
    stor1 = 1
    return sharesTotal
}



}
