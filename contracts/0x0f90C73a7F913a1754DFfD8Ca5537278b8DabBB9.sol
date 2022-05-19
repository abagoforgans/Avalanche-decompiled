contract main {




// =====================  Runtime code  =====================


const sub_0fc83da3(?) = 999999736245400000

const SECONDS_IN_ONE_MINUTE = 60

const DECIMAL_PRECISION = 10^18

const NAME = 'CommunityIssuance'


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 sub_4e5c9957;
address lqtyTokenAddress;
address stabilityPoolAddress;
uint256 sub_b140384b;
uint256 deploymentTime;
uint256 upgradeTime;
uint256 sub_f1bc27e5;
uint256 sub_bf7235b2;

function stabilityPoolAddress() payable {
    return stabilityPoolAddress
}

function initialized() payable {
    return bool(uint8(stor0.field_0))
}

function lqtyToken() payable {
    return lqtyTokenAddress
}

function sub_4e5c9957(?) payable {
    return sub_4e5c9957
}

function sub_b140384b(?) payable {
    return sub_b140384b
}

function upgradeTime() payable {
    return upgradeTime
}

function sub_bf7235b2(?) payable {
    return sub_bf7235b2
}

function deploymentTime() payable {
    return deploymentTime
}

function sub_f1bc27e5(?) payable {
    return sub_f1bc27e5
}

function _fallback() payable {
    revert
}

function sendLQTY(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stabilityPoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77436f6d6d756e69747949737375616e63653a2063616c6c6572206973206e6f742053,
                    mem[199 len 29]
    require ext_code.size(lqtyTokenAddress)
    call lqtyTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setAddresses(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        deploymentTime = block.timestamp
        sub_4e5c9957 = arg3
        lqtyTokenAddress = arg1
        stabilityPoolAddress = arg2
        emit LQTYTokenAddressSet(arg1);
        emit StabilityPoolAddressSet(arg2);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            deploymentTime = block.timestamp
            sub_4e5c9957 = arg3
            lqtyTokenAddress = arg1
            stabilityPoolAddress = arg2
            emit LQTYTokenAddressSet(arg1);
            emit StabilityPoolAddressSet(arg2);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            deploymentTime = block.timestamp
            sub_4e5c9957 = arg3
            lqtyTokenAddress = arg1
            stabilityPoolAddress = arg2
            emit LQTYTokenAddressSet(arg1);
            emit StabilityPoolAddressSet(arg2);
            uint8(stor0.field_8) = 0
}

function issueLQTY() payable {
    if stabilityPoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x77436f6d6d756e69747949737375616e63653a2063616c6c6572206973206e6f742053,
                    mem[199 len 29]
    if upgradeTime:
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if upgradeTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 224
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if block.timestamp - upgradeTime / 60 > 146000 * 3600:
            idx = 146000 * 3600
            s = 999999736245400000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = 26
                        mem[_328 + 32] = 'SafeMath: division by zero'
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = 26
                        mem[_348 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _340 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_340] = 26
                    mem[_340 + 32] = 'SafeMath: division by zero'
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 26
                    mem[_356 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_327] = 26
                    mem[_327 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_428] = 26
                        mem[_428 + 32] = 'SafeMath: division by zero'
                        _486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_486] = 30
                        mem[_486 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _608 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_608] = 26
                            mem[_608 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _486 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_448] = 26
                        mem[_448 + 32] = 'SafeMath: division by zero'
                        _495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_495] = 30
                        mem[_495 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _688 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_688] = 26
                            mem[_688 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _495 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_339] = 26
                    mem[_339 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_447] = 26
                        mem[_447 + 32] = 'SafeMath: division by zero'
                        _494 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_494] = 30
                        mem[_494 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _685 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_685] = 26
                            mem[_685 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _494 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_466] = 26
                        mem[_466 + 32] = 'SafeMath: division by zero'
                        _530 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_530] = 30
                        mem[_530 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_758] = 26
                            mem[_758 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _530 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 30
                mem[_347 + 32] = 'SafeMath: subtraction overflow'
                if not sub_bf7235b2:
                    if sub_f1bc27e5 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b140384b > sub_f1bc27e5:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_b140384b = sub_f1bc27e5
                    emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                    return (sub_f1bc27e5 - sub_b140384b)
                if 10^18 * sub_bf7235b2 / sub_bf7235b2 != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) < 10^18 * sub_bf7235b2 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)
                emit TotalLQTYIssuedUpdated((sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)));
                return (sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) - sub_b140384b)
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _334 = mem[64]
            mem[64] = mem[64] + 64
            mem[_334] = 26
            mem[_334 + 32] = 'SafeMath: division by zero'
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 30
            mem[_355 + 32] = 'SafeMath: subtraction overflow'
        else:
            if not block.timestamp - upgradeTime / 60:
                if sub_bf7235b2:
                    if 0 / sub_bf7235b2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if sub_f1bc27e5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5
                emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                return (sub_f1bc27e5 - sub_b140384b)
            idx = block.timestamp - upgradeTime / 60
            s = 999999736245400000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = 26
                        mem[_326 + 32] = 'SafeMath: division by zero'
                        _346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_346] = 26
                        mem[_346 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _338 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_338] = 26
                    mem[_338 + 32] = 'SafeMath: division by zero'
                    _354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_354] = 26
                    mem[_354 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_325] = 26
                    mem[_325 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _426 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_426] = 26
                        mem[_426 + 32] = 'SafeMath: division by zero'
                        _485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_485] = 30
                        mem[_485 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _597 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_597] = 26
                            mem[_597 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _485 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = 26
                        mem[_444 + 32] = 'SafeMath: division by zero'
                        _490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_490] = 30
                        mem[_490 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _675 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_675] = 26
                            mem[_675 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _490 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_337] = 26
                    mem[_337 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_443] = 26
                        mem[_443 + 32] = 'SafeMath: division by zero'
                        _489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_489] = 30
                        mem[_489 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _672 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_672] = 26
                            mem[_672 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _489 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _463 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_463] = 26
                        mem[_463 + 32] = 'SafeMath: division by zero'
                        _521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_521] = 30
                        mem[_521 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _746 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_746] = 26
                            mem[_746 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _521 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 26
                mem[_305 + 32] = 'SafeMath: division by zero'
                _345 = mem[64]
                mem[64] = mem[64] + 64
                mem[_345] = 30
                mem[_345 + 32] = 'SafeMath: subtraction overflow'
                if not sub_bf7235b2:
                    if sub_f1bc27e5 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b140384b > sub_f1bc27e5:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_b140384b = sub_f1bc27e5
                    emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                    return (sub_f1bc27e5 - sub_b140384b)
                if 10^18 * sub_bf7235b2 / sub_bf7235b2 != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) < 10^18 * sub_bf7235b2 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)
                emit TotalLQTYIssuedUpdated((sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)));
                return (sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) - sub_b140384b)
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 26
            mem[_333 + 32] = 'SafeMath: division by zero'
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = 30
            mem[_353 + 32] = 'SafeMath: subtraction overflow'
    else:
        upgradeTime = block.timestamp
        sub_f1bc27e5 = sub_b140384b
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if sub_b140384b > sub_4e5c9957:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_bf7235b2 = sub_4e5c9957 - sub_b140384b
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if upgradeTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 288
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if block.timestamp - upgradeTime / 60 > 146000 * 3600:
            idx = 146000 * 3600
            s = 999999736245400000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = 26
                        mem[_332 + 32] = 'SafeMath: division by zero'
                        _352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_352] = 26
                        mem[_352 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 26
                    mem[_344 + 32] = 'SafeMath: division by zero'
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = 26
                    mem[_360 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_432] = 26
                        mem[_432 + 32] = 'SafeMath: division by zero'
                        _488 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_488] = 30
                        mem[_488 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _630 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_630] = 26
                            mem[_630 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _488 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_456] = 26
                        mem[_456 + 32] = 'SafeMath: division by zero'
                        _505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_505] = 30
                        mem[_505 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _714 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_714] = 26
                            mem[_714 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _505 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_343] = 26
                    mem[_343 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = 26
                        mem[_455 + 32] = 'SafeMath: division by zero'
                        _504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_504] = 30
                        mem[_504 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_711] = 26
                            mem[_711 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _504 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_472] = 26
                        mem[_472 + 32] = 'SafeMath: division by zero'
                        _548 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_548] = 30
                        mem[_548 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _782 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_782] = 26
                            mem[_782 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _548 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _320 = mem[64]
                mem[64] = mem[64] + 64
                mem[_320] = 26
                mem[_320 + 32] = 'SafeMath: division by zero'
                _351 = mem[64]
                mem[64] = mem[64] + 64
                mem[_351] = 30
                mem[_351 + 32] = 'SafeMath: subtraction overflow'
                if not sub_bf7235b2:
                    if sub_f1bc27e5 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b140384b > sub_f1bc27e5:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_b140384b = sub_f1bc27e5
                    emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                    return (sub_f1bc27e5 - sub_b140384b)
                if 10^18 * sub_bf7235b2 / sub_bf7235b2 != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) < 10^18 * sub_bf7235b2 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)
                emit TotalLQTYIssuedUpdated((sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)));
                return (sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) - sub_b140384b)
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _336 = mem[64]
            mem[64] = mem[64] + 64
            mem[_336] = 26
            mem[_336 + 32] = 'SafeMath: division by zero'
            _359 = mem[64]
            mem[64] = mem[64] + 64
            mem[_359] = 30
            mem[_359 + 32] = 'SafeMath: subtraction overflow'
        else:
            if not block.timestamp - upgradeTime / 60:
                if sub_bf7235b2:
                    if 0 / sub_bf7235b2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if sub_f1bc27e5 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5
                emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                return (sub_f1bc27e5 - sub_b140384b)
            idx = block.timestamp - upgradeTime / 60
            s = 999999736245400000
            while idx > 1:
                if not bool(idx):
                    if not s:
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = 26
                        mem[_330 + 32] = 'SafeMath: division by zero'
                        _350 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_350] = 26
                        mem[_350 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 26
                    mem[_342 + 32] = 'SafeMath: division by zero'
                    _358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_358] = 26
                    mem[_358 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_329] = 26
                    mem[_329 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _430 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_430] = 26
                        mem[_430 + 32] = 'SafeMath: division by zero'
                        _487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_487] = 30
                        mem[_487 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_619] = 26
                            mem[_619 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _487 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _452 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_452] = 26
                        mem[_452 + 32] = 'SafeMath: division by zero'
                        _500 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_500] = 30
                        mem[_500 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _701 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_701] = 26
                            mem[_701 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _500 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _341 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_341] = 26
                    mem[_341 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_451] = 26
                        mem[_451 + 32] = 'SafeMath: division by zero'
                        _499 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_499] = 30
                        mem[_499 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _698 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_698] = 26
                            mem[_698 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _499 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_469] = 26
                        mem[_469 + 32] = 'SafeMath: division by zero'
                        _539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_539] = 30
                        mem[_539 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _770 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_770] = 26
                            mem[_770 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _539 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_315] = 26
                mem[_315 + 32] = 'SafeMath: division by zero'
                _349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_349] = 30
                mem[_349 + 32] = 'SafeMath: subtraction overflow'
                if not sub_bf7235b2:
                    if sub_f1bc27e5 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b140384b > sub_f1bc27e5:
                        revert with 0, 'SafeMath: subtraction overflow'
                    sub_b140384b = sub_f1bc27e5
                    emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
                    return (sub_f1bc27e5 - sub_b140384b)
                if 10^18 * sub_bf7235b2 / sub_bf7235b2 != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) < 10^18 * sub_bf7235b2 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b140384b > sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18):
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)
                emit TotalLQTYIssuedUpdated((sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18)));
                return (sub_f1bc27e5 + (10^18 * sub_bf7235b2 / 10^18) - sub_b140384b)
            if 10^18 * s / s != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                revert with 0, 'SafeMath: addition overflow'
            _335 = mem[64]
            mem[64] = mem[64] + 64
            mem[_335] = 26
            mem[_335 + 32] = 'SafeMath: division by zero'
            _357 = mem[64]
            mem[64] = mem[64] + 64
            mem[_357] = 30
            mem[_357 + 32] = 'SafeMath: subtraction overflow'
    if (10^18 * s) + 5 * 10^17 / 10^18 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18 <= 10^18
    if not sub_bf7235b2:
        if sub_f1bc27e5 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if sub_b140384b > sub_f1bc27e5:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b140384b = sub_f1bc27e5
        emit TotalLQTYIssuedUpdated(sub_f1bc27e5);
        return (sub_f1bc27e5 - sub_b140384b)
    if (10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / sub_bf7235b2 != -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if sub_f1bc27e5 + ((10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18) < (10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if sub_b140384b > sub_f1bc27e5 + ((10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18):
        revert with 0, 'SafeMath: subtraction overflow'
    sub_b140384b = sub_f1bc27e5 + ((10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18)
    emit TotalLQTYIssuedUpdated((sub_f1bc27e5 + ((10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18)));
    return (sub_f1bc27e5 + ((10^18 * sub_bf7235b2) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_bf7235b2) / 10^18) - sub_b140384b)
}



}
