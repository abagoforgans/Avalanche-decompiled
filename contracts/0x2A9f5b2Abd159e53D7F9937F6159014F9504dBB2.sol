contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_b870029cAddress;
mapping of address sub_3aeeb560;
mapping of uint8 stor203;
uint256 sub_e7aadc3a;
address feeCollectorAddress;
mapping of uint256 sub_ba954d31;
mapping of uint256 sub_eea23f93;
uint256 sub_74193344;
uint256 sub_4b22a608;
mapping of uint8 stor210;
uint256 sub_8102b204;
uint256 sub_2e657e1c;
uint256 sub_663c00a6;
address exchangeRateAddress;

function sub_2e657e1c(?) {
    return sub_2e657e1c
}

function sub_3aeeb560(?) {
    require calldata.size - 4 >= 64
    return sub_3aeeb560[arg1][arg2]
}

function exchangeRate() {
    return exchangeRateAddress
}

function sub_4b22a608(?) {
    return sub_4b22a608
}

function paused() {
    return bool(paused)
}

function sub_663c00a6(?) {
    return sub_663c00a6
}

function sub_74193344(?) {
    return sub_74193344
}

function sub_8102b204(?) {
    return sub_8102b204
}

function owner() {
    return owner
}

function sub_b870029c(?) {
    return sub_b870029cAddress
}

function sub_ba954d31(?) {
    require calldata.size - 4 >= 32
    return sub_ba954d31[arg1]
}

function feeCollector() {
    return feeCollectorAddress
}

function sub_e6cbfbb2(?) {
    require calldata.size - 4 >= 32
    return bool(stor210[arg1])
}

function sub_e7aadc3a(?) {
    return sub_e7aadc3a
}

function sub_eea23f93(?) {
    require calldata.size - 4 >= 32
    return sub_eea23f93[arg1]
}

function sub_f4266c3e(?) {
    require calldata.size - 4 >= 64
    return bool(stor203[arg1][arg2])
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

function sub_9dacf850(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_3aeeb560[arg1][address(arg3)] = arg2
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

function sub_9c736a74(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_4b22a608 = arg1
    sub_74193344 = arg2
    sub_8102b204 = arg3
}

function sub_74322f98(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'SASTLS:1'
    stor210[address(arg1)] = uint8(arg2)
    emit 0x9daf4f95: arg2, msg.sender, arg1
}

function sub_808cb6af(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg4:
        revert with 0, 'SSFA:1'
    sub_e7aadc3a = arg1
    sub_2e657e1c = arg2
    sub_663c00a6 = arg3
    feeCollectorAddress = arg4
}

function setup(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    sub_b870029cAddress = arg1
    exchangeRateAddress = arg2
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

function sub_b3f487c6(?) {
    if block.number < sub_ba954d31[address(msg.sender)]:
        revert with 0, 'GCVA:1'
    if sub_ba954d31[address(msg.sender)] + sub_4b22a608 < sub_4b22a608:
        revert with 0, 'SafeMath: addition overflow'
    if sub_ba954d31[address(msg.sender)] + sub_4b22a608 <= block.number:
        return sub_74193344
    if sub_eea23f93[address(msg.sender)] > sub_74193344:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_74193344 - sub_eea23f93[address(msg.sender)])
}

function sub_7f1a9904(?) {
    require calldata.size - 4 >= 96
    if arg2 < sub_8102b204:
        revert with 0, 'BridgeGetFee:1'
    if not arg2:
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, 0
    else:
        if sub_e7aadc3a * arg2 / arg2 != sub_e7aadc3a:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, sub_e7aadc3a * arg2 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_2e657e1c:
        if sub_2e657e1c < sub_663c00a6:
            if sub_2e657e1c + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_2e657e1c + arg3)
    else:
        if ext_call.return_data[0] < sub_663c00a6:
            if ext_call.return_data[0] + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            return (ext_call.return_data[0] + arg3)
    if sub_663c00a6 + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_663c00a6 + arg3)
}

