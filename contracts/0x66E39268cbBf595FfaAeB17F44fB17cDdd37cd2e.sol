contract main {




// =====================  Runtime code  =====================


#
#  - harvestPool(uint8 arg1)
#
const numberPools = 2


uint256 stor0;
address owner;
address lpTokenAddress;
address offeringTokenAddress;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 campaignId;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint8 stor10;
array of uint256 stor11;
array of uint256 stor12;
mapping of struct stor19;

function lpToken() payable {
    return lpTokenAddress
}

function owner() payable {
    return owner
}

function campaignId() payable {
    return campaignId
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
    return stor7[arg1], stor8[arg1], stor9[arg1], bool(stor10[arg1]), stor11[arg1], stor12[arg1]
}

function setPool(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp >= startTimestamp:
        revert with 0, 'IFO has started'
    if arg5 >= 2:
        revert with 0, 'Pool does not exist'
    stor8[arg5] = arg1
    stor7[arg5] = arg2
    stor9[arg5] = arg3
    stor10[arg5] = uint8(arg4)
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
    if not stor10[arg1]:
        return 0
    require arg1 < 2
    if stor7[arg1] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor7[arg1]
    if stor11[arg1] / stor7[arg1] >= 500:
        return 2 * 10^9
    if stor11[arg1] / stor7[arg1] >= 250:
        return 2500 * 10^6
    if stor11[arg1] / stor7[arg1] >= 100:
        return 3 * 10^9
    if stor11[arg1] / stor7[arg1] < 50:
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
                    0x704e657720737461727454696d657374616d70206d75737420626520686967686572207468616e2063757272656e742074696d657374616d,
                    mem[220 len 8]
    startTimestamp = arg1
    endTimestamp = arg2
    emit NewStartAndEndTimestamps(arg1, arg2);
}

function viewUserInfo(address arg1, uint8[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    if arg2.length:
        mem[128 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    if arg2.length:
        mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while uint8(idx) < 2:
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = stor19[address(arg1)][idx << 248].field_0
        mem[0] = uint8(idx)
        mem[32] = sha3(address(arg1), 19)
        require uint8(idx) < mem[(32 * arg2.length) + 128]
        mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] = bool(stor19[address(arg1)][idx << 248].field_256)
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 160] = 64
    mem[(64 * arg2.length) + 224] = mem[96]
    mem[(64 * arg2.length) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * arg2.length) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (64 * arg2.length) + 256] = mem[(32 * arg2.length) + 128]
    mem[(32 * mem[96]) + (64 * arg2.length) + 288 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    return Array(len=mem[96], data=mem[(64 * arg2.length) + 256 len (32 * mem[(32 * arg2.length) + 128]) + (32 * mem[96]) + 32]), 
           (32 * mem[96]) + 96
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
    if stor8[arg2] <= 0:
        revert with 0, 'Pool not set'
    require arg2 < 2
    if stor7[arg2] <= 0:
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
    if arg1 + stor19[msg.sender][arg2 << 248].field_0 < stor19[msg.sender][arg2 << 248].field_0:
        revert with 0, 'SafeMath: addition overflow'
    stor19[msg.sender][arg2 << 248].field_0 += arg1
    require arg2 < 2
    require arg2 < 2
    if stor9[arg2] > 0:
        if stor19[msg.sender][arg2 << 248].field_0 > stor9[arg2]:
            revert with 0, 'New amount above user limit'
    if arg1 + stor11[arg2] < stor11[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    require arg2 < 2
    stor11[arg2] += arg1
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
        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
            require uint8(idx) < arg2.length
            mem[(32 * uint8(idx)) + 128] = 0
        else:
            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
            if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                if stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
                revert with 0, 'SafeMath: division by zero'
            if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
            mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
            mem[32] = sha3(address(arg1), 19)
            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                require uint8(idx) < arg2.length
                mem[(32 * uint8(idx)) + 128] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
            else:
                if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
                if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                require uint8(idx) < arg2.length
                mem[(32 * uint8(idx)) + 128] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
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
        emit AdminWithdraw(arg1, arg2);
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(lpTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
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
                mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[488 len 4]
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
            emit AdminWithdraw(arg1, arg2);
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
            if not arg2:
                emit AdminWithdraw(arg1, arg2);
            else:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 531 len 26]
                if not ext_code.size(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call offeringTokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    emit AdminWithdraw(arg1, arg2);
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    emit AdminWithdraw(uint256 rg1, uint256 rg2):
                                       arg1,
                                       arg2,
                                       mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
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
            if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
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
                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[32] = sha3(address(arg1), 19)
                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _1546 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1546] = 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_1546 + 32] = 0
                        mem[_1546 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _1546
                    else:
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _1558 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1558] = stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_1558 + 32] = 0
                        mem[_1558 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _1558
                else:
                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                        if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1626 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1626] = 0
                                    mem[_1626 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1626 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1626
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1906 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1906] = 0
                                            mem[_1906 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1906 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1906
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1958 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1958] = 0
                                            mem[_1958 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_1958 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1958
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1928 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1928] = 0
                                                mem[_1928 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1928 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1928
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1990 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1990] = 0
                                                mem[_1990 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_1990 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1990
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _1956 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_1956] = 0
                                                    mem[_1956 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_1956 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _1956
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2016 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2016] = 0
                                                    mem[_2016 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2016 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2016
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _1986 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1986] = 0
                                                        mem[_1986 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_1986 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _1986
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2054 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2054] = 0
                                                        mem[_2054 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2054 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2054
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _1988 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_1988] = 0
                                                        mem[_1988 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_1988 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _1988
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2056 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2056] = 0
                                                        mem[_2056 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2056 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2056
                            else:
                                if 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1638 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1638] = 0
                                    mem[_1638 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1638 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1638
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1954 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1954] = 0
                                            mem[_1954 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1954 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1954
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _2014 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2014] = 0
                                            mem[_2014 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_2014 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _2014
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1984 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1984] = 0
                                                mem[_1984 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1984 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1984
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2052 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2052] = 0
                                                mem[_2052 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2052 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2052
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2012 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2012] = 0
                                                    mem[_2012 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2012 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2012
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2086 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2086] = 0
                                                    mem[_2086 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2086 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2086
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2048 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2048] = 0
                                                        mem[_2048 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2048 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2048
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2118 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2118] = 0
                                                        mem[_2118 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2118 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2118
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2050 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2050] = 0
                                                        mem[_2050 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2050 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2050
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2120 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2120] = 0
                                                        mem[_2120 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2120 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2120
                        else:
                            if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1636 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1636] = 0
                                    mem[_1636 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1636 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1636
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _1948 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_1948] = 0
                                            mem[_1948 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_1948 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _1948
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _2010 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2010] = 0
                                            mem[_2010 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_2010 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _2010
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _1982 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_1982] = 0
                                                mem[_1982 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_1982 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _1982
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2046 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2046] = 0
                                                mem[_2046 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2046 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2046
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2008 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2008] = 0
                                                    mem[_2008 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2008 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2008
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2084 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2084] = 0
                                                    mem[_2084 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2084 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2084
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2042 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2042] = 0
                                                        mem[_2042 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2042 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2042
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2114 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2114] = 0
                                                        mem[_2114 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2114 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2114
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2044 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2044] = 0
                                                        mem[_2044 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2044 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2044
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2116 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2116] = 0
                                                        mem[_2116 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2116 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2116
                            else:
                                if 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _1646 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1646] = 0
                                    mem[_1646 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_1646 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _1646
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _2006 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2006] = 0
                                            mem[_2006 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_2006 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _2006
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _2082 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_2082] = 0
                                            mem[_2082 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_2082 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _2082
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2040 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2040] = 0
                                                mem[_2040 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2040 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2040
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2112 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2112] = 0
                                                mem[_2112 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2112 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2112
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2080 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2080] = 0
                                                    mem[_2080 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2080 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2080
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2154 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2154] = 0
                                                    mem[_2154 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2154 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2154
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2108 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2108] = 0
                                                        mem[_2108 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2108 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2108
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2180 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2180] = 0
                                                        mem[_2180 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2180 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2180
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2110 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2110] = 0
                                                        mem[_2110 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2110 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2110
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2182 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2182] = 0
                                                        mem[_2182 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2182 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2182
                    else:
                        if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            if stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                            if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1750 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1750] = 0
                                        mem[_1750 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1750 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1750
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2418 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2418] = 0
                                                mem[_2418 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2418 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2418
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2508 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2508] = 0
                                                mem[_2508 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2508 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2508
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2450 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2450] = 0
                                                    mem[_2450 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2450 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2450
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2542 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2542] = 0
                                                    mem[_2542 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2542 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2542
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2506 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2506] = 0
                                                        mem[_2506 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2506 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2506
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2596 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2596] = 0
                                                        mem[_2596 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2596 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2596
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2538 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2538] = 0
                                                            mem[_2538 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2538 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2538
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2644 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2644] = 0
                                                            mem[_2644 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2644 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2644
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2540 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2540] = 0
                                                            mem[_2540 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2540 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2540
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2646 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2646] = 0
                                                            mem[_2646 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2646 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2646
                                else:
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1784 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1784] = 0
                                        mem[_1784 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1784 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1784
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2504 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2504] = 0
                                                mem[_2504 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2504 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2504
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2594 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2594] = 0
                                                mem[_2594 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2594 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2594
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2536 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2536] = 0
                                                    mem[_2536 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2536 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2536
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2642 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2642] = 0
                                                    mem[_2642 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2642 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2642
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2592 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2592] = 0
                                                        mem[_2592 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2592 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2592
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2700 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2700] = 0
                                                        mem[_2700 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2700 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2700
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2638 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2638] = 0
                                                            mem[_2638 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2638 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2638
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2752 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2752] = 0
                                                            mem[_2752 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2752 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2752
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2640 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2640] = 0
                                                            mem[_2640 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2640 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2640
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2754 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2754] = 0
                                                            mem[_2754 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2754 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2754
                            else:
                                if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1782 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1782] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1782 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1782 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1782
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2498 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2498] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2498 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2498 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2498
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2590 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2590] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2590 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2590 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2590
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2534 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2534] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2534 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2534 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2534
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2636 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2636] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2636 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2636 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2636
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2588 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2588] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2588 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2588 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2588
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2698 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2698] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2698 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2698 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2698
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2632 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2632] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2632 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2632 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2632
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2748 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2748] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2748 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2748 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2748
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2634 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2634] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2634 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2634 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2634
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2750 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2750] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2750 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2750 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2750
                                else:
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1824 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1824] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1824 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1824 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1824
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2586 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2586] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2586 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2586 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2586
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2696 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2696] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2696 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2696 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2696
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2630 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2630] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2630 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2630 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2630
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2746 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2746] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2746 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2746 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2746
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2694 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2694] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2694 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2694 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2694
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2806 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2806] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2806 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2806 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2806
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2742 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2742] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2742 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2742 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2742
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2844 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2844] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2844 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2844 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2844
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2744 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2744] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2744 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2744 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2744
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2846 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2846] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2846 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2846 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2846
                        else:
                            if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1780 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1780] = 0
                                        mem[_1780 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1780 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1780
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2486 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2486] = 0
                                                mem[_2486 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2486 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2486
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2580 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2580] = 0
                                                mem[_2580 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2580 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2580
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2530 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2530] = 0
                                                    mem[_2530 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2530 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2530
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2628 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2628] = 0
                                                    mem[_2628 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2628 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2628
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2578 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2578] = 0
                                                        mem[_2578 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2578 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2578
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2692 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2692] = 0
                                                        mem[_2692 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2692 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2692
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2624 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2624] = 0
                                                            mem[_2624 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2624 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2624
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2738 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2738] = 0
                                                            mem[_2738 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2738 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2738
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2626 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2626] = 0
                                                            mem[_2626 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2626 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2626
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2740 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2740] = 0
                                                            mem[_2740 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2740 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2740
                                else:
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1820 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1820] = 0
                                        mem[_1820 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1820 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1820
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2576 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2576] = 0
                                                mem[_2576 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2576 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2576
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2690 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2690] = 0
                                                mem[_2690 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2690 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2690
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2622 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2622] = 0
                                                    mem[_2622 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2622 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2622
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2736 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2736] = 0
                                                    mem[_2736 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2736 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2736
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2688 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2688] = 0
                                                        mem[_2688 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2688 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2688
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2804 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2804] = 0
                                                        mem[_2804 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2804 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2804
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2732 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2732] = 0
                                                            mem[_2732 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2732 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2732
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2840 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2840] = 0
                                                            mem[_2840 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2840 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2840
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2734 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2734] = 0
                                                            mem[_2734 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2734 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2734
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2842 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2842] = 0
                                                            mem[_2842 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2842 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2842
                            else:
                                if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1818 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1818] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1818 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_1818 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1818
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2570 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2570] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2570 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_2570 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2570
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2686 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2686] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2686 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_2686 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2686
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2620 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2620] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2620 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_2620 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2620
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2730 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2730] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2730 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_2730 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2730
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2684 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2684] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2684 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_2684 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2684
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2802 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2802] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2802 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_2802 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2802
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2726 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2726] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2726 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2726 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2726
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2836 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2836] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2836 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2836 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2836
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2728 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2728] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2728 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_2728 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2728
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2838 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2838] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2838 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_2838 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2838
                                else:
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _1870 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_1870] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_1870 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_1870 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _1870
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2682 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2682] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2682 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_2682 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2682
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _2800 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_2800] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_2800 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_2800 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _2800
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2724 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2724] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2724 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_2724 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2724
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _2834 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_2834] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_2834 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_2834 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _2834
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2798 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2798] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2798 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_2798 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2798
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _2886 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_2886] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_2886 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_2886 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _2886
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2830 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2830] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2830 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2830 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2830
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2918 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2918] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2918 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2918 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2918
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2832 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2832] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2832 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_2832 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2832
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _2920 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_2920] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_2920 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_2920 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _2920
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
            if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
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
                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                    mem[32] = sha3(address(arg1), 19)
                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _3795 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3795] = 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_3795 + 32] = 0
                        mem[_3795 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _3795
                    else:
                        if stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        _3801 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3801] = stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                        mem[_3801 + 32] = 0
                        mem[_3801 + 64] = 0
                        require uint8(idx) < mem[96]
                        mem[(32 * uint8(idx)) + 128] = _3801
                else:
                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                        if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3833 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3833] = 0
                                    mem[_3833 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3833 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3833
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4011 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4011] = 0
                                            mem[_4011 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4011 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4011
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4045 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4045] = 0
                                            mem[_4045 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4045 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4045
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4021 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4021] = 0
                                                mem[_4021 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4021 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4021
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4057 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4057] = 0
                                                mem[_4057 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4057 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4057
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4043 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4043] = 0
                                                    mem[_4043 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4043 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4043
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4073 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4073] = 0
                                                    mem[_4073 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4073 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4073
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4053 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4053] = 0
                                                        mem[_4053 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4053 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4053
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4091 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4091] = 0
                                                        mem[_4091 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4091 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4091
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4055 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4055] = 0
                                                        mem[_4055 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4055 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4055
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4093 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4093] = 0
                                                        mem[_4093 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4093 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4093
                            else:
                                if 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3837 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3837] = 0
                                    mem[_3837 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3837 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3837
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4041 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4041] = 0
                                            mem[_4041 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4041 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4041
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4071 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4071] = 0
                                            mem[_4071 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4071 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4071
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4051 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4051] = 0
                                                mem[_4051 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4051 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4051
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4089 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4089] = 0
                                                mem[_4089 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4089 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4089
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4069 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4069] = 0
                                                    mem[_4069 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4069 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4069
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4103 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4103] = 0
                                                    mem[_4103 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4103 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4103
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4085 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4085] = 0
                                                        mem[_4085 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4085 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4085
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4123 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4123] = 0
                                                        mem[_4123 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4123 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4123
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4087 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4087] = 0
                                                        mem[_4087 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4087 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4087
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4125 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4125] = 0
                                                        mem[_4125 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4125 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4125
                        else:
                            if 0 / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3835 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3835] = 0
                                    mem[_3835 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3835 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3835
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4035 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4035] = 0
                                            mem[_4035 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4035 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4035
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4067 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4067] = 0
                                            mem[_4067 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4067 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4067
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4049 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4049] = 0
                                                mem[_4049 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4049 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4049
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4083 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4083] = 0
                                                mem[_4083 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4083 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4083
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4065 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4065] = 0
                                                    mem[_4065 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4065 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4065
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4101 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4101] = 0
                                                    mem[_4101 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4101 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4101
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4079 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4079] = 0
                                                        mem[_4079 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4079 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4079
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4119 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4119] = 0
                                                        mem[_4119 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4119 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4119
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4081 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4081] = 0
                                                        mem[_4081 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4081 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4081
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4121 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4121] = 0
                                                        mem[_4121 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4121 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4121
                            else:
                                if 0 / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                mem[32] = sha3(address(arg1), 19)
                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    _3843 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_3843] = 0
                                    mem[_3843 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                    mem[_3843 + 64] = 0
                                    require uint8(idx) < mem[96]
                                    mem[(32 * uint8(idx)) + 128] = _3843
                                else:
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4063 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4063] = 0
                                            mem[_4063 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                            mem[_4063 + 64] = 0
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4063
                                        else:
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _4099 = mem[64]
                                            mem[64] = mem[64] + 96
                                            mem[_4099] = 0
                                            mem[_4099 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                            mem[_4099 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                            require uint8(idx) < mem[96]
                                            mem[(32 * uint8(idx)) + 128] = _4099
                                    else:
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4077 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4077] = 0
                                                mem[_4077 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4077 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4077
                                            else:
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4117 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4117] = 0
                                                mem[_4117 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4117 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4117
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4097 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4097] = 0
                                                    mem[_4097 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4097 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4097
                                                else:
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4137 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4137] = 0
                                                    mem[_4137 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4137 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4137
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4113 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4113] = 0
                                                        mem[_4113 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4113 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4113
                                                    else:
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4151 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4151] = 0
                                                        mem[_4151 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4151 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4151
                                                else:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4115 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4115] = 0
                                                        mem[_4115 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4115 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4115
                                                    else:
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4153 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4153] = 0
                                                        mem[_4153 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4153 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4153
                    else:
                        if not stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                            if stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            revert with 0, 'SafeMath: division by zero'
                        if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^6:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                            if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3913 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3913] = 0
                                        mem[_3913 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3913 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3913
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4275 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4275] = 0
                                                mem[_4275 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4275 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4275
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4339 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4339] = 0
                                                mem[_4339 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4339 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4339
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4297 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4297] = 0
                                                    mem[_4297 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4297 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4297
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4361 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4361] = 0
                                                    mem[_4361 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4361 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4361
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4337 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4337] = 0
                                                        mem[_4337 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4337 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4337
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4399 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4399] = 0
                                                        mem[_4399 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4399 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4399
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4357 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4357] = 0
                                                            mem[_4357 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4357 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4357
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4427 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4427] = 0
                                                            mem[_4427 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4427 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4427
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4359 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4359] = 0
                                                            mem[_4359 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4359 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4359
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4429 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4429] = 0
                                                            mem[_4429 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4429 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4429
                                else:
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3933 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3933] = 0
                                        mem[_3933 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3933 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3933
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4335 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4335] = 0
                                                mem[_4335 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4335 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4335
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4397 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4397] = 0
                                                mem[_4397 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4397 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4397
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4355 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4355] = 0
                                                    mem[_4355 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4355 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4355
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4425 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4425] = 0
                                                    mem[_4425 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4425 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4425
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4395 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4395] = 0
                                                        mem[_4395 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4395 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4395
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4453 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4453] = 0
                                                        mem[_4453 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4453 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4453
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4421 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4421] = 0
                                                            mem[_4421 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4421 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4421
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4483 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4483] = 0
                                                            mem[_4483 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4483 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4483
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4423 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4423] = 0
                                                            mem[_4423 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4423 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4423
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4485 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4485] = 0
                                                            mem[_4485 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4485 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4485
                            else:
                                if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3931 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3931] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3931 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3931 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3931
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4329 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4329] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4329 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4329 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4329
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4393 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4393] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4393 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4393 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4393
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4353 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4353] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4353 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4353 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4353
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4419 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4419] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4419 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4419 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4419
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4391 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4391] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4391 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4391 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4391
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4451 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4451] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4451 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4451 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4451
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4415 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4415] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4415 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4415 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4415
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4479 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4479] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4479 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4479 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4479
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4417 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4417] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4417 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4417 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4417
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4481 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4481] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4481 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4481 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4481
                                else:
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3957 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3957] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3957 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3957 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3957
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4389 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4389] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4389 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4389 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4389
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4449 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4449] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4449 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4449 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4449
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4413 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4413] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4413 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4413 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4413
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4477 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4477] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4477 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4477 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4477
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4447 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4447] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4447 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4447 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4447
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4495 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4495] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4495 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4495 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4495
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4473 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4473] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4473 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4473 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4473
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4511 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4511] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4511 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4511 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4511
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4475 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4475] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4475 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4475 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4475
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4513 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4513] = 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4513 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4513 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4513
                        else:
                            if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                            require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                            if not stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3929 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3929] = 0
                                        mem[_3929 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3929 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3929
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4317 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4317] = 0
                                                mem[_4317 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4317 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4317
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4383 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4383] = 0
                                                mem[_4383 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4383 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4383
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4349 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4349] = 0
                                                    mem[_4349 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4349 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4349
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4411 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4411] = 0
                                                    mem[_4411 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4411 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4411
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4381 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4381] = 0
                                                        mem[_4381 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4381 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4381
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4445 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4445] = 0
                                                        mem[_4445 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4445 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4445
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4407 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4407] = 0
                                                            mem[_4407 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4407 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4407
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4469 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4469] = 0
                                                            mem[_4469 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4469 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4469
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4409 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4409] = 0
                                                            mem[_4409 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4409 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4409
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4471 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4471] = 0
                                                            mem[_4471 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4471 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4471
                                else:
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3953 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3953] = 0
                                        mem[_3953 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3953 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3953
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4379 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4379] = 0
                                                mem[_4379 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4379 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4379
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4443 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4443] = 0
                                                mem[_4443 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4443 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4443
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4405 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4405] = 0
                                                    mem[_4405 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4405 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4405
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4467 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4467] = 0
                                                    mem[_4467 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4467 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4467
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4441 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4441] = 0
                                                        mem[_4441 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4441 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4441
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4493 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4493] = 0
                                                        mem[_4493 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4493 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4493
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4463 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4463] = 0
                                                            mem[_4463 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4463 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4463
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4507 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4507] = 0
                                                            mem[_4507 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4507 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4507
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4465 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4465] = 0
                                                            mem[_4465 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4465 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4465
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4509 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4509] = 0
                                                            mem[_4509 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4509 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4509
                            else:
                                if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                if not stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3951 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3951] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3951 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                        mem[_3951 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3951
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4373 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4373] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4373 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                mem[_4373 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4373
                                            else:
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4439 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4439] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4439 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                mem[_4439 + 64] = 2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4439
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4403 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4403] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4403 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                    mem[_4403 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4403
                                                else:
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4461 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4461] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4461 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                    mem[_4461 + 64] = 2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4461
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4437 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4437] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4437 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                        mem[_4437 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4437
                                                    else:
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4491 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4491] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4491 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                        mem[_4491 + 64] = 3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4491
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4457 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4457] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4457 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4457 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4457
                                                        else:
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4503 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4503] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4503 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4503 + 64] = 10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4503
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4459 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4459] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4459 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0
                                                            mem[_4459 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4459
                                                        else:
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4505 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4505] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4505 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12)
                                                            mem[_4505 + 64] = 5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4505
                                else:
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] != 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    mem[0] = uint8(cd[((32 * uint8(idx)) + arg2 + 36)])
                                    mem[32] = sha3(address(arg1), 19)
                                    if 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                    if not stor10[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]:
                                        _3985 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_3985] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                        mem[_3985 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                        mem[_3985 + 64] = 0
                                        require uint8(idx) < mem[96]
                                        mem[(32 * uint8(idx)) + 128] = _3985
                                    else:
                                        require uint8(cd[((32 * uint8(idx)) + arg2 + 36)]) < 2
                                        if stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])]
                                        if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 500:
                                            if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4435 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4435] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4435 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                mem[_4435 + 64] = 0
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4435
                                            else:
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2 * 10^9:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                _4489 = mem[64]
                                                mem[64] = mem[64] + 96
                                                mem[_4489] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                mem[_4489 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                mem[_4489 + 64] = (2 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                require uint8(idx) < mem[96]
                                                mem[(32 * uint8(idx)) + 128] = _4489
                                        else:
                                            if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 250:
                                                if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                    if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4455 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4455] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4455 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                    mem[_4455 + 64] = 0
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4455
                                                else:
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 2500 * 10^6:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    _4501 = mem[64]
                                                    mem[64] = mem[64] + 96
                                                    mem[_4501] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                    mem[_4501 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                    mem[_4501 + 64] = (2500 * 10^6 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (2500 * 10^6 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                    require uint8(idx) < mem[96]
                                                    mem[(32 * uint8(idx)) + 128] = _4501
                                            else:
                                                if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] >= 100:
                                                    if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                        if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4487 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4487] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4487 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                        mem[_4487 + 64] = 0
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4487
                                                    else:
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 3 * 10^9:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                        if (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        _4515 = mem[64]
                                                        mem[64] = mem[64] + 96
                                                        mem[_4515] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                        mem[_4515 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                        mem[_4515 + 64] = (3 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (3 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                        require uint8(idx) < mem[96]
                                                        mem[(32 * uint8(idx)) + 128] = _4515
                                                else:
                                                    if stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] < 50:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4497 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4497] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4497 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4497 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4497
                                                        else:
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 10^10:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4517 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4517] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4517 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4517 + 64] = (10^10 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (10^10 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4517
                                                    else:
                                                        if not stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                            if 0 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4499 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4499] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4499 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12)
                                                            mem[_4499 + 64] = 0
                                                            require uint8(idx) < mem[96]
                                                            mem[(32 * uint8(idx)) + 128] = _4499
                                                        else:
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) != 5 * 10^9:
                                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                            if (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12 > stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12):
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            _4519 = mem[64]
                                                            mem[64] = mem[64] + 96
                                                            mem[_4519] = 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor8[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12
                                                            mem[_4519 + 32] = stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 - (10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) - ((5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12)
                                                            mem[_4519 + 64] = (5 * 10^9 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0) - (5 * 10^9 * 10^18 * stor19[address(arg1)][cd[((32 * uint8(idx)) + arg2 + 36)] << 248].field_0 / 10^6 * stor11[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] * stor7[uint8(cd[((32 * uint8(idx)) + arg2 + 36)])] / 10^12) / 10^12
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
