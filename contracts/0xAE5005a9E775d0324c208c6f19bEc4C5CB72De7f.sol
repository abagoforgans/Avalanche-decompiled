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
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if upgradeTime != 0:
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
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = 26
                        mem[_360 + 32] = 'SafeMath: division by zero'
                        _380 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_380] = 26
                        mem[_380 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_372] = 26
                    mem[_372 + 32] = 'SafeMath: division by zero'
                    _388 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_388] = 26
                    mem[_388 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_359] = 26
                    mem[_359 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_460] = 26
                        mem[_460 + 32] = 'SafeMath: division by zero'
                        _518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_518] = 30
                        mem[_518 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _640 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_640] = 26
                            mem[_640 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _518 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_480] = 26
                        mem[_480 + 32] = 'SafeMath: division by zero'
                        _527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_527] = 30
                        mem[_527 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_732] = 26
                            mem[_732 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _527 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_371] = 26
                    mem[_371 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _479 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_479] = 26
                        mem[_479 + 32] = 'SafeMath: division by zero'
                        _526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_526] = 30
                        mem[_526 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_729] = 26
                            mem[_729 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _526 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _498 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_498] = 26
                        mem[_498 + 32] = 'SafeMath: division by zero'
                        _560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_560] = 30
                        mem[_560 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _814 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_814] = 26
                            mem[_814 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _560 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                _379 = mem[64]
                mem[64] = mem[64] + 64
                mem[_379] = 30
                mem[_379 + 32] = 'SafeMath: subtraction overflow'
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
            _366 = mem[64]
            mem[64] = mem[64] + 64
            mem[_366] = 26
            mem[_366 + 32] = 'SafeMath: division by zero'
            _387 = mem[64]
            mem[64] = mem[64] + 64
            mem[_387] = 30
            mem[_387 + 32] = 'SafeMath: subtraction overflow'
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
                        _358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_358] = 26
                        mem[_358 + 32] = 'SafeMath: division by zero'
                        _378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_378] = 26
                        mem[_378 + 32] = 'SafeMath: division by zero'
                        idx = idx / 2
                        s = 0
                        continue 
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_370] = 26
                    mem[_370 + 32] = 'SafeMath: division by zero'
                    _386 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_386] = 26
                    mem[_386 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = (s * s) + 5 * 10^17 / 10^18
                    continue 
                if not s:
                    _357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_357] = 26
                    mem[_357 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _458 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_458] = 26
                        mem[_458 + 32] = 'SafeMath: division by zero'
                        _517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_517] = 30
                        mem[_517 + 32] = 'SafeMath: subtraction overflow'
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
                            mem[idx + mem[64] + 68] = mem[idx + _517 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _476 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_476] = 26
                        mem[_476 + 32] = 'SafeMath: division by zero'
                        _522 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_522] = 30
                        mem[_522 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _724 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_724] = 26
                            mem[_724 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _522 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if 10^18 * s / s != 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_369] = 26
                    mem[_369 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _475 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_475] = 26
                        mem[_475 + 32] = 'SafeMath: division by zero'
                        _521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_521] = 30
                        mem[_521 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _721 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_721] = 26
                            mem[_721 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = 0
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
                    else:
                        if s * s / s != s:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if (s * s) + 5 * 10^17 < s * s:
                            revert with 0, 'SafeMath: addition overflow'
                        _495 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_495] = 26
                        mem[_495 + 32] = 'SafeMath: division by zero'
                        _551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_551] = 30
                        mem[_551 + 32] = 'SafeMath: subtraction overflow'
                        if 1 <= idx:
                            _810 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_810] = 26
                            mem[_810 + 32] = 'SafeMath: division by zero'
                            idx = idx - 1 / 2
                            s = (s * s) + 5 * 10^17 / 10^18
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                        idx = 32
                        while idx < 30:
                            mem[idx + mem[64] + 68] = mem[idx + _551 + 32]
                            idx = idx + 32
                            continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not s:
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                _377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_377] = 30
                mem[_377 + 32] = 'SafeMath: subtraction overflow'
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
            _365 = mem[64]
            mem[64] = mem[64] + 64
            mem[_365] = 26
            mem[_365 + 32] = 'SafeMath: division by zero'
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 30
            mem[_385 + 32] = 'SafeMath: subtraction overflow'
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
    if deploymentTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - deploymentTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999999736245400000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_364] = 26
                    mem[_364 + 32] = 'SafeMath: division by zero'
                    _384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_384] = 26
                    mem[_384 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_376] = 26
                mem[_376 + 32] = 'SafeMath: division by zero'
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 26
                mem[_392 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_363] = 26
                mem[_363 + 32] = 'SafeMath: division by zero'
                if not s:
                    _464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_464] = 26
                    mem[_464 + 32] = 'SafeMath: division by zero'
                    _520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_520] = 30
                    mem[_520 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_678] = 26
                        mem[_678 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _520 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_488] = 26
                    mem[_488 + 32] = 'SafeMath: division by zero'
                    _539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_539] = 30
                    mem[_539 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_766] = 26
                        mem[_766 + 32] = 'SafeMath: division by zero'
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
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_375] = 26
                mem[_375 + 32] = 'SafeMath: division by zero'
                if not s:
                    _487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_487] = 26
                    mem[_487 + 32] = 'SafeMath: division by zero'
                    _538 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_538] = 30
                    mem[_538 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_763] = 26
                        mem[_763 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _538 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_504] = 26
                    mem[_504 + 32] = 'SafeMath: division by zero'
                    _588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_588] = 30
                    mem[_588 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _832 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_832] = 26
                        mem[_832 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _588 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not s:
            _352 = mem[64]
            mem[64] = mem[64] + 64
            mem[_352] = 26
            mem[_352 + 32] = 'SafeMath: division by zero'
            _383 = mem[64]
            mem[64] = mem[64] + 64
            mem[_383] = 30
            mem[_383 + 32] = 'SafeMath: subtraction overflow'
            if not sub_4e5c9957:
                upgradeTime = block.timestamp
                sub_f1bc27e5 = 0
                if 0 > sub_4e5c9957:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_bf7235b2 = sub_4e5c9957
                if sub_b140384b > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = 0
                emit TotalLQTYIssuedUpdated(0);
                return -sub_b140384b
            if 10^18 * sub_4e5c9957 / sub_4e5c9957 != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            upgradeTime = block.timestamp
            sub_f1bc27e5 = 10^18 * sub_4e5c9957 / 10^18
            if 10^18 * sub_4e5c9957 / 10^18 > sub_4e5c9957:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_bf7235b2 = sub_4e5c9957 - (10^18 * sub_4e5c9957 / 10^18)
            if sub_b140384b > 10^18 * sub_4e5c9957 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 10^18 * sub_4e5c9957 / 10^18
            emit TotalLQTYIssuedUpdated((10^18 * sub_4e5c9957 / 10^18));
            return ((10^18 * sub_4e5c9957 / 10^18) - sub_b140384b)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _368 = mem[64]
        mem[64] = mem[64] + 64
        mem[_368] = 26
        mem[_368 + 32] = 'SafeMath: division by zero'
        _391 = mem[64]
        mem[64] = mem[64] + 64
        mem[_391] = 30
        mem[_391 + 32] = 'SafeMath: subtraction overflow'
    else:
        if not block.timestamp - deploymentTime / 60:
            if sub_4e5c9957:
                if 0 / sub_4e5c9957:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            upgradeTime = block.timestamp
            sub_f1bc27e5 = 0
            if 0 > sub_4e5c9957:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_bf7235b2 = sub_4e5c9957
            if sub_b140384b > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 0
            emit TotalLQTYIssuedUpdated(0);
            return -sub_b140384b
        idx = block.timestamp - deploymentTime / 60
        s = 999999736245400000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_362] = 26
                    mem[_362 + 32] = 'SafeMath: division by zero'
                    _382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_382] = 26
                    mem[_382 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_374] = 26
                mem[_374 + 32] = 'SafeMath: division by zero'
                _390 = mem[64]
                mem[64] = mem[64] + 64
                mem[_390] = 26
                mem[_390 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if not s:
                    _462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_462] = 26
                    mem[_462 + 32] = 'SafeMath: division by zero'
                    _519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_519] = 30
                    mem[_519 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_659] = 26
                        mem[_659 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _519 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_484] = 26
                    mem[_484 + 32] = 'SafeMath: division by zero'
                    _533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_533] = 30
                    mem[_533 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_749] = 26
                        mem[_749 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _533 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_373] = 26
                mem[_373 + 32] = 'SafeMath: division by zero'
                if not s:
                    _483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_483] = 26
                    mem[_483 + 32] = 'SafeMath: division by zero'
                    _532 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_532] = 30
                    mem[_532 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _746 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_746] = 26
                        mem[_746 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _532 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_501] = 26
                    mem[_501 + 32] = 'SafeMath: division by zero'
                    _574 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_574] = 30
                    mem[_574 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_823] = 26
                        mem[_823 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _574 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not s:
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 26
            mem[_347 + 32] = 'SafeMath: division by zero'
            _381 = mem[64]
            mem[64] = mem[64] + 64
            mem[_381] = 30
            mem[_381 + 32] = 'SafeMath: subtraction overflow'
            if not sub_4e5c9957:
                upgradeTime = block.timestamp
                sub_f1bc27e5 = 0
                if 0 > sub_4e5c9957:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_bf7235b2 = sub_4e5c9957
                if sub_b140384b > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = 0
                emit TotalLQTYIssuedUpdated(0);
                return -sub_b140384b
            if 10^18 * sub_4e5c9957 / sub_4e5c9957 != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            upgradeTime = block.timestamp
            sub_f1bc27e5 = 10^18 * sub_4e5c9957 / 10^18
            if 10^18 * sub_4e5c9957 / 10^18 > sub_4e5c9957:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_bf7235b2 = sub_4e5c9957 - (10^18 * sub_4e5c9957 / 10^18)
            if sub_b140384b > 10^18 * sub_4e5c9957 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 10^18 * sub_4e5c9957 / 10^18
            emit TotalLQTYIssuedUpdated((10^18 * sub_4e5c9957 / 10^18));
            return ((10^18 * sub_4e5c9957 / 10^18) - sub_b140384b)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _367 = mem[64]
        mem[64] = mem[64] + 64
        mem[_367] = 26
        mem[_367 + 32] = 'SafeMath: division by zero'
        _389 = mem[64]
        mem[64] = mem[64] + 64
        mem[_389] = 30
        mem[_389 + 32] = 'SafeMath: subtraction overflow'
    if (10^18 * s) + 5 * 10^17 / 10^18 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18 <= 10^18
    if not sub_4e5c9957:
        upgradeTime = block.timestamp
        sub_f1bc27e5 = 0
        if 0 > sub_4e5c9957:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_bf7235b2 = sub_4e5c9957
        if sub_b140384b > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b140384b = 0
        emit TotalLQTYIssuedUpdated(0);
        return -sub_b140384b
    if (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / sub_4e5c9957 != -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    upgradeTime = block.timestamp
    sub_f1bc27e5 = (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18
    if (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18 > sub_4e5c9957:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_bf7235b2 = sub_4e5c9957 - ((10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18)
    if sub_b140384b > (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_b140384b = (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18
    emit TotalLQTYIssuedUpdated(((10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18));
    return (((10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18) - sub_b140384b)
}



}
