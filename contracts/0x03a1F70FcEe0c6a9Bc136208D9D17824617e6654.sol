contract main {




// =====================  Runtime code  =====================


#
#  - earn()
#
const controllerFeeUL = 300

const controllerFeeMax = 10000

const withdrawFeeFactorMax = 10000

const withdrawFeeFactorLL = 9950

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
address earnedAddress;
uint32 stor7;
address uniRouterAddress;
uint256 stor7;
uint32 stor8;
address autoFarmAddress;
uint256 stor8;
uint8 stor9; offset 160
uint128 stor9; offset 160
address govAddress;
uint256 lastEarnBlock;
uint256 stor11; offset 32
uint256 wantLockedTotal;
big480 stor11;
uint256 sharesTotal;
uint256 controllerFee;
address rewardsAddress;
uint256 entranceFeeFactor;
uint256 withdrawFeeFactor;
uint256 slippageFactor;
array of address earnedToToken0Path;
array of struct token0ToEarnedPath;

function onlyGov() payable {
    return bool(uint8(stor9.field_160))
}

function lastEarnBlock() payable {
    return lastEarnBlock
}

function entranceFeeFactor() payable {
    return entranceFeeFactor
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

function withdrawFeeFactor() payable {
    return withdrawFeeFactor
}

function uniRouterAddress() payable {
    return address(uniRouterAddress)
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

function isSameAssetDeposit() payable {
    return bool(uint8(stor2.field_16))
}

function farmContractAddress() payable {
    return farmContractAddress
}

function token0ToEarnedPath(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < token0ToEarnedPath.length
    return token0ToEarnedPath[arg1].field_0
}

function rewardsAddress() payable {
    return rewardsAddress
}

function earnedToToken0Path(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < earnedToToken0Path.length
    return earnedToToken0Path[arg1]
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

function pid() payable {
    return pid
}

function autoFarmAddress() payable {
    return address(autoFarmAddress)
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

function setRewardsAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    rewardsAddress = arg1
    emit SetRewardsAddress(arg1);
}

function pause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Paused(msg.sender);
}

function setOnlyGov(bool arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
    emit SetOnlyGov(arg1);
}

function setUniRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, '!gov'
    address(uniRouterAddress) = arg1
    emit SetUniRouterAddress(arg1);
}

function unpause() payable {
    if govAddress != msg.sender:
        revert with 0, '!gov'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpaused(msg.sender);
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

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
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
    if arg4 > 995:
        revert with 0, '_slippageFactor too high'
    slippageFactor = arg4
    emit SetSettings(arg1, arg2, arg3, arg4);
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
    call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0], this.address
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
                call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, ext_call.return_data[0], this.address
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
                call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, ext_call.return_data[0], this.address
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
                call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, ext_call.return_data[0], this.address
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
                call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, ext_call.return_data[0], this.address
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
            call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, ext_call.return_data[0], this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return (arg2 * sharesTotal * entranceFeeFactor / wantLockedTotal / 10000)
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
            call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, ext_call.return_data[0], this.address
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
        call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0], address(this.address), mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
            stor1 = 1
            return arg2
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
            call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, ext_call.return_data[0], this.address
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
        call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0], address(this.address), mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return arg2, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
            stor1 = 1
            return (0 / wantLockedTotal / 10000)
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
            call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, ext_call.return_data[0], this.address
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
        call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0], address(this.address), mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor1 = 1
        return 0 / wantLockedTotal / 10000, 
               mem[(2 * ceil32(return_data.size)) + 618 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
            call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, ext_call.return_data[0], this.address
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
        call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0], address(this.address), mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
        call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0], this.address
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
    call farmContractAddress.deposit(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0], address(this.address), mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                if uint8(stor2.field_24):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, arg2, this.address
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor8)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                        call wantAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, 0, stor11.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor8)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                        call wantAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, 0, stor11.field_0), mem[516 len 4]
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
                    if uint8(stor2.field_24):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if uint8(stor2.field_24):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, arg2 * withdrawFeeFactor / 10000, this.address
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
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
                if uint8(stor2.field_24):
                    require ext_code.size(farmContractAddress)
                    call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args wantAddress, arg2, this.address
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
                        call wantAddress with:
                           funct uint32(stor8)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                        call wantAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, 0, stor11.field_0), mem[516 len 4]
                else:
                    if wantLockedTotal >= ext_call.return_data[0]:
                        if ext_call.return_data[0] > wantLockedTotal:
                            revert with 0, 'SafeMath: subtraction overflow'
                        wantLockedTotal -= ext_call.return_data[0]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                        if ext_code.size(wantAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                        call wantAddress with:
                           funct uint32(stor8)
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
                        mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                        call wantAddress with:
                           funct uint32(stor8)
                             gas gas_remaining wei
                            args Mask(480, 0, stor11.field_0), mem[516 len 4]
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
                    if uint8(stor2.field_24):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, 0, this.address
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                else:
                    require arg2
                    if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if uint8(stor2.field_24):
                        require ext_code.size(farmContractAddress)
                        call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                             gas gas_remaining wei
                            args wantAddress, arg2 * withdrawFeeFactor / 10000, this.address
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
                    else:
                        if wantLockedTotal >= ext_call.return_data[0]:
                            if ext_call.return_data[0] > wantLockedTotal:
                                revert with 0, 'SafeMath: subtraction overflow'
                            wantLockedTotal -= ext_call.return_data[0]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                            if ext_code.size(wantAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                            call wantAddress with:
                               funct uint32(stor8)
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
                            mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                            call wantAddress with:
                               funct uint32(stor8)
                                 gas gas_remaining wei
                                args Mask(480, 0, stor11.field_0), mem[580 len 4]
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
        if uint8(stor2.field_24):
            require ext_code.size(farmContractAddress)
            call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args wantAddress, arg2, this.address
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
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2) >> 32
                call wantAddress with:
                   funct uint32(stor8)
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
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                call wantAddress with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(480, 0, stor11.field_0), mem[516 len 4]
        else:
            if wantLockedTotal >= ext_call.return_data[0]:
                if ext_call.return_data[0] > wantLockedTotal:
                    revert with 0, 'SafeMath: subtraction overflow'
                wantLockedTotal -= ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
                if ext_code.size(wantAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor8)
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
                mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                call wantAddress with:
                   funct uint32(stor8)
                     gas gas_remaining wei
                    args Mask(480, 0, stor11.field_0), mem[516 len 4]
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
            if uint8(stor2.field_24):
                require ext_code.size(farmContractAddress)
                call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, 0, this.address
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                    call wantAddress with:
                       funct uint32(stor8)
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor11.field_0), mem[580 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor8)
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor11.field_0), mem[580 len 4]
        else:
            require arg2
            if arg2 * withdrawFeeFactor / arg2 != withdrawFeeFactor:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if uint8(stor2.field_24):
                require ext_code.size(farmContractAddress)
                call farmContractAddress.withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args wantAddress, arg2 * withdrawFeeFactor / 10000, this.address
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, arg2 * withdrawFeeFactor / 10000) >> 32
                    call wantAddress with:
                       funct uint32(stor8)
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor11.field_0), mem[580 len 4]
            else:
                if wantLockedTotal >= ext_call.return_data[0]:
                    if ext_call.return_data[0] > wantLockedTotal:
                        revert with 0, 'SafeMath: subtraction overflow'
                    wantLockedTotal -= ext_call.return_data[0]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[622 len 26]
                    if ext_code.size(wantAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), ext_call.return_data[0 len 28]
                    call wantAddress with:
                       funct uint32(stor8)
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
                    mem[516 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 0, stor11.field_32)
                    call wantAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, 0, stor11.field_0), mem[580 len 4]
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

