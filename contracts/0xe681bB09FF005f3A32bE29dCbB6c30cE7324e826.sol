contract main {




// =====================  Runtime code  =====================


#
#  - harvestPool(uint8 arg1)
#  - viewUserInfo(address arg1, uint8[] arg2)
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

function sub_a095a378(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while ('cd', 36).length > uint8(idx):
        require uint8(idx) < ('cd', 36).length
        mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
        mem[32] = sha3(address(cd[4]), 20)
        if stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_256:
            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512:
                if stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require uint8(idx) < ('cd', 36).length
                mem[(32 * uint8(idx)) + 128] = -stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768
            else:
                if sub_4424fbd6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512 != sub_4424fbd6:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * ('cd', 36).length) + 229 len 31]
                if stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768 > sub_4424fbd6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                require uint8(idx) < ('cd', 36).length
                mem[(32 * uint8(idx)) + 128] = (sub_4424fbd6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_512 / 100) - stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_768
        else:
            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                mem[32] = sha3(address(cd[4]), 20)
                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                    if 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                        require uint8(idx) < ('cd', 36).length
                        mem[(32 * uint8(idx)) + 128] = 0
                    else:
                        if not 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = 0
                        else:
                            if sub_4424fbd6 * 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != sub_4424fbd6:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = sub_4424fbd6 * 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 100
                else:
                    if stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                    if stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                        require uint8(idx) < ('cd', 36).length
                        mem[(32 * uint8(idx)) + 128] = 0
                    else:
                        if not stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = 0
                        else:
                            if sub_4424fbd6 * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != sub_4424fbd6:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = sub_4424fbd6 * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 100
            else:
                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                    if stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                        if 0 / stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                        if 0 / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                    mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                    mem[32] = sha3(address(cd[4]), 20)
                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                    if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                        require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                        if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2 * 10^9:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2500 * 10^6:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                    if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 3 * 10^9:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                        if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^10:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 5 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                    require uint8(idx) < ('cd', 36).length
                    mem[(32 * uint8(idx)) + 128] = 0
                else:
                    if not stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                        if stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                            if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 10^6:
                        revert with 0, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                        if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                        require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                        if not stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = 0
                        else:
                            if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 <= 0:
                                require uint8(idx) < ('cd', 36).length
                                mem[(32 * uint8(idx)) + 128] = 0
                            else:
                                if not 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12:
                                    require uint8(idx) < ('cd', 36).length
                                    mem[(32 * uint8(idx)) + 128] = 0
                                else:
                                    if sub_4424fbd6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 / 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 != sub_4424fbd6:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                    require uint8(idx) < ('cd', 36).length
                                    mem[(32 * uint8(idx)) + 128] = sub_4424fbd6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 / 100
                    else:
                        if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                        if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                        require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                        if not stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            require uint8(idx) < ('cd', 36).length
                            mem[(32 * uint8(idx)) + 128] = 0
                        else:
                            if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                            require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if 2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if 2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if 3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if 5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] != 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])
                                mem[32] = sha3(address(cd[4]), 20)
                                if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                if stor11[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]:
                                    require uint8(cd[((32 * uint8(idx)) + cd[36] + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 500:
                                        if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                            if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2 * 10^9:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * ('cd', 36).length) + 229 len 31]
                                            if (2 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 250:
                                            if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 2500 * 10^6:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[(32 * ('cd', 36).length) + 229 len 31]
                                                if (2500 * 10^6 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] >= 100:
                                                if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                    if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 3 * 10^9:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                                    if (3 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] < 50:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 10^10:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (10^10 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    if not stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                        if 0 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) != 5 * 10^9:
                                                            revert with 0, 
                                                                        32,
                                                                        33,
                                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                        mem[(32 * ('cd', 36).length) + 229 len 31]
                                                        if (5 * 10^9 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12) / 10^12 > stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 - (10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                            if 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 <= 0:
                                require uint8(idx) < ('cd', 36).length
                                mem[(32 * uint8(idx)) + 128] = 0
                            else:
                                if not 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12:
                                    require uint8(idx) < ('cd', 36).length
                                    mem[(32 * uint8(idx)) + 128] = 0
                                else:
                                    if sub_4424fbd6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 / 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 != sub_4424fbd6:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * ('cd', 36).length) + 229 len 31]
                                    require uint8(idx) < ('cd', 36).length
                                    mem[(32 * uint8(idx)) + 128] = sub_4424fbd6 * 10^18 * stor20[address(cd[4])][cd[((32 * uint8(idx)) + cd[36] + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + cd[36] + 36)])] / 10^12 / 100
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 192 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
    return Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 192 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), 
}