function sub_ec8afa21(?) {
    require calldata.size - 4 >= 288
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[128 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[(32 * arg7.length) + 128] = arg8.length
    mem[(32 * arg7.length) + 160 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + (32 * arg9.length) + 36 <= calldata.size
    mem[(32 * arg7.length) + (32 * arg8.length) + 160] = arg9.length
    mem[(32 * arg7.length) + (32 * arg8.length) + 192 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
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
    if sub_3aeeb560[arg4][address(arg1)] != arg2:
        revert with 0, 'onlyAllowedToTokenChain'
    if stor203[arg4][arg5]:
        revert with 0, 'SMC2AB:1'
    if arg3 > sub_74193344:
        revert with 0, 'SMC2AB:2'
    if arg3 < sub_8102b204:
        revert with 0, 'SMC2AB:3'
    mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 224] = this.address << 96
    mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 244] = address(arg1)
    mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 192] = 176
    require 0 < arg7.length
    require 0 < arg8.length
    require 0 < arg9.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5, arg6)), mem[159 len 1], mem[(32 * arg7.length) + 160], mem[(32 * arg7.length) + (32 * arg8.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg7.length
    require 1 < arg8.length
    require 1 < arg9.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5, arg6)), mem[191 len 1], mem[(32 * arg7.length) + 192], mem[(32 * arg7.length) + (32 * arg8.length) + 224]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == address(signer):
        revert with 0, 'SMC2AB:4'
    if not stor210[address(signer)]:
        revert with 0, 'SMC2AB:4'
    if not stor210[address(signer)]:
        revert with 0, 'SMC2AB:4'
    stor203[arg4][arg5] = 1
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 890 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 784 len 64] = unknown_0xa9059cbb(?????), address(arg6) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 848 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg7.length:
                revert with memory
                  from 128
                   len arg7.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg7.length:
            require arg7.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 894 len 22]
    else:
        mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 816 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + 816]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg7.length) + (32 * arg8.length) + (32 * arg9.length) + ceil32(return_data.size) + 895 len 22]
    emit 0x92575f03: msg.sender, address(arg2), arg3, arg4, arg6, arg5, arg1
    stor151 = 1
}

function sub_6079e126(?) payable {
    require calldata.size - 4 >= 320
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[128 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + (32 * arg9.length) + 36 <= calldata.size
    mem[(32 * arg8.length) + 128] = arg9.length
    mem[(32 * arg8.length) + 160 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + (32 * arg10.length) + 36 <= calldata.size
    mem[(32 * arg8.length) + (32 * arg9.length) + 160] = arg10.length
    mem[(32 * arg8.length) + (32 * arg9.length) + 192 len 32 * arg10.length] = call.data[arg10 + 36 len 32 * arg10.length]
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'NC:1'
    if tx.origin != msg.sender:
        revert with 0, 'NC:2'
    if sub_3aeeb560[arg5][address(arg2)] != arg1:
        revert with 0, 'onlyAllowedToTokenChain'
    if sub_4b22a608 + arg7 < arg7:
        revert with 0, 'SafeMath: addition overflow'
    if sub_4b22a608 + arg7 <= block.number:
        revert with 0, 'Bridge2Chain:1'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Bridge2Chain:2'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Bridge2Chain:3'
    if arg4 != msg.value:
        revert with 0, 'Bridge2Chain:4'
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 224] = this.address << 96
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 244] = address(arg1)
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 192] = 208
    require 0 < arg8.length
    require 0 < arg9.length
    require 0 < arg10.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), mem[159 len 1], mem[(32 * arg8.length) + 160], mem[(32 * arg8.length) + (32 * arg9.length) + 192]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require 1 < arg8.length
    require 1 < arg9.length
    require 1 < arg10.length
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(Mask(160, 96, this.address) >> 96, arg1, arg2, arg3, arg4, arg5, arg6, arg7)), mem[191 len 1], mem[(32 * arg8.length) + 192], mem[(32 * arg8.length) + (32 * arg9.length) + 224]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == address(signer):
        revert with 0, 'Bridge2Chain:5'
    if not stor210[address(signer)]:
        revert with 0, 'Bridge2Chain:5'
    if not stor210[address(signer)]:
        revert with 0, 'Bridge2Chain:5'
    if sub_ba954d31[address(msg.sender)] + sub_4b22a608 < sub_4b22a608:
        revert with 0, 'SafeMath: addition overflow'
    if sub_ba954d31[address(msg.sender)] + sub_4b22a608 > block.number:
        if sub_eea23f93[address(msg.sender)] + arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        sub_eea23f93[address(msg.sender)] += arg3
    else:
        sub_ba954d31[address(msg.sender)] = block.number
        sub_eea23f93[address(msg.sender)] = arg3
    if sub_eea23f93[address(msg.sender)] > sub_74193344:
        revert with 0, 'Bridge2Chain:6'
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 954 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 848 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 972 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 944 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg8.length:
                revert with memory
                  from 128
                   len arg8.length
            revert with 0, 'SafeERC20: low-level call failed'
        if arg8.length:
            require arg8.length >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 958 len 14],
                            0,
                            mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 976 len 4]
    else:
        mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 880 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + 880]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * arg8.length) + (32 * arg9.length) + (32 * arg10.length) + ceil32(return_data.size) + 959 len 22]
    if arg4:
        if feeCollectorAddress:
            call feeCollectorAddress with:
               value arg4 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit 0x7fe7ea96: address(arg1), arg3, arg5, arg4, msg.sender, arg6, arg2
    stor151 = 1
}

function sub_291f9d16(?) {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
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
            paused = 0
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
                paused = 0
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
                    paused = 0
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
                        paused = 0
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
                            paused = 0
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
                                paused = 0
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
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
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



}
