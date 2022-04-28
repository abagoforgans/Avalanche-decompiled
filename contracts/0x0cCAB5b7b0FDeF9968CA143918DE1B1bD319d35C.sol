contract main {




// =====================  Runtime code  =====================


#
#  - harvestPool(uint8 arg1)
#  - viewUserOfferingAndRefundingAmountsForPools(address arg1, uint8[] arg2)
#
const numberPools = 2


uint256 stor0;
address owner;
address lpTokenAddress;
address offeringTokenAddress;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 sub_4424fbd6;
uint256 nextReleaseTimestamp;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint8 stor11;
array of uint256 stor12;
array of uint256 stor13;
mapping of struct stor20;

function nextReleaseTimestamp() payable {
    return nextReleaseTimestamp
}

function sub_4424fbd6(?) payable {
    return sub_4424fbd6
}

function lpToken() payable {
    return lpTokenAddress
}

function owner() payable {
    return owner
}

function endTimestamp() payable {
    return endTimestamp
}

function offeringToken() payable {
    return offeringTokenAddress
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function viewPoolInformation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return stor8[arg1], stor9[arg1], stor10[arg1], bool(stor11[arg1]), stor12[arg1], stor13[arg1]
}

function setPool(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startTimestamp:
        revert with 0, 'IFO has started'
    if arg5 >= 2:
        revert with 0, 'Pool does not exist'
    stor9[arg5] = arg1
    stor8[arg5] = arg2
    stor10[arg5] = arg3
    stor11[arg5] = uint8(arg4)
    emit PoolParametersSet(arg1, arg2, arg5);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function viewPoolTaxRateOverflow(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    if not stor11[arg1]:
        return 0
    require arg1 < 2
    if stor8[arg1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8[arg1]
    if stor12[arg1] / stor8[arg1] >= 500:
        return 2 * 10^9
    if stor12[arg1] / stor8[arg1] >= 250:
        return 2500 * 10^6
    if stor12[arg1] / stor8[arg1] >= 100:
        return 3 * 10^9
    if stor12[arg1] / stor8[arg1] < 50:
        return 10^10
    return 5 * 10^9
}

function updateStartAndEndTimestamps(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startTimestamp:
        revert with 0, 'IFO has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x724e657720737461727454696d657374616d70206d757374206265206c6f776572207468616e206e657720656e6454696d657374616d,
                    mem[218 len 10]
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x654e657720737461727454696d657374616d70206d75737420626520686967686572207468616e2063757272656e742074696d657374616d,
                    mem[220 len 8]
    startTimestamp = arg1
    endTimestamp = arg2
    emit NewStartAndEndTimestamps(arg1, arg2);
}

function releaseTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp <= endTimestamp:
        revert with 0, 'IFO must be ended'
    if arg1 <= sub_4424fbd6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x7052656c656173652070657263656e74206d7573742062652067726561746572207468616e206974732070726576696f75732076616c75,
                    mem[219 len 9]
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6452656c656173652070657263656e74206d757374206265206c6f776572206f7220657175616c20746f203130,
                    mem[209 len 19]
    if arg2 <= nextReleaseTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x6c4e6578742072656c656173652074696d657374616d70206d7573742062652067726561746572207468616e2063757272656e742076616c75,
                    mem[221 len 7]
    sub_4424fbd6 = arg1
    nextReleaseTimestamp = arg2
}

function recoverWrongTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if lpTokenAddress == arg1:
        revert with 0, 'Cannot be LP token'
    if offeringTokenAddress == arg1:
        revert with 0, 'Cannot be offering token'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
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
            revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit AdminTokenRecovery(address(arg1), arg2);
}

function depositPool(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'proxy contract not allowed'
    if arg2 >= 2:
        revert with 0, 'Non valid pool id'
    if stor9[arg2] <= 0:
        revert with 0, 'Pool not set'
    require arg2 < 2
    if stor8[arg2] <= 0:
        revert with 0, 'Pool not set'
    if block.timestamp <= startTimestamp:
        revert with 0, 'Too early'
    if block.timestamp >= endTimestamp:
        revert with 0, 'Too late'
    if arg1 <= 0:
        revert with 0, 'Amount must be > 0'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(lpTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call lpTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if arg1 + stor20[msg.sender][arg2 << 248].field_0 < stor20[msg.sender][arg2 << 248].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stor20[msg.sender][arg2 << 248].field_0 += arg1
    require arg2 < 2
    require arg2 < 2
    if stor10[arg2] > 0:
        if stor20[msg.sender][arg2 << 248].field_0 > stor10[arg2]:
            revert with 0, 'New amount above user limit'
    if arg1 + stor12[arg2] < stor12[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    require arg2 < 2
    stor12[arg2] += arg1
    emit Deposit(arg1, msg.sender, arg2);
    stor0 = 1
}

function viewUserAllocationPools(address arg1, uint8[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    if arg2.length:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while arg2.length > uint8(idx):
        require uint8(idx) < arg2.length
        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
            require uint8(idx) < arg2.length
            mem[(32 * uint8(idx)) + 128] = 0
        else:
            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
            if not stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                if stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
                revert with 0, 'SafeMath: division by zero'
            if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
            mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 20)
            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                require uint8(idx) < arg2.length
                mem[(32 * uint8(idx)) + 128] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
            else:
                if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
                if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                require uint8(idx) < arg2.length
                mem[(32 * uint8(idx)) + 128] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 192 len floor32(arg2.length)] = mem[128 len floor32(arg2.length)]
    return Array(len=arg2.length, data=mem[128 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 192 len (32 * arg2.length) - floor32(arg2.length)]), 
}

function finalWithdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Not enough LP tokens'
    require ext_code.size(offeringTokenAddress)
    staticcall offeringTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Not enough offering token'
    if not arg1:
        if arg2:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(offeringTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
            call offeringTokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, arg2
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(lpTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
        call lpTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg1
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if arg2:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                if not ext_code.size(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg2, mem[360 len 28], mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                else:
                    mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[456]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if arg2:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, msg.sender, Mask(224, 32, arg2) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args arg2, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit AdminWithdraw(arg1, arg2);
}

function viewUserInfo(address arg1, uint8[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(32 * arg2.length) + 128] = arg2.length
        if not arg2.length:
            require arg2.length <= test266151307()
            mem[(64 * arg2.length) + 160] = arg2.length
            if not arg2.length:
                require arg2.length <= test266151307()
                mem[(98 * arg2.length) + 192] = arg2.length
                mem[64] = (131 * arg2.length) + 224
                if not arg2.length:
                    idx = 0
                    while uint8(idx) < 2:
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                        require uint8(idx) < mem[(32 * arg2.length) + 128]
                        mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                        require uint8(idx) < mem[(64 * arg2.length) + 160]
                        mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                        mem[0] = uint8(idx)
                        mem[32] = sha3(address(arg1), 20)
                        require uint8(idx) < mem[(98 * arg2.length) + 192]
                        mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                        idx = idx + 1
                        continue 
                    mem[(131 * arg2.length) + 224] = 128
                    mem[(131 * arg2.length) + 352] = mem[96]
                    _258 = mem[96]
                    s = 0
                    while None < 32 * _258:
                        mem[None + mem[64] + 160] = mem[None + 128]
                        s = None + 32
                        continue 
                    mem[(131 * arg2.length) + 256] = (32 * _258) + 160
                    mem[(32 * _258) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
                    mem[(32 * _258) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                    mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + 192
                    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
                    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                    mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + 224
                    mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
                    _929 = mem[(98 * arg2.length) + 192]
                    mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                    return memory
                      from mem[64]
                       len (32 * _929) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _258) + (131 * arg2.length) + -mem[64] + 480
                mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
                idx = 0
                while uint8(idx) < 2:
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                    require uint8(idx) < mem[(32 * arg2.length) + 128]
                    mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                    require uint8(idx) < mem[(64 * arg2.length) + 160]
                    mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                    mem[0] = uint8(idx)
                    mem[32] = sha3(address(arg1), 20)
                    require uint8(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                    idx = idx + 1
                    continue 
                mem[(131 * arg2.length) + 224] = 128
                mem[(131 * arg2.length) + 352] = mem[96]
                _264 = mem[96]
                s = 0
                while None < 32 * _264:
                    mem[None + mem[64] + 160] = mem[None + 128]
                    s = None + 32
                    continue 
                mem[(131 * arg2.length) + 256] = (32 * _264) + 160
                mem[(32 * _264) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
                mem[(32 * _264) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + 192
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + 224
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
                _932 = mem[(98 * arg2.length) + 192]
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _932) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _264) + (131 * arg2.length) + -mem[64] + 480
            mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            require arg2.length <= test266151307()
            mem[(98 * arg2.length) + 192] = arg2.length
            mem[64] = (131 * arg2.length) + 224
            if not arg2.length:
                idx = 0
                while uint8(idx) < 2:
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                    require uint8(idx) < mem[(32 * arg2.length) + 128]
                    mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                    require uint8(idx) < mem[(64 * arg2.length) + 160]
                    mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                    mem[0] = uint8(idx)
                    mem[32] = sha3(address(arg1), 20)
                    require uint8(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                    idx = idx + 1
                    continue 
                mem[(131 * arg2.length) + 224] = 128
                mem[(131 * arg2.length) + 352] = mem[96]
                _270 = mem[96]
                s = 0
                while None < 32 * _270:
                    mem[None + mem[64] + 160] = mem[None + 128]
                    s = None + 32
                    continue 
                mem[(131 * arg2.length) + 256] = (32 * _270) + 160
                mem[(32 * _270) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
                mem[(32 * _270) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + 192
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + 224
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
                _935 = mem[(98 * arg2.length) + 192]
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _935) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _270) + (131 * arg2.length) + -mem[64] + 480
            mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _276 = mem[96]
            s = 0
            while None < 32 * _276:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _276) + 160
            mem[(32 * _276) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _276) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            _810 = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * _810) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + 224
            mem[(32 * _810) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _938 = mem[(98 * arg2.length) + 192]
            mem[(32 * _810) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _938) + (32 * _810) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _276) + (131 * arg2.length) + -mem[64] + 480
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(64 * arg2.length) + 160] = arg2.length
        if not arg2.length:
            require arg2.length <= test266151307()
            mem[(98 * arg2.length) + 192] = arg2.length
            mem[64] = (131 * arg2.length) + 224
            if not arg2.length:
                idx = 0
                while uint8(idx) < 2:
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                    require uint8(idx) < mem[(32 * arg2.length) + 128]
                    mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                    require uint8(idx) < mem[(64 * arg2.length) + 160]
                    mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                    mem[0] = uint8(idx)
                    mem[32] = sha3(address(arg1), 20)
                    require uint8(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                    idx = idx + 1
                    continue 
                mem[(131 * arg2.length) + 224] = 128
                mem[(131 * arg2.length) + 352] = mem[96]
                _282 = mem[96]
                s = 0
                while None < 32 * _282:
                    mem[None + mem[64] + 160] = mem[None + 128]
                    s = None + 32
                    continue 
                mem[(131 * arg2.length) + 256] = (32 * _282) + 160
                mem[(32 * _282) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
                mem[(32 * _282) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + 192
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + 224
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
                _941 = mem[(98 * arg2.length) + 192]
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _941) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _282) + (131 * arg2.length) + -mem[64] + 480
            mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _288 = mem[96]
            s = 0
            while None < 32 * _288:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _288) + 160
            mem[(32 * _288) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _288) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + 224
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _944 = mem[(98 * arg2.length) + 192]
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _944) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _288) + (131 * arg2.length) + -mem[64] + 480
        mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(98 * arg2.length) + 192] = arg2.length
        mem[64] = (131 * arg2.length) + 224
        if not arg2.length:
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _294 = mem[96]
            s = 0
            while None < 32 * _294:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _294) + 160
            mem[(32 * _294) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _294) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + 224
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _947 = mem[(98 * arg2.length) + 192]
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _947) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _294) + (131 * arg2.length) + -mem[64] + 480
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while uint8(idx) < 2:
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
            require uint8(idx) < mem[(64 * arg2.length) + 160]
            mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
            mem[0] = uint8(idx)
            mem[32] = sha3(address(arg1), 20)
            require uint8(idx) < mem[(98 * arg2.length) + 192]
            mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
            idx = idx + 1
            continue 
        mem[(131 * arg2.length) + 224] = 128
        mem[(131 * arg2.length) + 352] = mem[96]
        _300 = mem[96]
        s = 0
        while None < 32 * _300:
            mem[None + mem[64] + 160] = mem[None + 128]
            s = None + 32
            continue 
        mem[(131 * arg2.length) + 256] = (32 * _300) + 160
        mem[(32 * _300) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
        mem[(32 * _300) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + 192
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
        _822 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(131 * arg2.length) + 320] = (32 * _822) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + 224
        mem[(32 * _822) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
        _950 = mem[(98 * arg2.length) + 192]
        mem[(32 * _822) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _950) + (32 * _822) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _300) + (131 * arg2.length) + -mem[64] + 480
    mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(64 * arg2.length) + 160] = arg2.length
        if not arg2.length:
            require arg2.length <= test266151307()
            mem[(98 * arg2.length) + 192] = arg2.length
            mem[64] = (131 * arg2.length) + 224
            if not arg2.length:
                idx = 0
                while uint8(idx) < 2:
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                    require uint8(idx) < mem[(32 * arg2.length) + 128]
                    mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                    require uint8(idx) < mem[(64 * arg2.length) + 160]
                    mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                    mem[0] = uint8(idx)
                    mem[32] = sha3(address(arg1), 20)
                    require uint8(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                    idx = idx + 1
                    continue 
                mem[(131 * arg2.length) + 224] = 128
                mem[(131 * arg2.length) + 352] = mem[96]
                _306 = mem[96]
                s = 0
                while None < 32 * _306:
                    mem[None + mem[64] + 160] = mem[None + 128]
                    s = None + 32
                    continue 
                mem[(131 * arg2.length) + 256] = (32 * _306) + 160
                mem[(32 * _306) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
                mem[(32 * _306) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + 192
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + 224
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
                _953 = mem[(98 * arg2.length) + 192]
                mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return memory
                  from mem[64]
                   len (32 * _953) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _306) + (131 * arg2.length) + -mem[64] + 480
            mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _312 = mem[96]
            s = 0
            while None < 32 * _312:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _312) + 160
            mem[(32 * _312) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _312) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + 224
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _956 = mem[(98 * arg2.length) + 192]
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _956) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _312) + (131 * arg2.length) + -mem[64] + 480
        mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        require arg2.length <= test266151307()
        mem[(98 * arg2.length) + 192] = arg2.length
        mem[64] = (131 * arg2.length) + 224
        if not arg2.length:
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _318 = mem[96]
            s = 0
            while None < 32 * _318:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _318) + 160
            mem[(32 * _318) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _318) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + 224
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _959 = mem[(98 * arg2.length) + 192]
            mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _959) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _318) + (131 * arg2.length) + -mem[64] + 480
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while uint8(idx) < 2:
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
            require uint8(idx) < mem[(64 * arg2.length) + 160]
            mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
            mem[0] = uint8(idx)
            mem[32] = sha3(address(arg1), 20)
            require uint8(idx) < mem[(98 * arg2.length) + 192]
            mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
            idx = idx + 1
            continue 
        mem[(131 * arg2.length) + 224] = 128
        mem[(131 * arg2.length) + 352] = mem[96]
        _324 = mem[96]
        s = 0
        while None < 32 * _324:
            mem[None + mem[64] + 160] = mem[None + 128]
            s = None + 32
            continue 
        mem[(131 * arg2.length) + 256] = (32 * _324) + 160
        mem[(32 * _324) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
        mem[(32 * _324) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + 192
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
        _834 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + 224
        mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
        _962 = mem[(98 * arg2.length) + 192]
        mem[(32 * _834) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _962) + (32 * _834) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _324) + (131 * arg2.length) + -mem[64] + 480
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(64 * arg2.length) + 160] = arg2.length
    if not arg2.length:
        require arg2.length <= test266151307()
        mem[(98 * arg2.length) + 192] = arg2.length
        mem[64] = (131 * arg2.length) + 224
        if not arg2.length:
            idx = 0
            while uint8(idx) < 2:
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
                require uint8(idx) < mem[(32 * arg2.length) + 128]
                mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
                require uint8(idx) < mem[(64 * arg2.length) + 160]
                mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
                mem[0] = uint8(idx)
                mem[32] = sha3(address(arg1), 20)
                require uint8(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
                idx = idx + 1
                continue 
            mem[(131 * arg2.length) + 224] = 128
            mem[(131 * arg2.length) + 352] = mem[96]
            _330 = mem[96]
            s = 0
            while None < 32 * _330:
                mem[None + mem[64] + 160] = mem[None + 128]
                s = None + 32
                continue 
            mem[(131 * arg2.length) + 256] = (32 * _330) + 160
            mem[(32 * _330) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
            mem[(32 * _330) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + 192
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
            _837 = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(131 * arg2.length) + 320] = (32 * _837) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + 224
            mem[(32 * _837) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
            _965 = mem[(98 * arg2.length) + 192]
            mem[(32 * _837) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return memory
              from mem[64]
               len (32 * _965) + (32 * _837) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _330) + (131 * arg2.length) + -mem[64] + 480
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
        idx = 0
        while uint8(idx) < 2:
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
            require uint8(idx) < mem[(64 * arg2.length) + 160]
            mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
            mem[0] = uint8(idx)
            mem[32] = sha3(address(arg1), 20)
            require uint8(idx) < mem[(98 * arg2.length) + 192]
            mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
            idx = idx + 1
            continue 
        mem[(131 * arg2.length) + 224] = 128
        mem[(131 * arg2.length) + 352] = mem[96]
        _336 = mem[96]
        s = 0
        while None < 32 * _336:
            mem[None + mem[64] + 160] = mem[None + 128]
            s = None + 32
            continue 
        mem[(131 * arg2.length) + 256] = (32 * _336) + 160
        mem[(32 * _336) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
        mem[(32 * _336) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + 192
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
        _840 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + 224
        mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
        _968 = mem[(98 * arg2.length) + 192]
        mem[(32 * _840) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _968) + (32 * _840) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _336) + (131 * arg2.length) + -mem[64] + 480
    mem[(64 * arg2.length) + 192 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(98 * arg2.length) + 192] = arg2.length
    mem[64] = (131 * arg2.length) + 224
    if not arg2.length:
        idx = 0
        while uint8(idx) < 2:
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
            require uint8(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
            require uint8(idx) < mem[(64 * arg2.length) + 160]
            mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
            mem[0] = uint8(idx)
            mem[32] = sha3(address(arg1), 20)
            require uint8(idx) < mem[(98 * arg2.length) + 192]
            mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
            idx = idx + 1
            continue 
        mem[(131 * arg2.length) + 224] = 128
        mem[(131 * arg2.length) + 352] = mem[96]
        _342 = mem[96]
        s = 0
        while None < 32 * _342:
            mem[None + mem[64] + 160] = mem[None + 128]
            s = None + 32
            continue 
        mem[(131 * arg2.length) + 256] = (32 * _342) + 160
        mem[(32 * _342) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
        mem[(32 * _342) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + 192
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
        _843 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + 224
        mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
        _971 = mem[(98 * arg2.length) + 192]
        mem[(32 * _843) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return memory
          from mem[64]
           len (32 * _971) + (32 * _843) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _342) + (131 * arg2.length) + -mem[64] + 480
    mem[(98 * arg2.length) + 224 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while uint8(idx) < 2:
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = stor20[address(arg1)][idx << 248].field_0
        require uint8(idx) < mem[(32 * arg2.length) + 128]
        mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor20[address(arg1)][idx << 248].field_256)
        require uint8(idx) < mem[(64 * arg2.length) + 160]
        mem[(32 * uint8(idx)) + (64 * arg2.length) + 192] = stor20[address(arg1)][idx << 248].field_512
        mem[0] = uint8(idx)
        mem[32] = sha3(address(arg1), 20)
        require uint8(idx) < mem[(98 * arg2.length) + 192]
        mem[(32 * uint8(idx)) + (98 * arg2.length) + 224] = stor20[address(arg1)][idx << 248].field_768
        idx = idx + 1
        continue 
    mem[(131 * arg2.length) + 224] = 128
    mem[(131 * arg2.length) + 352] = mem[96]
    _348 = mem[96]
    s = 0
    while None < 32 * _348:
        mem[None + mem[64] + 160] = mem[None + 128]
        s = None + 32
        continue 
    mem[(131 * arg2.length) + 256] = (32 * _348) + 160
    mem[(32 * _348) + (131 * arg2.length) + 384] = mem[(32 * arg2.length) + 128]
    mem[(32 * _348) + (131 * arg2.length) + 416 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[(131 * arg2.length) + 288] = (32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + 192
    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + (131 * arg2.length) + 416] = mem[(64 * arg2.length) + 160]
    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + (131 * arg2.length) + 448 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
    mem[(131 * arg2.length) + 320] = (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + 224
    mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + (131 * arg2.length) + 448] = mem[(98 * arg2.length) + 192]
    _974 = mem[(98 * arg2.length) + 192]
    mem[(32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + (131 * arg2.length) + 480 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
    return memory
      from mem[64]
       len (32 * _974) + (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _348) + (131 * arg2.length) + -mem[64] + 480
}

function sub_faf00819(?) payable {
    require calldata.size - 4 >= 32
    if stor20[address(msg.sender)][arg1 << 248].field_256:
        if not stor20[address(msg.sender)][arg1 << 248].field_512:
            if stor20[address(msg.sender)][arg1 << 248].field_768 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -stor20[address(msg.sender)][arg1 << 248].field_768
        if sub_4424fbd6 * stor20[address(msg.sender)][arg1 << 248].field_512 / stor20[address(msg.sender)][arg1 << 248].field_512 != sub_4424fbd6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor20[address(msg.sender)][arg1 << 248].field_768 > sub_4424fbd6 * stor20[address(msg.sender)][arg1 << 248].field_512 / 100:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((sub_4424fbd6 * stor20[address(msg.sender)][arg1 << 248].field_512 / 100) - stor20[address(msg.sender)][arg1 << 248].field_768)
    require arg1 < 2
    require arg1 < 2
    if stor12[arg1] <= stor8[arg1]:
        if not stor20[address(msg.sender)][arg1 << 248].field_0:
            if stor8[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8[arg1]
            if 0 / stor8[arg1] <= 0:
                return 0
            if not 0 / stor8[arg1]:
                return 0
            if sub_4424fbd6 * 0 / stor8[arg1] / 0 / stor8[arg1] != sub_4424fbd6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (sub_4424fbd6 * 0 / stor8[arg1] / 100)
        if stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != stor9[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor8[arg1] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8[arg1]
        if stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor8[arg1] <= 0:
            return 0
        if not stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor8[arg1]:
            return 0
        if sub_4424fbd6 * stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor8[arg1] / stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor8[arg1] != sub_4424fbd6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (sub_4424fbd6 * stor9[arg1] * stor20[address(msg.sender)][arg1 << 248].field_0 / stor8[arg1] / 100)
    require arg1 < 2
    if stor12[arg1] <= 0:
        if stor9[arg1]:
            if 0 / stor9[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        require arg1 < 2
        if stor8[arg1]:
            if 0 / stor8[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg1 < 2
        if stor11[arg1]:
            require arg1 < 2
            if stor8[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8[arg1]
            if stor12[arg1] / stor8[arg1] >= 500:
                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2 * 10^9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor12[arg1] / stor8[arg1] >= 250:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2500 * 10^6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 100:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0:
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 3 * 10^9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] < 50:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^10:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 5 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
            return 0
        else:
            return 0
    if not stor12[arg1]:
        if stor20[address(msg.sender)][arg1 << 248].field_0:
            if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
        revert with 0, 'SafeMath: division by zero'
    if 10^6 * stor12[arg1] / stor12[arg1] != 10^6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not stor20[address(msg.sender)][arg1 << 248].field_0:
        if 10^6 * stor12[arg1] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^6 * stor12[arg1]
        require arg1 < 2
        if not stor9[arg1]:
            require arg1 < 2
            if not stor8[arg1]:
                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require arg1 < 2
                if stor11[arg1]:
                    require arg1 < 2
                    if stor8[arg1] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8[arg1]
                    if stor12[arg1] / stor8[arg1] >= 500:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0:
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2 * 10^9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 250:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2500 * 10^6:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] >= 100:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 3 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor12[arg1] / stor8[arg1] < 50:
                                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^10:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 5 * 10^9:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
            else:
                if 0 / 10^6 * stor12[arg1] * stor8[arg1] / stor8[arg1] != 0 / 10^6 * stor12[arg1]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require arg1 < 2
                if stor11[arg1]:
                    require arg1 < 2
                    if stor8[arg1] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8[arg1]
                    if stor12[arg1] / stor8[arg1] >= 500:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2 * 10^9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 250:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2500 * 10^6:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] >= 100:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 3 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor12[arg1] / stor8[arg1] < 50:
                                    if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 10^10:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 5 * 10^9:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                            revert with 0, 'SafeMath: subtraction overflow'
            return 0
        if 0 / 10^6 * stor12[arg1] * stor9[arg1] / stor9[arg1] != 0 / 10^6 * stor12[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require arg1 < 2
        if not stor8[arg1]:
            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg1 < 2
            if stor11[arg1]:
                require arg1 < 2
                if stor8[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8[arg1]
                if stor12[arg1] / stor8[arg1] >= 500:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2 * 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 250:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0:
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2500 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 100:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 3 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] < 50:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 5 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 0 / 10^6 * stor12[arg1] * stor8[arg1] / stor8[arg1] != 0 / 10^6 * stor12[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg1 < 2
            if stor11[arg1]:
                require arg1 < 2
                if stor8[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8[arg1]
                if stor12[arg1] / stor8[arg1] >= 500:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2 * 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 250:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2500 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 100:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 3 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] < 50:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 10^10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 5 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
        if 0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 <= 0:
            return 0
        if not 0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12:
            return 0
        if sub_4424fbd6 * 0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 / 0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 != sub_4424fbd6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (sub_4424fbd6 * 0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 / 100)
    if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 10^6 * stor12[arg1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^6 * stor12[arg1]
    require arg1 < 2
    if not stor9[arg1]:
        require arg1 < 2
        if not stor8[arg1]:
            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg1 < 2
            if stor11[arg1]:
                require arg1 < 2
                if stor8[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8[arg1]
                if stor12[arg1] / stor8[arg1] >= 500:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2 * 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 250:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0:
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2500 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 100:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 3 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] < 50:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 5 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / stor8[arg1] != 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg1 < 2
            if stor11[arg1]:
                require arg1 < 2
                if stor8[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor8[arg1]
                if stor12[arg1] / stor8[arg1] >= 500:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2 * 10^9:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 250:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2500 * 10^6:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] >= 100:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 3 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[arg1] / stor8[arg1] < 50:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 10^10:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 5 * 10^9:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                        revert with 0, 'SafeMath: subtraction overflow'
        return 0
    if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / stor9[arg1] != 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg1 < 2
    if not stor8[arg1]:
        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg1 < 2
        if stor11[arg1]:
            require arg1 < 2
            if stor8[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8[arg1]
            if stor12[arg1] / stor8[arg1] >= 500:
                if not stor20[address(msg.sender)][arg1 << 248].field_0:
                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2 * 10^9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor12[arg1] / stor8[arg1] >= 250:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0:
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 2500 * 10^6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 100:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0:
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 3 * 10^9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] < 50:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 10^10:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 10^10 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0:
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / stor20[address(msg.sender)][arg1 << 248].field_0 != 5 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / stor8[arg1] != 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg1 < 2
        if stor11[arg1]:
            require arg1 < 2
            if stor8[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8[arg1]
            if stor12[arg1] / stor8[arg1] >= 500:
                if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                    if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2 * 10^9:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (2 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor12[arg1] / stor8[arg1] >= 250:
                    if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                        if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 2500 * 10^6:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (2500 * 10^6 * stor20[address(msg.sender)][arg1 << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor12[arg1] / stor8[arg1] >= 100:
                        if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                            if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 3 * 10^9:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (3 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor12[arg1] / stor8[arg1] < 50:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 10^10:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (10^10 * stor20[address(msg.sender)][arg1 << 248].field_0) - (10^10 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if not stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                if 0 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) != 5 * 10^9:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (5 * 10^9 * stor20[address(msg.sender)][arg1 << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12) / 10^12 > stor20[address(msg.sender)][arg1 << 248].field_0 - (10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor8[arg1] / 10^12):
                                    revert with 0, 'SafeMath: subtraction overflow'
    if 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 <= 0:
        return 0
    if not 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12:
        return 0
    if sub_4424fbd6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 / 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 != sub_4424fbd6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_4424fbd6 * 10^18 * stor20[address(msg.sender)][arg1 << 248].field_0 / 10^6 * stor12[arg1] * stor9[arg1] / 10^12 / 100)
}



}
