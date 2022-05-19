contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
address owner;
uint256 swapFee;

function swapFee() {
    return swapFee
}

function sub_70a9ef81(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function registeredERC20(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    swapFee = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c3dc57e3(?) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if stor1[arg1]:
        revert with 0, 'opc tx filled already'
    if not stor0[address(arg2)]:
        revert with 0, 'not registered token'
    stor1[arg1] = 1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg4) >> 32
    mem[324 len 0] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg4
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
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
    emit SwapFilled(arg4, arg2, arg1, arg3);
    return 1
}

function sub_cbd00207(?) payable {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'contract is not allowed to swap'
    if msg.sender != tx.origin:
        revert with 0, 'no proxy contract is allowed'
    if not stor0[address(arg1)]:
        revert with 0, 'not registered token'
    if swapFee != msg.value:
        revert with 0, 'swap fee not equal'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if msg.value:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SwapStarted(arg2, msg.value, arg1, msg.sender);
    return 1
}

function sub_30c873cc(?) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 0
    if stor0[address(arg1)]:
        revert with 0, 'already registered'
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _10 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_7 + 96])] = mem[_7 + 128 len ceil32(mem[_7 + 96])]
    if not _10 % 32:
        mem[_10 + ceil32(return_data.size) + 128] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_10 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _182 = mem[_10 + ceil32(return_data.size) + 128]
        require mem[_10 + ceil32(return_data.size) + 128] <= 4294967296
        require mem[_10 + ceil32(return_data.size) + 128] + 32 <= return_data.size
        require return_data.size >= mem[_10 + ceil32(return_data.size) + mem[_10 + ceil32(return_data.size) + 128] + 128] + mem[_10 + ceil32(return_data.size) + 128] + 32 and mem[_10 + ceil32(return_data.size) + mem[_10 + ceil32(return_data.size) + 128] + 128] <= 4294967296
        mem[_10 + (2 * ceil32(return_data.size)) + 128] = mem[_10 + ceil32(return_data.size) + mem[_10 + ceil32(return_data.size) + 128] + 128]
        _188 = mem[_10 + ceil32(return_data.size) + _182 + 128]
        mem[_10 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_10 + ceil32(return_data.size) + _182 + 128])] = mem[_10 + ceil32(return_data.size) + _182 + 160 len ceil32(mem[_10 + ceil32(return_data.size) + _182 + 128])]
        if not _188 % 32:
            mem[64] = _188 + _10 + (2 * ceil32(return_data.size)) + 160
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[_188 + _10 + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 96]:
                revert with 0, 'empty name'
            if mem[_10 + (2 * ceil32(return_data.size)) + 128] <= 0:
                revert with 0, 'empty symbol'
            mem[0] = arg1
            mem[32] = 0
            stor0[address(arg1)] = 1
            mem[_188 + _10 + (2 * ceil32(return_data.size)) + 224] = uint8(ext_call.return_data[0])
            mem[_188 + _10 + (2 * ceil32(return_data.size)) + 160] = 96
            mem[_188 + _10 + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
            _372 = mem[ceil32(return_data.size) + 96]
            mem[_188 + _10 + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + _188 + _10 + (2 * ceil32(return_data.size)) + 288] = mem[_10 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + _188 + _10 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])] = mem[_10 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192],
                                          ext_call.return_data[0] << 248,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 256 len mem[_10 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _188 + _10 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + _188 + _10 + (2 * ceil32(return_data.size)) + -(mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32) + 352 len mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192],
                                          ext_call.return_data[0] << 248,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + _372 + 96],
                                          msg.sender,
                                          arg1,
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + 288] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 320 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192] = floor32(mem[ceil32(return_data.size) + 96]) + 160
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + 320] = mem[_10 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])] = mem[_10 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192],
                                          ext_call.return_data[0] << 248,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 256 len mem[_10 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + _188 + _10 + (2 * ceil32(return_data.size)) + -(mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 192],
                                          ext_call.return_data[0] << 248,
                                          mem[_188 + _10 + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(_372) + 128],
                                          msg.sender,
                                          arg1,
        else:
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + -(_188 % 32) + 192 len _188 % 32]
            mem[64] = floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 192
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 96]:
                revert with 0, 'empty name'
            if mem[_10 + (2 * ceil32(return_data.size)) + 128] <= 0:
                revert with 0, 'empty symbol'
            mem[0] = arg1
            mem[32] = 0
            stor0[address(arg1)] = 1
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 192] = 96
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
            _390 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 320] = mem[_10 + (2 * ceil32(return_data.size)) + 128]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])] = mem[_10 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 288 len mem[_10 + (2 * ceil32(return_data.size)) + 128] + mem[ceil32(return_data.size) + 96] + 64],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + mem[ceil32(return_data.size) + 96] + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + -(mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32) + 384 len mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + _390 + 96],
                                          msg.sender,
                                          arg1,
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
                mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 352] = mem[_10 + (2 * ceil32(return_data.size)) + 128]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])] = mem[_10 + (2 * ceil32(return_data.size)) + 160 len ceil32(mem[_10 + (2 * ceil32(return_data.size)) + 128])]
                if not mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 288 len mem[_10 + (2 * ceil32(return_data.size)) + 128] + floor32(mem[ceil32(return_data.size) + 96]) + 96],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_188) + _10 + (2 * ceil32(return_data.size)) + -(mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32) + 416 len mem[_10 + (2 * ceil32(return_data.size)) + 128] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_188) + _10 + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_10 + (2 * ceil32(return_data.size)) + 128]) + floor32(_390) + 128],
                                          msg.sender,
                                          arg1,
    else:
        mem[floor32(_10) + ceil32(return_data.size) + 128] = mem[floor32(_10) + ceil32(return_data.size) + -(_10 % 32) + 160 len _10 % 32]
        mem[floor32(_10) + ceil32(return_data.size) + 160] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(_10) + ceil32(return_data.size) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(_10) + (2 * ceil32(return_data.size)) + 160
        require return_data.size >= 32
        _185 = mem[floor32(_10) + ceil32(return_data.size) + 160]
        require mem[floor32(_10) + ceil32(return_data.size) + 160] <= 4294967296
        require mem[floor32(_10) + ceil32(return_data.size) + 160] + 32 <= return_data.size
        require return_data.size >= mem[floor32(_10) + ceil32(return_data.size) + mem[floor32(_10) + ceil32(return_data.size) + 160] + 160] + mem[floor32(_10) + ceil32(return_data.size) + 160] + 32 and mem[floor32(_10) + ceil32(return_data.size) + mem[floor32(_10) + ceil32(return_data.size) + 160] + 160] <= 4294967296
        mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] = mem[floor32(_10) + ceil32(return_data.size) + mem[floor32(_10) + ceil32(return_data.size) + 160] + 160]
        _190 = mem[floor32(_10) + ceil32(return_data.size) + _185 + 160]
        mem[floor32(_10) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_10) + ceil32(return_data.size) + _185 + 160])] = mem[floor32(_10) + ceil32(return_data.size) + _185 + 192 len ceil32(mem[floor32(_10) + ceil32(return_data.size) + _185 + 160])]
        if not _190 % 32:
            mem[64] = _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 192
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 96]:
                revert with 0, 'empty name'
            if mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] <= 0:
                revert with 0, 'empty symbol'
            mem[0] = arg1
            mem[32] = 0
            stor0[address(arg1)] = 1
            mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 256] = uint8(ext_call.return_data[0])
            mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 192] = 96
            mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 96]
            _381 = mem[ceil32(return_data.size) + 96]
            mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 320 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32) + 384 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + _381 + 96],
                                          msg.sender,
                                          arg1,
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 320] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 352 len mem[ceil32(return_data.size) + 96] % 32]
                mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224] = floor32(mem[ceil32(return_data.size) + 96]) + 160
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 288 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + _190 + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 224],
                                          ext_call.return_data[0] << 248,
                                          mem[_190 + floor32(_10) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(_381) + 128],
                                          msg.sender,
                                          arg1,
        else:
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 192] = mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + -(_190 % 32) + 224 len _190 % 32]
            mem[64] = floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 224
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 96]:
                revert with 0, 'empty name'
            if mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] <= 0:
                revert with 0, 'empty symbol'
            mem[0] = arg1
            mem[32] = 0
            stor0[address(arg1)] = 1
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 288] = uint8(ext_call.return_data[0])
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 224] = 96
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + 96]
            _396 = mem[ceil32(return_data.size) + 96]
            mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 352 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96] + 128
                mem[mem[ceil32(return_data.size) + 96] + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]
                mem[mem[ceil32(return_data.size) + 96] + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 384 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] + mem[ceil32(return_data.size) + 96] + 64],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + mem[ceil32(return_data.size) + 96] + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32) + 416 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + _396 + 96],
                                          msg.sender,
                                          arg1,
            else:
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 352] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 384 len mem[ceil32(return_data.size) + 96] % 32]
                mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256] = floor32(mem[ceil32(return_data.size) + 96]) + 160
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 384] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]
                mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 416 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])] = mem[floor32(_10) + (2 * ceil32(return_data.size)) + 192 len ceil32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160])]
                if not mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32:
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 320 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] + floor32(mem[ceil32(return_data.size) + 96]) + 96],
                                          msg.sender,
                                          arg1,
                else:
                    mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 416] = mem[floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(mem[ceil32(return_data.size) + 96]) + floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + -(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32) + 448 len mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160] % 32]
                    emit SwapPairRegister(address arg1, address arg2, string arg3, string arg4, uint8 arg5):
                                          96,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 256],
                                          ext_call.return_data[0] << 248,
                                          mem[floor32(_190) + floor32(_10) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[floor32(_10) + (2 * ceil32(return_data.size)) + 160]) + floor32(_396) + 128],
                                          msg.sender,
                                          arg1,
    return 1
}



}
