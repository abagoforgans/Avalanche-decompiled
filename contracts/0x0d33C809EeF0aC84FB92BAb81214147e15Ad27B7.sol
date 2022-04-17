contract main {




// =====================  Runtime code  =====================


#
#  - sub_ddeb2d4e(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_ffe6e7d7Address;
address dataAddress;
address sub_0457dad2Address;
address quotationAddress;
address sub_5bfb7508Address;
address sub_4ba69faaAddress;
address sub_a64fb0a6Address;
uint256 sub_fe95f828;
mapping of uint8 stor209;
mapping of uint8 stor210;
address exchangeRateAddress;
address referralProgramAddress;
address productAddress;

function sub_0457dad2(?) {
    return sub_0457dad2Address
}

function exchangeRate() {
    return exchangeRateAddress
}

function quotation() {
    return quotationAddress
}

function sub_4ba69faa(?) {
    return sub_4ba69faaAddress
}

function sub_5bfb7508(?) {
    return sub_5bfb7508Address
}

function paused() {
    return bool(paused)
}

function sub_679faa39(?) {
    require calldata.size - 4 >= 64
    return bool(stor210[arg1][arg2])
}

function data() {
    return dataAddress
}

function owner() {
    return owner
}

function sub_9c9ace0d(?) {
    require calldata.size - 4 >= 32
    return bool(stor209[arg1])
}

function sub_a64fb0a6(?) {
    return sub_a64fb0a6Address
}

function product() {
    return productAddress
}

function referralProgram() {
    return referralProgramAddress
}

function sub_fe95f828(?) {
    return sub_fe95f828
}

function sub_ffe6e7d7(?) {
    return sub_ffe6e7d7Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pauseAll() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setBuyCoverMaxBlkNumLatency(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'SBCMBNL: 1'
    sub_fe95f828 = arg1
    emit SetBuyCoverMaxBlkNumLatencyEvent(arg1);
}

function setBuyCoverSigner(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'SBCS: 1'
    stor209[address(arg1)] = uint8(arg2)
    emit SetBuyCoverSignerEvent(arg2, arg1);
}

function getRewardAmount() {
    require ext_code.size(dataAddress)
    staticcall dataAddress.0xa31ede21 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
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

function getINSURRewardBalanceDetails() {
    require ext_code.size(sub_a64fb0a6Address)
    staticcall sub_a64fb0a6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dataAddress)
    staticcall dataAddress.0xf552eb80 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], ext_call.return_data[0]
}

function setup(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10) {
    require calldata.size - 4 >= 320
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    if not arg6:
        revert with 0, 'S:6'
    if not arg7:
        revert with 0, 'S:7'
    if not arg8:
        revert with 0, 'S:8'
    if not arg9:
        revert with 0, 'S:9'
    if not arg10:
        revert with 0, 'S:10'
    sub_ffe6e7d7Address = arg1
    sub_a64fb0a6Address = arg2
    dataAddress = arg3
    sub_0457dad2Address = arg4
    quotationAddress = arg5
    sub_5bfb7508Address = arg6
    sub_4ba69faaAddress = arg7
    exchangeRateAddress = arg8
    referralProgramAddress = arg9
    productAddress = arg10
}

function getCoverOwnerRewardAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > 0:
        if arg2 > 10000:
            return arg2, 0
        if not arg1:
            return arg2, 0
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return arg2, arg2 * arg1 / 10000
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0xe4b23a5e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10000:
        return ext_call.return_data[0], 0
    if not arg1:
        return ext_call.return_data[0], 0
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ext_call.return_data[0], ext_call.return_data[0] * arg1 / 10000
}

function removeINSURRewardBalance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_a64fb0a6Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call sub_a64fb0a6Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function unlockRewardByController(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_ffe6e7d7Address)
    staticcall sub_ffe6e7d7Address.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    require ext_code.size(dataAddress)
    staticcall dataAddress.0xa31ede21 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(dataAddress)
        call dataAddress.0x9f44ff8d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(dataAddress)
        call dataAddress.0x710bf84d with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_a64fb0a6Address):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call sub_a64fb0a6Address with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit UnlockCoverRewardEvent(ext_call.return_data[0], arg1);
    stor151 = 1
    return ext_call.return_data[0]
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor151 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
}

