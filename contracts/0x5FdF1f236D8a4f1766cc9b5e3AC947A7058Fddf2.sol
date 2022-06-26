contract main {




// =====================  Runtime code  =====================


#
#  - convertDustToEarned()
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const buyBackRateMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 9950

const buyBackRateUL = 800

const slippageFactorUL = 995

const entranceFeeFactorLL = 9950

const entranceFeeFactorMax = 10000


address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
uint8 stor2; offset 24
uint32 stor2;
address farmContractAddress; offset 32
uint256 stor2;
uint256 pid;
address wantAddress;
address token0Address;
address token1Address;
address earnedAddress;
address uniRouterAddress;
address wbnbAddress;
uint32 stor10;
address sub_1e9f8208Address;
uint256 stor10;
address sub_3bdcd32cAddress;
uint8 onlyGov; offset 160
uint128 stor12; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor14; offset 32
uint256 wantLockedTotal;
big480 stor14;
uint256 sharesTotal;
uint256 controllerFee;
uint256 buyBackRate;
address buyBackAddress;
address rewardsAddress;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address sub_e847b72a;
array of address earnedToToken0Path;
array of address earnedToToken1Path;
array of address token0ToEarnedPath;
array of address token1ToEarnedPath;

function token1ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token1ToEarnedPath.length
    return token1ToEarnedPath[arg1]
}

function onlyGov() payable {
    return bool(onlyGov)
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

function sub_1e9f8208(?) payable {
    return address(sub_1e9f8208Address)
}

function sub_3bdcd32c(?) payable {
    return sub_3bdcd32cAddress
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

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function wbnbAddress() payable {
    return wbnbAddress
}

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return uniRouterAddress
}

function buyBackAddress() payable {
    return buyBackAddress
}

function token0Address() payable {
    return token0Address
}

function isCAKEStaking() payable {
    return bool(uint8(stor2.field_8))
}

function controllerFee() payable {
    return controllerFee
}

function owner() payable {
    return owner
}

function earnedToToken1Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken1Path.length
    return earnedToToken1Path[arg1]
}

function isSameAssetDeposit() payable {
    return bool(uint8(stor2.field_16))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1]
}

function rewardsAddress() payable {
    return rewardsAddress
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
}

function token1Address() payable {
    return token1Address
}

function isAutoComp() payable {
    return bool(uint8(stor2.field_24))
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function sub_e847b72a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e847b72a.length
    return sub_e847b72a[arg1]
}

function pid() payable {
    return pid
}

function slippageFactor() payable {
    return slippageFactor
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

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    govAddress = arg1
    emit SetGov(arg1);
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    stor12 = Mask(96, 0, arg1)
    emit SetOnlyGov(arg1);
}

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    rewardsAddress = arg1
    emit SetRewardsAddress(arg1);
}

function setBuyBackAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    buyBackAddress = arg1
    emit SetBuyBackAddress(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    uniRouterAddress = arg1
    emit SetUniRouterAddress(arg1);
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
}

function wrapBNB() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if eth.balance(this.address) > 0:
        require ext_code.size(wbnbAddress)
        call wbnbAddress.0xd0e30db0 with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
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

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if arg1 < 9950:
        revert with 0, '_entranceFeeFactor too low'
    if arg1 > 10000:
        revert with 0, '_entranceFeeFactor too high'
    entranceFeeFactor = arg1
    if arg2 < 9950:
        revert with 0, '_withdrawFeeFactor too low'
    if arg2 > 10000:
        revert with 0, '_withdrawFeeFactor too high'
    withdrawFeeFactor = arg2
    if arg3 > 300:
        revert with 0, '_controllerFee too high'
    controllerFee = arg3
    if arg4 > 800:
        revert with 0, '_buyBackRate too high'
    buyBackRate = arg4
    if arg5 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg5
    emit SetSettings(arg1, arg2, arg3, arg4, arg5);
}

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, '!gov'
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