function viewUserOfferingAndRefundingAmountsForPools(address arg1, uint8[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
            if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                _1511 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1511] = 0
                mem[_1511 + 32] = 0
                mem[_1511 + 64] = 0
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = _1511
            else:
                require uint8(idx) < arg2.length
                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[32] = sha3(address(arg1), 20)
                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _1546 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1546] = 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_1546 + 32] = 0
                        mem[_1546 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _1546
                    else:
                        if stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _1556 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1556] = stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_1556 + 32] = 0
                        mem[_1556 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _1556
                else:
                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                        if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1630 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1630] = 0
                                    mem[_1630 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1630 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1630
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1952 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1952] = 0
                                            mem[_1952 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1952 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1952
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1974 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1974] = 0
                                            mem[_1974 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_1974 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1974
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1972 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1972] = 0
                                                mem[_1972 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1972 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1972
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2002 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2002] = 0
                                                mem[_2002 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2002 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2002
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2000 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2000] = 0
                                                    mem[_2000 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2000 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2000
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2036 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2036] = 0
                                                    mem[_2036 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2036 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2036
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2032 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2032] = 0
                                                        mem[_2032 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2032 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2032
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2074 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2074] = 0
                                                        mem[_2074 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2074 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2074
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2034 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2034] = 0
                                                        mem[_2034 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2034 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2034
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2076 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2076] = 0
                                                        mem[_2076 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2076 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2076
                            else:
                                if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1638 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1638] = 0
                                    mem[_1638 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1638 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1638
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1970 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1970] = 0
                                            mem[_1970 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1970 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1970
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1998 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1998] = 0
                                            mem[_1998 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_1998 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1998
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1996 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1996] = 0
                                                mem[_1996 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1996 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1996
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2030 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2030] = 0
                                                mem[_2030 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2030 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2030
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2028 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2028] = 0
                                                    mem[_2028 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2028 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2028
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2072 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2072] = 0
                                                    mem[_2072 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2072 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2072
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2068 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2068] = 0
                                                        mem[_2068 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2068 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2068
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2116 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2116] = 0
                                                        mem[_2116 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2116 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2116
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2070 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2070] = 0
                                                        mem[_2070 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2070 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2070
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2118 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2118] = 0
                                                        mem[_2118 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2118 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2118
                        else:
                            if 0 / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1636 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1636] = 0
                                    mem[_1636 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1636 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1636
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1968 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1968] = 0
                                            mem[_1968 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1968 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1968
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1994 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1994] = 0
                                            mem[_1994 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_1994 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1994
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1992 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1992] = 0
                                                mem[_1992 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1992 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1992
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2026 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2026] = 0
                                                mem[_2026 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2026 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2026
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2024 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2024] = 0
                                                    mem[_2024 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2024 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2024
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2066 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2066] = 0
                                                    mem[_2066 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2066 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2066
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2062 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2062] = 0
                                                        mem[_2062 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2062 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2062
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2112 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2112] = 0
                                                        mem[_2112 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2112 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2112
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2064 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2064] = 0
                                                        mem[_2064 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2064 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2064
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2114 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2114] = 0
                                                        mem[_2114 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2114 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2114
                            else:
                                if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1642 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1642] = 0
                                    mem[_1642 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1642 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1642
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1990 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1990] = 0
                                            mem[_1990 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1990 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1990
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _2022 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2022] = 0
                                            mem[_2022 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_2022 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _2022
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2020 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2020] = 0
                                                mem[_2020 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2020 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2020
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2060 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2060] = 0
                                                mem[_2060 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2060 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2060
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2058 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2058] = 0
                                                    mem[_2058 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2058 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2058
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2110 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2110] = 0
                                                    mem[_2110 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2110 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2110
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2106 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2106] = 0
                                                        mem[_2106 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2106 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2106
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2150 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2150] = 0
                                                        mem[_2150 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2150 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2150
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2108 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2108] = 0
                                                        mem[_2108 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2108 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2108
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2152 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2152] = 0
                                                        mem[_2152 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2152 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2152
                    else:
                        if not stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            if stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                            if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1758 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1758] = 0
                                        mem[_1758 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1758 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1758
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2506 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2506] = 0
                                                mem[_2506 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2506 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2506
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2540 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2540] = 0
                                                mem[_2540 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2540 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2540
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2538 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2538] = 0
                                                    mem[_2538 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2538 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2538
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2576 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2576] = 0
                                                    mem[_2576 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2576 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2576
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2574 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2574] = 0
                                                        mem[_2574 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2574 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2574
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2630 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2630] = 0
                                                        mem[_2630 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2630 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2630
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2626 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2626] = 0
                                                            mem[_2626 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2626 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2626
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2698 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2698] = 0
                                                            mem[_2698 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2698 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2698
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2628 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2628] = 0
                                                            mem[_2628 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2628 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2628
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2700 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2700] = 0
                                                            mem[_2700 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2700 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2700
                                else:
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1782 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1782] = 0
                                        mem[_1782 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1782 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1782
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2536 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2536] = 0
                                                mem[_2536 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2536 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2536
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2572 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2572] = 0
                                                mem[_2572 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2572 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2572
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2570 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2570] = 0
                                                    mem[_2570 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2570 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2570
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2624 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2624] = 0
                                                    mem[_2624 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2624 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2624
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2622 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2622] = 0
                                                        mem[_2622 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2622 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2622
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2696 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2696] = 0
                                                        mem[_2696 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2696 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2696
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2692 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2692] = 0
                                                            mem[_2692 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2692 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2692
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2770 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2770] = 0
                                                            mem[_2770 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2770 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2770
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2694 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2694] = 0
                                                            mem[_2694 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2694 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2694
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2772 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2772] = 0
                                                            mem[_2772 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2772 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2772
                            else:
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1780 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1780] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1780 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1780 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1780
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2534 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2534] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2534 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2534 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2534
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2568 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2568] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2568 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2568 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2568
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2566 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2566] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2566 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2566 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2566
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2620 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2620] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2620 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2620 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2620
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2618 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2618] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2618 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2618 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2618
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2690 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2690] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2690 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2690 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2690
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2686 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2686] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2686 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2686 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2686
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2766 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2766] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2766 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2766 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2766
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2688 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2688] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2688 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2688 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2688
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2768 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2768] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2768 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2768 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2768
                                else:
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1798 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1798] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1798 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1798 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1798
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2564 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2564] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2564 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2564 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2564
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2616 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2616] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2616 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2616 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2616
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2614 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2614] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2614 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2614 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2614
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2684 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2684] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2684 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2684 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2684
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2682 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2682] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2682 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2682 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2682
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2764 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2764] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2764 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2764 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2764
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2760 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2760] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2760 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2760 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2760
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2824 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2824] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2824 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2824 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2824
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2762 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2762] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2762 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2762 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2762
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2826 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2826] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2826 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2826 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2826
                        else:
                            if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1778 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1778] = 0
                                        mem[_1778 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1778 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1778
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2528 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2528] = 0
                                                mem[_2528 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2528 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2528
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2562 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2562] = 0
                                                mem[_2562 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2562 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2562
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2560 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2560] = 0
                                                    mem[_2560 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2560 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2560
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2612 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2612] = 0
                                                    mem[_2612 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2612 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2612
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2610 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2610] = 0
                                                        mem[_2610 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2610 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2610
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2680 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2680] = 0
                                                        mem[_2680 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2680 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2680
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2676 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2676] = 0
                                                            mem[_2676 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2676 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2676
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2756 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2756] = 0
                                                            mem[_2756 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2756 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2756
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2678 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2678] = 0
                                                            mem[_2678 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2678 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2678
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2758 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2758] = 0
                                                            mem[_2758 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2758 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2758
                                else:
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1796 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1796] = 0
                                        mem[_1796 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1796 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1796
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2558 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2558] = 0
                                                mem[_2558 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2558 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2558
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2608 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2608] = 0
                                                mem[_2608 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2608 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2608
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2606 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2606] = 0
                                                    mem[_2606 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2606 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2606
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2674 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2674] = 0
                                                    mem[_2674 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2674 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2674
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2672 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2672] = 0
                                                        mem[_2672 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2672 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2672
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2754 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2754] = 0
                                                        mem[_2754 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2754 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2754
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2750 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2750] = 0
                                                            mem[_2750 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2750 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2750
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2820 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2820] = 0
                                                            mem[_2820 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2820 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2820
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2752 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2752] = 0
                                                            mem[_2752 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2752 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2752
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2822 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2822] = 0
                                                            mem[_2822 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2822 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2822
                            else:
                                if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1794 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1794] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1794 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1794 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1794
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2556 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2556] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2556 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2556 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2556
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2604 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2604] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2604 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2604 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2604
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2602 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2602] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2602 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2602 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2602
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2670 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2670] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2670 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2670 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2670
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2668 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2668] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2668 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2668 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2668
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2748 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2748] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2748 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2748 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2748
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2744 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2744] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2744 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2744 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2744
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2816 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2816] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2816 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2816 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2816
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2746 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2746] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2746 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2746 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2746
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2818 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2818] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2818 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2818 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2818
                                else:
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1808 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1808] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1808 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1808 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1808
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2600 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2600] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2600 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2600 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2600
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2666 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2666] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2666 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2666 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2666
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2664 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2664] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2664 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2664 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2664
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2742 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2742] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2742 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2742 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2742
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2740 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2740] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2740 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2740 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2740
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2814 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2814] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2814 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2814 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2814
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2810 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2810] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2810 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2810 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2810
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2856 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2856] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2856 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2856 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2856
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2812 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2812] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2812 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2812 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2812
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2858 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2858] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2858 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2858 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2858
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _1510 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _1510:
            _3767 = mem[(32 * idx) + 128]
            t = 0
            while t < 96:
                mem[2 * t] = mem[t + _3767]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    else:
        mem[64] = (32 * arg2.length) + 224
        mem[(32 * arg2.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var12001] = (32 * arg2.length) + 128
        s = var12001
        idx = var12002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg2.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg2.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while arg2.length > uint8(idx):
            require uint8(idx) < arg2.length
            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
            if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                _3772 = mem[64]
                mem[64] = mem[64] + 96
                mem[_3772] = 0
                mem[_3772 + 32] = 0
                mem[_3772 + 64] = 0
                require uint8(idx) < mem[96]
                mem[(32 * uint8(idx)) + 128] = _3772
            else:
                require uint8(idx) < arg2.length
                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[32] = sha3(address(arg1), 20)
                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _3795 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3795] = 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_3795 + 32] = 0
                        mem[_3795 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _3795
                    else:
                        if stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _3799 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3799] = stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_3799 + 32] = 0
                        mem[_3799 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _3799
                else:
                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                        if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3833 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3833] = 0
                                    mem[_3833 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3833 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3833
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4037 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4037] = 0
                                            mem[_4037 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4037 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4037
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4049 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4049] = 0
                                            mem[_4049 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4049 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4049
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4047 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4047] = 0
                                                mem[_4047 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4047 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4047
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4063 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4063] = 0
                                                mem[_4063 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4063 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4063
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4061 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4061] = 0
                                                    mem[_4061 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4061 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4061
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4081 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4081] = 0
                                                    mem[_4081 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4081 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4081
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4077 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4077] = 0
                                                        mem[_4077 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4077 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4077
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4101 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4101] = 0
                                                        mem[_4101 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4101 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4101
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4079 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4079] = 0
                                                        mem[_4079 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4079 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4079
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4103 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4103] = 0
                                                        mem[_4103 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4103 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4103
                            else:
                                if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3837 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3837] = 0
                                    mem[_3837 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3837 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3837
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4045 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4045] = 0
                                            mem[_4045 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4045 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4045
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4059 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4059] = 0
                                            mem[_4059 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4059 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4059
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4057 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4057] = 0
                                                mem[_4057 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4057 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4057
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4075 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4075] = 0
                                                mem[_4075 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4075 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4075
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4073 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4073] = 0
                                                    mem[_4073 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4073 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4073
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4099 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4099] = 0
                                                    mem[_4099 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4099 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4099
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4095 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4095] = 0
                                                        mem[_4095 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4095 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4095
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4123 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4123] = 0
                                                        mem[_4123 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4123 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4123
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4097 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4097] = 0
                                                        mem[_4097 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4097 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4097
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4125 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4125] = 0
                                                        mem[_4125 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4125 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4125
                        else:
                            if 0 / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3835 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3835] = 0
                                    mem[_3835 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3835 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3835
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4043 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4043] = 0
                                            mem[_4043 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4043 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4043
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4055 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4055] = 0
                                            mem[_4055 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4055 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4055
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4053 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4053] = 0
                                                mem[_4053 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4053 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4053
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4071 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4071] = 0
                                                mem[_4071 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4071 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4071
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4069 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4069] = 0
                                                    mem[_4069 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4069 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4069
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4093 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4093] = 0
                                                    mem[_4093 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4093 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4093
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4089 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4089] = 0
                                                        mem[_4089 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4089 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4089
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4119 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4119] = 0
                                                        mem[_4119 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4119 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4119
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4091 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4091] = 0
                                                        mem[_4091 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4091 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4091
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4121 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4121] = 0
                                                        mem[_4121 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4121 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4121
                            else:
                                if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 20)
                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3839 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3839] = 0
                                    mem[_3839 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3839 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3839
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4051 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4051] = 0
                                            mem[_4051 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4051 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4051
                                        else:
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4067 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4067] = 0
                                            mem[_4067 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4067 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4067
                                    else:
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4065 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4065] = 0
                                                mem[_4065 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4065 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4065
                                            else:
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4087 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4087] = 0
                                                mem[_4087 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4087 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4087
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4085 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4085] = 0
                                                    mem[_4085 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4085 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4085
                                                else:
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4117 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4117] = 0
                                                    mem[_4117 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4117 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4117
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4113 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4113] = 0
                                                        mem[_4113 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4113 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4113
                                                    else:
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4141 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4141] = 0
                                                        mem[_4141 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4141 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4141
                                                else:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4115 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4115] = 0
                                                        mem[_4115 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4115 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4115
                                                    else:
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4143 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4143] = 0
                                                        mem[_4143 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4143 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4143
                    else:
                        if not stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            if stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                            if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3915 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3915] = 0
                                        mem[_3915 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3915 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3915
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4339 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4339] = 0
                                                mem[_4339 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4339 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4339
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4367 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4367] = 0
                                                mem[_4367 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4367 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4367
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4365 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4365] = 0
                                                    mem[_4365 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4365 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4365
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4393 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4393] = 0
                                                    mem[_4393 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4393 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4393
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4391 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4391] = 0
                                                        mem[_4391 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4391 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4391
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4425 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4425] = 0
                                                        mem[_4425 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4425 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4425
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4421 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4421] = 0
                                                            mem[_4421 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4421 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4421
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4461 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4461] = 0
                                                            mem[_4461 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4461 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4461
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4423 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4423] = 0
                                                            mem[_4423 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4423 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4423
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4463 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4463] = 0
                                                            mem[_4463 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4463 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4463
                                else:
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3931 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3931] = 0
                                        mem[_3931 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3931 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3931
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4363 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4363] = 0
                                                mem[_4363 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4363 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4363
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4389 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4389] = 0
                                                mem[_4389 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4389 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4389
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4387 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4387] = 0
                                                    mem[_4387 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4387 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4387
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4419 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4419] = 0
                                                    mem[_4419 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4419 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4419
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4417 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4417] = 0
                                                        mem[_4417 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4417 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4417
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4459 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4459] = 0
                                                        mem[_4459 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4459 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4459
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4455 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4455] = 0
                                                            mem[_4455 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4455 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4455
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4495 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4495] = 0
                                                            mem[_4495 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4495 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4495
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4457 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4457] = 0
                                                            mem[_4457 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4457 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4457
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4497 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4497] = 0
                                                            mem[_4497 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4497 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4497
                            else:
                                if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3929 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3929] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3929 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3929 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3929
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4361 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4361] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4361 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4361 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4361
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4385 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4385] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4385 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4385 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4385
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4383 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4383] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4383 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4383 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4383
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4415 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4415] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4415 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4415 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4415
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4413 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4413] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4413 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4413 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4413
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4453 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4453] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4453 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4453 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4453
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4449 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4449] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4449 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4449 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4449
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4491 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4491] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4491 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4491 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4491
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4451 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4451] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4451 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4451 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4451
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4493 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4493] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4493 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4493 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4493
                                else:
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3941 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3941] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3941 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3941 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3941
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4381 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4381] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4381 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4381 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4381
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4411 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4411] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4411 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4411 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4411
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4409 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4409] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4409 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4409 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4409
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4447 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4447] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4447 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4447 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4447
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4445 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4445] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4445 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4445 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4445
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4489 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4489] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4489 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4489 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4489
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4485 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4485] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4485 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4485 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4485
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4513 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4513] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4513 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4513 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4513
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4487 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4487] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4487 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4487 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4487
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4515 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4515] = 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4515 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4515 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4515
                        else:
                            if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3927 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3927] = 0
                                        mem[_3927 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3927 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3927
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4355 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4355] = 0
                                                mem[_4355 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4355 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4355
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4379 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4379] = 0
                                                mem[_4379 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4379 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4379
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4377 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4377] = 0
                                                    mem[_4377 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4377 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4377
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4407 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4407] = 0
                                                    mem[_4407 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4407 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4407
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4405 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4405] = 0
                                                        mem[_4405 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4405 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4405
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4443 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4443] = 0
                                                        mem[_4443 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4443 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4443
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4439 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4439] = 0
                                                            mem[_4439 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4439 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4439
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4481 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4481] = 0
                                                            mem[_4481 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4481 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4481
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4441 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4441] = 0
                                                            mem[_4441 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4441 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4441
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4483 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4483] = 0
                                                            mem[_4483 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4483 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4483
                                else:
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3939 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3939] = 0
                                        mem[_3939 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3939 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3939
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4375 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4375] = 0
                                                mem[_4375 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4375 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4375
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4403 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4403] = 0
                                                mem[_4403 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4403 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4403
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4401 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4401] = 0
                                                    mem[_4401 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4401 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4401
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4437 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4437] = 0
                                                    mem[_4437 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4437 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4437
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4435 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4435] = 0
                                                        mem[_4435 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4435 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4435
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4479 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4479] = 0
                                                        mem[_4479 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4479 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4479
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4475 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4475] = 0
                                                            mem[_4475 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4475 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4475
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4509 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4509] = 0
                                                            mem[_4509 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4509 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4509
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4477 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4477] = 0
                                                            mem[_4477 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4477 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4477
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4511 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4511] = 0
                                                            mem[_4511 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4511 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4511
                            else:
                                if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3937 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3937] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3937 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3937 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3937
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4373 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4373] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4373 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4373 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4373
                                            else:
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4399 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4399] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4399 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4399 + 64] = 2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4399
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4397 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4397] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4397 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4397 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4397
                                                else:
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4433 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4433] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4433 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4433 + 64] = 2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4433
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4431 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4431] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4431 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4431 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4431
                                                    else:
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4473 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4473] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4473 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4473 + 64] = 3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4473
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4469 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4469] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4469 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4469 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4469
                                                        else:
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4505 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4505] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4505 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4505 + 64] = 10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4505
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4471 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4471] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4471 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4471 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4471
                                                        else:
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4507 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4507] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4507 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4507 + 64] = 5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4507
                                else:
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 20)
                                    if 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3947 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3947] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3947 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3947 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3947
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4395 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4395] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4395 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4395 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4395
                                            else:
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4429 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4429] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4429 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4429 + 64] = (2 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4429
                                        else:
                                            if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4427 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4427] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4427 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4427 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4427
                                                else:
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4467 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4467] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4467 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4467 + 64] = (2500 * 10^6 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4467
                                            else:
                                                if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4465 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4465] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4465 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4465 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4465
                                                    else:
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4503 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4503] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4503 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4503 + 64] = (3 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4503
                                                else:
                                                    if stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4499 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4499] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4499 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4499 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4499
                                                        else:
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4517 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4517] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4517 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4517 + 64] = (10^10 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4517
                                                    else:
                                                        if not stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4501 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4501] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4501 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4501 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4501
                                                        else:
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4519 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4519] = 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor9[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4519 + 32] = stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4519 + 64] = (5 * 10^9 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor20[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor12[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4519
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[96]
        _3771 = mem[96]
        s = mem[64] + 64
        idx = 0
        while idx < _3771:
            _4524 = mem[(32 * idx) + 128]
            t = 0
            while t < 96:
                mem[2 * t] = mem[t + _4524]
                t = t + 32
                continue 
            t = 192
            idx = idx + 1
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}



}