function sub_45c98d56(?) {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg7.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    if arg1.length != arg2.length:
        revert with 0, 'GPCHK: 1'
    if arg1.length != arg3.length:
        revert with 0, 'GPCHK: 2'
    require ext_code.size(sub_0457dad2Address)
    staticcall sub_0457dad2Address.0x4fb92558 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'GPCHK: 3'
    if not arg5:
        revert with 0, 'GPCHK: 4'
    if not arg6:
        revert with 0, 'GPCHK: 5'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 224] = 2
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256] = 0
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] + mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256] < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256]:
            revert with 0, 'SafeMath: addition overflow'
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] + mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256]
        require idx < arg2.length
        require idx < arg3.length
        if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
            if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288] < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288]:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg1.length
            require idx < arg3.length
            _313 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 324] = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 356] = _313
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 388] = arg4
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0x4400c176 with:
                    gas gas_remaining wei
                   args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 324], _313, arg4
        else:
            if mem[(32 * idx) + (32 * arg1.length) + 160] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != mem[(32 * idx) + (32 * arg1.length) + 160]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 421 len 31]
            if (mem[(32 * idx) + (32 * arg1.length) + 160] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288] < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288]:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288] = (mem[(32 * idx) + (32 * arg1.length) + 160] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]) + mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 288]
            require idx < arg1.length
            require idx < arg3.length
            _323 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 324] = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 356] = _323
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 388] = arg4
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0x4400c176 with:
                    gas gas_remaining wei
                   args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 324], _323, arg4
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'GPCHK: 6'
        idx = idx + 1
        continue 
    require ext_code.size(sub_5bfb7508Address)
    staticcall sub_5bfb7508Address.0x76136817 with:
            gas gas_remaining wei
           args mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 256], arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'GPCHK: 7'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 484 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 484] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 516 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg7.length) + 516] = arg3.length
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + (32 * arg7.length) + 548 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(quotationAddress)
    staticcall quotationAddress.0xfc2f5c0d with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + floor32(arg1.length) + 484 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32], arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(64 * arg1.length) + (64 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + floor32(arg3.length) + 548 len (32 * arg3.length) - floor32(arg3.length)]), (32 * arg1.length) + 160, (32 * arg2.length) + (32 * arg1.length) + 192, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'GPCHK: 8'
    if arg7.length != 2:
        revert with 0, 'GPCHK: 9'
    require ext_code.size(exchangeRateAddress)
    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args address(arg4), sub_a64fb0a6Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require 0 < ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
        require 1 < ext_call.return_data[0]
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 384] = 0
    else:
        if arg5 == arg6:
            require 0 < ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
            require 1 < ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 384] = 0
        else:
            require 0 < arg7.length
            if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] > 0:
                if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] > 10000:
                    require 0 < ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
                else:
                    if not ext_call.return_data[0]:
                        require 0 < ext_call.return_data[0]
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
                    else:
                        if mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] * ext_call.return_data[0] / ext_call.return_data[0] != mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 517 len 31]
                        require 0 < ext_call.return_data[0]
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] * ext_call.return_data[0] / 10000
            else:
                require ext_code.size(sub_0457dad2Address)
                staticcall sub_0457dad2Address.0xe4b23a5e with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 10000:
                    require 0 < ext_call.return_data[0]
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
                else:
                    if not ext_call.return_data[0]:
                        require 0 < ext_call.return_data[0]
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = 0
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 517 len 31]
                        require 0 < ext_call.return_data[0]
                        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352] = ext_call.return_data[0] * ext_call.return_data[0] / 10000
            require 1 < arg7.length
            require ext_code.size(referralProgramAddress)
            staticcall referralProgramAddress.getRewardPctg(uint256 rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 1, mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(referralProgramAddress)
            staticcall referralProgramAddress.getRewardAmount(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 1, ext_call.return_data[0], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < ext_call.return_data[0]
            mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 384] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 416] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 480] = ext_call.return_data[32]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 448] = 128
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 544] = 2
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 576 len 0] = None
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 512] = 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 640] = ext_call.return_data[0]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 672 len floor32(ext_call.return_data[0])] = mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 352 len floor32(ext_call.return_data[0])]
    return ext_call.return_data[0], 
           128,
           ext_call.return_data[32],
           224,
           2,
           mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 576 len 64],
           ext_call.return_data[0],
           mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg7.length) + 672 len 32 * ext_call.return_data[0]]
}



}