function farm() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor2.field_24):
        revert with 0, '!isAutoComp'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    call wantAddress with:
       funct uint32(stor2.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), 2 * ext_call.return_data[0]
        if not approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0):
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
    require ext_code.size(farmContractAddress)
    if not uint8(stor2.field_8):
        call farmContractAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0]
    else:
        call farmContractAddress.enterStaking(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
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
        if wantLockedTotal <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[520 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return arg2
        if sharesTotal <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[520 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return arg2
        if not arg2:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[648 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
                else:
                    mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[616]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[690 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[584 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[648 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[648 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            else:
                mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[616]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        if wantLockedTotal <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return arg2
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 549 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return arg2
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if sharesTotal <= 0:
            if sharesTotal + arg2 < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += arg2
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 521 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return arg2
        if not arg2:
            if wantLockedTotal <= 0:
                revert with 0, 'SafeMath: division by zero'
            require wantLockedTotal
            if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
                revert with 0, 'SafeMath: addition overflow'
            sharesTotal += 0 / wantLockedTotal / 10000
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
            else:
                if not uint8(stor2.field_24):
                    revert with 0, '!isAutoComp'
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), farmContractAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 691 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 649 len 0] = 0
                call wantAddress with:
                   funct uint32(stor2.field_0)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
            if not uint8(stor2.field_24):
                if wantLockedTotal + arg2 < wantLockedTotal:
                    revert with 0, 'SafeMath: addition overflow'
                wantLockedTotal += arg2
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 691 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0xe2bbb158 with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                else:
                    call farmContractAddress.enterStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor1 = 1
                return (0 / wantLockedTotal / 10000)
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return 0 / wantLockedTotal / 10000, 
                   mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 691 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 649 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
            else:
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    require return_data.size >= 32
    if not mem[324]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 403 len 22]
    if wantLockedTotal <= 0:
        if sharesTotal + arg2 < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += arg2
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
            stor1 = 1
            return arg2
        if not uint8(stor2.field_24):
            revert with 0, '!isAutoComp'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), farmContractAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 549 len 4] = 0
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return arg2
        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(farmContractAddress)
        if not uint8(stor2.field_8):
            call farmContractAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call farmContractAddress.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if sharesTotal <= 0:
        if sharesTotal + arg2 < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += arg2
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 563 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 457 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 521 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
            else:
                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 489]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 568 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return arg2
    if not arg2:
        if wantLockedTotal <= 0:
            revert with 0, 'SafeMath: division by zero'
        require wantLockedTotal
        if sharesTotal + (0 / wantLockedTotal / 10000) < sharesTotal:
            revert with 0, 'SafeMath: addition overflow'
        sharesTotal += 0 / wantLockedTotal / 10000
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
        else:
            if not uint8(stor2.field_24):
                revert with 0, '!isAutoComp'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), farmContractAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 691 len 26]
            if ext_code.size(wantAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[ceil32(return_data.size) + 649 len 0] = 0
            call wantAddress with:
               funct uint32(stor2.field_0)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
            else:
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
        if not uint8(stor2.field_24):
            if wantLockedTotal + arg2 < wantLockedTotal:
                revert with 0, 'SafeMath: addition overflow'
            wantLockedTotal += arg2
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        if not uint8(stor2.field_24):
            revert with 0, '!isAutoComp'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), farmContractAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 691 len 26]
        if ext_code.size(wantAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 677 len 4] = 0
        call wantAddress with:
           funct uint32(stor2.field_0)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 695 len 22]
            require ext_code.size(farmContractAddress)
            if not uint8(stor2.field_8):
                call farmContractAddress.0xe2bbb158 with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
            else:
                call farmContractAddress.enterStaking(uint256 arg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
        mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 617]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(farmContractAddress)
        if not uint8(stor2.field_8):
            call farmContractAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
            call farmContractAddress.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return 0 / wantLockedTotal / 10000, 
               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
    if not uint8(stor2.field_24):
        if wantLockedTotal + arg2 < wantLockedTotal:
            revert with 0, 'SafeMath: addition overflow'
        wantLockedTotal += arg2
        stor1 = 1
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    if not uint8(stor2.field_24):
        revert with 0, '!isAutoComp'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if wantLockedTotal + ext_call.return_data[0] < wantLockedTotal:
        revert with 0, 'SafeMath: addition overflow'
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), farmContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 691 len 26]
    if ext_code.size(wantAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 585 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor2.field_0), uint32(stor2.field_0), Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[ceil32(return_data.size) + 677 len 4] = 0
    call wantAddress with:
       funct uint32(stor2.field_0)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 649 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 695 len 22]
        require ext_code.size(farmContractAddress)
        if not uint8(stor2.field_8):
            call farmContractAddress.0xe2bbb158 with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
        else:
            call farmContractAddress.enterStaking(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 617]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(farmContractAddress)
    if not uint8(stor2.field_8):
        call farmContractAddress.0xe2bbb158 with:
             gas gas_remaining wei
            args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    else:
        call farmContractAddress.enterStaking(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
    return arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000, 
           mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                if not uint8(stor2.field_24):
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 <= ext_call.return_data[0]:
                            if wantLockedTotal < arg2:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                            else:
                                if arg2 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[516 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
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
                    if not uint8(stor2.field_24):
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal < ext_call.return_data[0]:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor2.field_8):
                            call farmContractAddress.0x441a3e70 with:
                                 gas gas_remaining wei
                                args pid, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal < ext_call.return_data[0]:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                                else:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 0 > ext_call.return_data[0]:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal >= 0:
                                    if 0 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not uint8(stor2.field_24):
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 * withdrawFeeFactor / 10000 > ext_call.return_data[0]:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= arg2 * withdrawFeeFactor / 10000:
                                if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor2.field_8):
                            call farmContractAddress.0x441a3e70 with:
                                 gas gas_remaining wei
                                args pid, arg2 * withdrawFeeFactor / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                                if wantLockedTotal < arg2 * withdrawFeeFactor / 10000:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                                else:
                                    if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                            else:
                                if wantLockedTotal < ext_call.return_data[0]:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                                else:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 * withdrawFeeFactor / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(wantAddress)
                            staticcall wantAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if arg2 * withdrawFeeFactor / 10000 <= ext_call.return_data[0]:
                                if wantLockedTotal < arg2 * withdrawFeeFactor / 10000:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                                else:
                                    if arg2 * withdrawFeeFactor / 10000 > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= arg2 * withdrawFeeFactor / 10000
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2 * withdrawFeeFactor / 10000) << 224, mem[580 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
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
            if not uint8(stor2.field_24):
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 <= ext_call.return_data[0]:
                    if wantLockedTotal < arg2:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if arg2 > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= arg2
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[516 len 4]
                else:
                    if wantLockedTotal < ext_call.return_data[0]:
                        if wantLockedTotal > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if not uint8(stor2.field_8):
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, arg2
                else:
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor10)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
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
                if not uint8(stor2.field_24):
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal < ext_call.return_data[0]:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
            else:
                require arg2
                if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not uint8(stor2.field_24):
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, arg2 * withdrawFeeFactor / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (arg2 * withdrawFeeFactor / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
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
                if not uint8(stor2.field_24):
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                        else:
                            if wantLockedTotal < ext_call.return_data[0]:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                            else:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[516 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[516 len 4]
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
                    if not uint8(stor2.field_24):
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor2.field_8):
                            call farmContractAddress.0x441a3e70 with:
                                 gas gas_remaining wei
                                args pid, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[580 len 4]
                                else:
                                    if wantLockedTotal > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not uint8(stor2.field_24):
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal < ext_call.return_data[0]:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                    else:
                        require ext_code.size(farmContractAddress)
                        if not uint8(stor2.field_8):
                            call farmContractAddress.0x441a3e70 with:
                                 gas gas_remaining wei
                                args pid, arg2 * withdrawFeeFactor / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            call farmContractAddress.leaveStaking(uint256 arg1) with:
                                 gas gas_remaining wei
                                args (arg2 * withdrawFeeFactor / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if wantLockedTotal >= ext_call.return_data[0]:
                                    if ext_call.return_data[0] > wantLockedTotal:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    wantLockedTotal -= ext_call.return_data[0]
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                    if ext_code.size(wantAddress) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                    call wantAddress with:
                                       funct uint32(stor10)
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
                                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                    mem[580 len 0] = 0
                                    call wantAddress with:
                                       funct uint32(stor10)
                                         gas gas_remaining wei
                                        args Mask(480, 0, stor14.field_0), mem[580 len 4]
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
            if not uint8(stor2.field_24):
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                        mem[516 len 0] = 0
                        call wantAddress with:
                           funct uint32(stor10)
                             gas gas_remaining wei
                            args Mask(480, 0, stor14.field_0), mem[516 len 4]
            else:
                require ext_code.size(farmContractAddress)
                if uint8(stor2.field_8):
                    call farmContractAddress.leaveStaking(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                else:
                    call farmContractAddress.0x441a3e70 with:
                         gas gas_remaining wei
                        args pid, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2) >> 32
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                    else:
                        if wantLockedTotal < ext_call.return_data[0]:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[516 len 4]
                        else:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[516 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                if not uint8(stor2.field_24):
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal < ext_call.return_data[0]:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                            else:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(wantAddress)
                        staticcall wantAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 0 > ext_call.return_data[0]:
                            if wantLockedTotal >= ext_call.return_data[0]:
                                if ext_call.return_data[0] > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal -= ext_call.return_data[0]
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                                call wantAddress with:
                                   funct uint32(stor10)
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
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if wantLockedTotal >= 0:
                                if 0 > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), 0) << 256, mem[580 len 4]
                            else:
                                if wantLockedTotal > wantLockedTotal:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                wantLockedTotal = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                                if ext_code.size(wantAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                                mem[580 len 0] = 0
                                call wantAddress with:
                                   funct uint32(stor10)
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor14.field_0), mem[580 len 4]
            else:
                require arg2
                if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not uint8(stor2.field_24):
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                else:
                    require ext_code.size(farmContractAddress)
                    if not uint8(stor2.field_8):
                        call farmContractAddress.0x441a3e70 with:
                             gas gas_remaining wei
                            args pid, arg2 * withdrawFeeFactor / 10000
                    else:
                        call farmContractAddress.leaveStaking(uint256 arg1) with:
                             gas gas_remaining wei
                            args (arg2 * withdrawFeeFactor / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor10)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal < ext_call.return_data[0]:
                            if wantLockedTotal > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), Mask(224, 0, stor14.field_32)
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor14.field_0), mem[580 len 4]
                        else:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor10), uint32(stor10), ext_call.return_data[0 len 28]
                            mem[580 len 0] = 0
                            call wantAddress with:
                               funct uint32(stor10)
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[580 len 4]
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
