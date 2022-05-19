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

function sub_60101a09(?) payable {
    if upgradeTime:
        revert with 0, 'Upgrade has been completed!'
    upgradeTime = block.timestamp
    sub_f1bc27e5 = sub_b140384b
    if sub_b140384b > sub_4e5c9957:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_bf7235b2 = sub_4e5c9957 - sub_b140384b
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
                    _159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_159] = 26
                    mem[_159 + 32] = 'SafeMath: division by zero'
                    _169 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_169] = 26
                    mem[_169 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 26
                mem[_165 + 32] = 'SafeMath: division by zero'
                _173 = mem[64]
                mem[64] = mem[64] + 64
                mem[_173] = 26
                mem[_173 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 26
                mem[_158 + 32] = 'SafeMath: division by zero'
                if not s:
                    _209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_209] = 26
                    mem[_209 + 32] = 'SafeMath: division by zero'
                    _237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_237] = 30
                    mem[_237 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _307 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_307] = 26
                        mem[_307 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _237 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_221] = 26
                    mem[_221 + 32] = 'SafeMath: division by zero'
                    _244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_244] = 30
                    mem[_244 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_349] = 26
                        mem[_349 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _244 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if not s:
                    _220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_220] = 26
                    mem[_220 + 32] = 'SafeMath: division by zero'
                    _243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_243] = 30
                    mem[_243 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_346] = 26
                        mem[_346 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _243 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_229] = 26
                    mem[_229 + 32] = 'SafeMath: division by zero'
                    _263 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_263] = 30
                    mem[_263 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _383 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_383] = 26
                        mem[_383 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _263 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not s:
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            _168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_168] = 30
            mem[_168 + 32] = 'SafeMath: subtraction overflow'
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
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 26
        mem[_161 + 32] = 'SafeMath: division by zero'
        _172 = mem[64]
        mem[64] = mem[64] + 64
        mem[_172] = 30
        mem[_172 + 32] = 'SafeMath: subtraction overflow'
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
                    _157 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_157] = 26
                    mem[_157 + 32] = 'SafeMath: division by zero'
                    _167 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_167] = 26
                    mem[_167 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 26
                mem[_163 + 32] = 'SafeMath: division by zero'
                _171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_171] = 26
                mem[_171 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if not s:
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = 26
                    mem[_207 + 32] = 'SafeMath: division by zero'
                    _236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_236] = 30
                    mem[_236 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_296] = 26
                        mem[_296 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _236 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_217] = 26
                    mem[_217 + 32] = 'SafeMath: division by zero'
                    _239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_239] = 30
                    mem[_239 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = 26
                        mem[_336 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _239 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_162] = 26
                mem[_162 + 32] = 'SafeMath: division by zero'
                if not s:
                    _216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_216] = 26
                    mem[_216 + 32] = 'SafeMath: division by zero'
                    _238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_238] = 30
                    mem[_238 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = 26
                        mem[_333 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _238 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = 26
                    mem[_226 + 32] = 'SafeMath: division by zero'
                    _254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_254] = 30
                    mem[_254 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = 26
                        mem[_371 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _254 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not s:
            _146 = mem[64]
            mem[64] = mem[64] + 64
            mem[_146] = 26
            mem[_146 + 32] = 'SafeMath: division by zero'
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 30
            mem[_166 + 32] = 'SafeMath: subtraction overflow'
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
        _160 = mem[64]
        mem[64] = mem[64] + 64
        mem[_160] = 26
        mem[_160 + 32] = 'SafeMath: division by zero'
        _170 = mem[64]
        mem[64] = mem[64] + 64
        mem[_170] = 30
        mem[_170 + 32] = 'SafeMath: subtraction overflow'
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
