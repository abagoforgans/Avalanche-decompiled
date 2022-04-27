contract main {




// =====================  Runtime code  =====================


const sub_0fc83da3(?) = 999998681227695000

const SECONDS_IN_ONE_MINUTE = 60

const DECIMAL_PRECISION = 10^18

const NAME = 'CommunityIssuance'


uint8 initialized;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 sub_4e5c9957;
address lqtyTokenAddress;
address stabilityPoolAddress;
uint256 sub_b140384b;
uint256 deploymentTime;

function stabilityPoolAddress() payable {
    return stabilityPoolAddress
}

function initialized() payable {
    return bool(initialized)
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

function deploymentTime() payable {
    return deploymentTime
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
    call lqtyTokenAddress.transfer(address rg1, uint256 rg2) with:
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
            if initialized:
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
            initialized = 1
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
    if deploymentTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if block.timestamp - deploymentTime / 60 > 146000 * 3600:
        idx = 146000 * 3600
        s = 999998681227695000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _151 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_151] = 26
                    mem[_151 + 32] = 'SafeMath: division by zero'
                    _161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_161] = 26
                    mem[_161 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _157 = mem[64]
                mem[64] = mem[64] + 64
                mem[_157] = 26
                mem[_157 + 32] = 'SafeMath: division by zero'
                _165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_165] = 26
                mem[_165 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_150] = 26
                mem[_150 + 32] = 'SafeMath: division by zero'
                if not s:
                    _201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_201] = 26
                    mem[_201 + 32] = 'SafeMath: division by zero'
                    _229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_229] = 30
                    mem[_229 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = 26
                        mem[_317 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _229 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_213] = 26
                    mem[_213 + 32] = 'SafeMath: division by zero'
                    _238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_238] = 30
                    mem[_238 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_379] = 26
                        mem[_379 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
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
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if not s:
                    _212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_212] = 26
                    mem[_212 + 32] = 'SafeMath: division by zero'
                    _237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_237] = 30
                    mem[_237 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_376] = 26
                        mem[_376 + 32] = 'SafeMath: division by zero'
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
                    _263 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_263] = 30
                    mem[_263 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = 26
                        mem[_433 + 32] = 'SafeMath: division by zero'
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
            _143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_143] = 26
            mem[_143 + 32] = 'SafeMath: division by zero'
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = 30
            mem[_160 + 32] = 'SafeMath: subtraction overflow'
            if not sub_4e5c9957:
                if sub_b140384b > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = 0
                emit TotalLQTYIssuedUpdated(0);
                return -sub_b140384b
            if 10^18 * sub_4e5c9957 / sub_4e5c9957 != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if sub_b140384b > 10^18 * sub_4e5c9957 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 10^18 * sub_4e5c9957 / 10^18
            emit TotalLQTYIssuedUpdated((10^18 * sub_4e5c9957 / 10^18));
            return ((10^18 * sub_4e5c9957 / 10^18) - sub_b140384b)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _153 = mem[64]
        mem[64] = mem[64] + 64
        mem[_153] = 26
        mem[_153 + 32] = 'SafeMath: division by zero'
        _164 = mem[64]
        mem[64] = mem[64] + 64
        mem[_164] = 30
        mem[_164 + 32] = 'SafeMath: subtraction overflow'
    else:
        if not block.timestamp - deploymentTime / 60:
            if sub_4e5c9957:
                if 0 / sub_4e5c9957:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_b140384b > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 0
            emit TotalLQTYIssuedUpdated(0);
            return -sub_b140384b
        idx = block.timestamp - deploymentTime / 60
        s = 999998681227695000
        while idx > 1:
            if not bool(idx):
                if not s:
                    _149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_149] = 26
                    mem[_149 + 32] = 'SafeMath: division by zero'
                    _159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_159] = 26
                    mem[_159 + 32] = 'SafeMath: division by zero'
                    idx = idx / 2
                    s = 0
                    continue 
                if s * s / s != s:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (s * s) + 5 * 10^17 < s * s:
                    revert with 0, 'SafeMath: addition overflow'
                _155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_155] = 26
                mem[_155 + 32] = 'SafeMath: division by zero'
                _163 = mem[64]
                mem[64] = mem[64] + 64
                mem[_163] = 26
                mem[_163 + 32] = 'SafeMath: division by zero'
                idx = idx / 2
                s = (s * s) + 5 * 10^17 / 10^18
                continue 
            if not s:
                _148 = mem[64]
                mem[64] = mem[64] + 64
                mem[_148] = 26
                mem[_148 + 32] = 'SafeMath: division by zero'
                if not s:
                    _199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_199] = 26
                    mem[_199 + 32] = 'SafeMath: division by zero'
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = 30
                    mem[_228 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _298 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_298] = 26
                        mem[_298 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_209] = 26
                    mem[_209 + 32] = 'SafeMath: division by zero'
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 30
                    mem[_232 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = 26
                        mem[_360 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _232 + 32]
                        idx = idx + 32
                        continue 
            else:
                if 10^18 * s / s != 10^18:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (10^18 * s) + 5 * 10^17 < 10^18 * s:
                    revert with 0, 'SafeMath: addition overflow'
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 26
                mem[_154 + 32] = 'SafeMath: division by zero'
                if not s:
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = 30
                    mem[_231 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = 26
                        mem[_357 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = 0
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _231 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if s * s / s != s:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (s * s) + 5 * 10^17 < s * s:
                        revert with 0, 'SafeMath: addition overflow'
                    _218 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_218] = 26
                    mem[_218 + 32] = 'SafeMath: division by zero'
                    _249 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_249] = 30
                    mem[_249 + 32] = 'SafeMath: subtraction overflow'
                    if 1 <= idx:
                        _420 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_420] = 26
                        mem[_420 + 32] = 'SafeMath: division by zero'
                        idx = idx - 1 / 2
                        s = (s * s) + 5 * 10^17 / 10^18
                        continue 
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _249 + 32]
                        idx = idx + 32
                        continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not s:
            _138 = mem[64]
            mem[64] = mem[64] + 64
            mem[_138] = 26
            mem[_138 + 32] = 'SafeMath: division by zero'
            _158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_158] = 30
            mem[_158 + 32] = 'SafeMath: subtraction overflow'
            if not sub_4e5c9957:
                if sub_b140384b > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_b140384b = 0
                emit TotalLQTYIssuedUpdated(0);
                return -sub_b140384b
            if 10^18 * sub_4e5c9957 / sub_4e5c9957 != 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if sub_b140384b > 10^18 * sub_4e5c9957 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_b140384b = 10^18 * sub_4e5c9957 / 10^18
            emit TotalLQTYIssuedUpdated((10^18 * sub_4e5c9957 / 10^18));
            return ((10^18 * sub_4e5c9957 / 10^18) - sub_b140384b)
        if 10^18 * s / s != 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (10^18 * s) + 5 * 10^17 < 10^18 * s:
            revert with 0, 'SafeMath: addition overflow'
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 26
        mem[_152 + 32] = 'SafeMath: division by zero'
        _162 = mem[64]
        mem[64] = mem[64] + 64
        mem[_162] = 30
        mem[_162 + 32] = 'SafeMath: subtraction overflow'
    if (10^18 * s) + 5 * 10^17 / 10^18 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    require -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18 <= 10^18
    if not sub_4e5c9957:
        if sub_b140384b > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b140384b = 0
        emit TotalLQTYIssuedUpdated(0);
        return -sub_b140384b
    if (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / sub_4e5c9957 != -((10^18 * s) + 5 * 10^17 / 10^18) + 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if sub_b140384b > (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_b140384b = (10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18
    emit TotalLQTYIssuedUpdated(((10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18));
    return (((10^18 * sub_4e5c9957) - ((10^18 * s) + 5 * 10^17 / 10^18 * sub_4e5c9957) / 10^18) - sub_b140384b)
}



}