function convertDustToEarned() payable {
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not uint8(stor2.field_24):
        revert with 0, '!isAutoComp'
    if uint8(stor2.field_8):
        revert with 0, 'isCAKEStaking'
    require ext_code.size(token0Address)
    staticcall token0Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if token0Address != earnedAddress:
        if ext_call.return_data[0] > 0:
            require ext_code.size(token0Address)
            staticcall token0Address.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(uniRouterAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            mem[132] = address(uniRouterAddress)
            mem[164] = 2 * ext_call.return_data[0]
            mem[96] = 68
            mem[132 len 28] = Mask(224, 0, stor7)
            mem[128 len 4] = approve(address arg1, uint256 arg2)
            mem[196] = 32
            mem[228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(token0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), Mask(224, 31, ext_call.return_data[0]) >> 31
            mem[352 len 4] = 0
            call token0Address with:
               funct uint32(stor7)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address arg1, uint256 arg2), Mask(224, 0, stor7), uint32(stor7), 2 * ext_call.return_data[0]
                if not approve(address arg1, uint256 arg2), Mask(224, 0, stor7):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                mem[260] = token0ToEarnedPath.length
                if not token0ToEarnedPath.length:
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * token0ToEarnedPath.length) + 292] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * token0ToEarnedPath.length) + 296] = ext_call.return_data[0]
                    mem[(32 * token0ToEarnedPath.length) + 328] = 64
                    mem[(32 * token0ToEarnedPath.length) + 360] = token0ToEarnedPath.length
                    mem[(32 * token0ToEarnedPath.length) + 392 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(address(uniRouterAddress))
                    staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 392 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * token0ToEarnedPath.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292
                    require return_data.size >= 32
                    _435 = mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292] <= 4294967296 and mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292]) + 32 <= return_data.size
                    mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292]
                    _446 = mem[_435 + (32 * token0ToEarnedPath.length) + 292]
                    mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324 len floor32(mem[_435 + (32 * token0ToEarnedPath.length) + 292])] = mem[_435 + (32 * token0ToEarnedPath.length) + 324 len floor32(mem[_435 + (32 * token0ToEarnedPath.length) + 292])]
                    mem[64] = (32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388
                    mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = 30
                    mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1 < mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292]
                    _616 = mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]
                    if not mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]:
                        mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 648 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 648 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                    else:
                        require mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]
                        if mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] * slippageFactor / mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 489 len 31]
                        mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 648 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _616 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * _446) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 648 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                else:
                    mem[0] = 19
                    mem[292] = address(token0ToEarnedPath.field_0)
                    idx = 292
                    s = 0
                    while (32 * token0ToEarnedPath.length) + 260 > idx:
                        mem[idx + 32] = token0ToEarnedPath[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if block.timestamp + 600 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * token0ToEarnedPath.length) + 292] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[(32 * token0ToEarnedPath.length) + 296] = ext_call.return_data[0]
                    mem[(32 * token0ToEarnedPath.length) + 328] = 64
                    mem[(32 * token0ToEarnedPath.length) + 360] = token0ToEarnedPath.length
                    mem[(32 * token0ToEarnedPath.length) + 392 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                    require ext_code.size(address(uniRouterAddress))
                    staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 392 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * token0ToEarnedPath.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292
                    require return_data.size >= 32
                    _855 = mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292] <= 4294967296 and mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292]) + 32 <= return_data.size
                    mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] = mem[mem[(32 * token0ToEarnedPath.length) + 292 len 4], ext_call.return_data[0 len 28] + (32 * token0ToEarnedPath.length) + 292]
                    _866 = mem[_855 + (32 * token0ToEarnedPath.length) + 292]
                    mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324 len floor32(mem[_855 + (32 * token0ToEarnedPath.length) + 292])] = mem[_855 + (32 * token0ToEarnedPath.length) + 324 len floor32(mem[_855 + (32 * token0ToEarnedPath.length) + 292])]
                    mem[64] = (32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 388
                    mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] = 30
                    mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 356] = 'SafeMath: subtraction overflow'
                    if 1 > mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1 < mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292]
                    _1008 = mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]
                    if not mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]:
                        mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 648 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 648 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                    else:
                        require mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324]
                        if mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] * slippageFactor / mem[(32 * mem[(32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 292] - 1) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 324] != slippageFactor:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 489 len 31]
                        mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 648 len floor32(token0ToEarnedPath.length)] = mem[292 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], _1008 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[292 len floor32(token0ToEarnedPath.length)], mem[(32 * _866) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 648 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
            else:
                mem[260] = return_data.size
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    mem[ceil32(return_data.size) + 261] = token0ToEarnedPath.length
                    if not token0ToEarnedPath.length:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 297] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 329] = 64
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 361] = token0ToEarnedPath.length
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 393 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 393 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293
                        require return_data.size >= 32
                        _437 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] <= 4294967296 and mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] = mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        _447 = mem[_437 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len floor32(mem[_437 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])] = mem[_437 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 325 len floor32(mem[_437 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])]
                        mem[64] = (32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 389
                        mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] = 30
                        mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if 1 > mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]
                        _619 = mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                        if not mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]:
                            mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                        else:
                            require mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                            if mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] * slippageFactor / mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 490 len 31]
                            mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _619 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _447) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                    else:
                        mem[0] = 19
                        mem[ceil32(return_data.size) + 293] = address(token0ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 293
                        s = 0
                        while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 261 > idx:
                            mem[idx + 32] = token0ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 297] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 329] = 64
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 361] = token0ToEarnedPath.length
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 393 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 393 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293
                        require return_data.size >= 32
                        _857 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] <= 4294967296 and mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] = mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        _867 = mem[_857 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len floor32(mem[_857 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])] = mem[_857 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 325 len floor32(mem[_857 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])]
                        mem[64] = (32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 389
                        mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] = 30
                        mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if 1 > mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]
                        _1011 = mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                        if not mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]:
                            mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                        else:
                            require mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                            if mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] * slippageFactor / mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 490 len 31]
                            mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1011 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _867) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                else:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                    mem[ceil32(return_data.size) + 261] = token0ToEarnedPath.length
                    if not token0ToEarnedPath.length:
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 297] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 329] = 64
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 361] = token0ToEarnedPath.length
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 393 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 393 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293
                        require return_data.size >= 32
                        _439 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] <= 4294967296 and mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] = mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        _448 = mem[_439 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len floor32(mem[_439 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])] = mem[_439 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 325 len floor32(mem[_439 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])]
                        mem[64] = (32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 389
                        mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] = 30
                        mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if 1 > mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]
                        _622 = mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                        if not mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]:
                            mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                        else:
                            require mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                            if mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] * slippageFactor / mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 490 len 31]
                            mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _622 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _448) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
                    else:
                        mem[0] = 19
                        mem[ceil32(return_data.size) + 293] = address(token0ToEarnedPath.field_0)
                        idx = ceil32(return_data.size) + 293
                        s = 0
                        while ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 261 > idx:
                            mem[idx + 32] = token0ToEarnedPath[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if block.timestamp + 600 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 297] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 329] = 64
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 361] = token0ToEarnedPath.length
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 393 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                        require ext_code.size(address(uniRouterAddress))
                        staticcall address(uniRouterAddress).getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + floor32(token0ToEarnedPath.length) + 393 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293
                        require return_data.size >= 32
                        _859 = mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293] <= 4294967296 and mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] = mem[mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293 len 4], ext_call.return_data[0 len 28] + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        _868 = mem[_859 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293]
                        mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325 len floor32(mem[_859 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])] = mem[_859 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 325 len floor32(mem[_859 + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + 293])]
                        mem[64] = (32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 389
                        mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] = 30
                        mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 357] = 'SafeMath: subtraction overflow'
                        if 1 > mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293]
                        _1014 = mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                        if not mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]:
                            mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 600, token0ToEarnedPath.length, mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]
                        else:
                            require mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325]
                            if mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] * slippageFactor / mem[(32 * mem[ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 325] != slippageFactor:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 490 len 31]
                            mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + 649 len floor32(token0ToEarnedPath.length)] = mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)]
                            require ext_code.size(address(uniRouterAddress))
                            call address(uniRouterAddress).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], _1014 * slippageFactor / 1000, Array(len=token0ToEarnedPath.length, data=mem[ceil32(return_data.size) + 293 len floor32(token0ToEarnedPath.length)], mem[(32 * _868) + ceil32(return_data.size) + (32 * token0ToEarnedPath.length) + ceil32(return_data.size) + floor32(token0ToEarnedPath.length) + 649 len (32 * token0ToEarnedPath.length) - floor32(token0ToEarnedPath.length)]), address(this.address), block.timestamp + 600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
