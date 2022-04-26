contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address joeRouterAddress;
address joeFactoryAddress;
address sub_8ba8d345Address;
address pangolinRouterAddress;
address pangolinFactoryAddress;
address WAVAXAddress;

function joeRouter() {
    return joeRouterAddress
}

function pangolinRouter() {
    return pangolinRouterAddress
}

function paused() {
    return bool(stor0)
}

function WAVAX() {
    return WAVAXAddress
}

function joeFactory() {
    return joeFactoryAddress
}

function sub_8ba8d345(?) {
    return sub_8ba8d345Address
}

function owner() {
    return owner
}

function pangolinFactory() {
    return pangolinFactoryAddress
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

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_37c07ed0(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2fa9f79c(?) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_3ba60200(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(arg1)
    call arg1.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_95ec6d57(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    staticcall arg1.depositToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(arg1)
    call arg1.deposit(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1442bf9e(?) payable {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'rPausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
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
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'joeAddLiquidity failed!'
    return ext_call.return_data[64]
}

function sub_3cdf5d95(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[164] = arg3
    mem[196] = arg4
    mem[132] = 128
    mem[228] = arg2.length
    mem[260 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 260] = 0
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), 128, address(arg3), arg4, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    mem[64] = (32 * _11) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    return memory
      from (32 * _11) + ceil32(return_data.size) + 128
       len 32
}

function sub_ecaed723(?) payable {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'rPausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
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
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.addLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 'pangolinAddLiquidity failed!'
    return ext_call.return_data[64]
}

function sub_c52c0d38(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[164] = arg3
    mem[196] = arg4
    mem[132] = 128
    mem[228] = arg2.length
    mem[260 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 260] = 0
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
         gas gas_remaining wei
        args 0, uint32(arg1), 128, address(arg3), arg4, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    mem[64] = (32 * _11) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]:
        revert with 0, 'swap failed'
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    mem[(32 * _11) + ceil32(return_data.size) + 128] = mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128]
    return memory
      from (32 * _11) + ceil32(return_data.size) + 128
       len 32
}

function sub_380e7ecd(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(sub_8ba8d345Address)
    staticcall sub_8ba8d345Address.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(sub_8ba8d345Address)
    call sub_8ba8d345Address.0xe2bbb158 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_58a25ad5(?) {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_c738640c(?) {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.rewardsToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_3a0184e9(?) {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), WAVAXAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'joeRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'joeRemoveLiquidity failed!'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_e6934d27(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'joeRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'joeRemoveLiquidity failed!'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_01dacf68(?) {
    require calldata.size - 4 >= 192
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(pangolinFactoryAddress)
    staticcall pangolinFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), WAVAXAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.removeLiquidityAVAX(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3, arg4, address(arg5), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_6449312f(?) {
    require calldata.size - 4 >= 224
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(pangolinFactoryAddress)
    staticcall pangolinFactoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    if ext_call.return_data[32] <= 0:
        revert with 0, 'pangolinRemoveLiquidity failed!'
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_71d80bcc(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(sub_8ba8d345Address)
    call sub_8ba8d345Address.0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_8ba8d345Address)
    staticcall sub_8ba8d345Address.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
        require ext_code.size(address(ext_call.return_data[128]))
        staticcall address(ext_call.return_data[128]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(address(ext_call.return_data[128])):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[128]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
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
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(ext_call.return_data[128]))
        staticcall address(ext_call.return_data[128]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(address(ext_call.return_data[128])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[128]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 535 len 22]
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
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function sub_00ce7995(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewardsToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[534 len 22]
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
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
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
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 531 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 535 len 22]
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
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function sub_85a5c0e2(?) {
    require calldata.size - 4 >= 256
    if stor0:
        revert with 0, 'rPausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
        mem[612 len 4] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[584 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[598 len 14],
                            0,
                            mem[616 len 4]
        else:
            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[520]:
                    revert with 0, 
                                32,
                                42,
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 599 len 22]
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[64]:
            revert with 0, 'joeAddLiquidity failed!'
        return ext_call.return_data[64]
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
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[ceil32(return_data.size) + 403 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 595 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[ceil32(return_data.size) + 613 len 4] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[ceil32(return_data.size) + 585 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[ceil32(return_data.size) + 599 len 14],
                        0,
                        mem[ceil32(return_data.size) + 617 len 4]
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[64]:
            revert with 0, 'joeAddLiquidity failed!'
        return ext_call.return_data[64]
    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 521]:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 
                    'joeAddLiquidity failed!',
                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return ext_call.return_data[64], 
           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_64470f8b(?) {
    require calldata.size - 4 >= 256
    if stor0:
        revert with 0, 'rPausable: paused'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
        mem[612 len 4] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg4) << 480, mem[584 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[598 len 14],
                            0,
                            mem[616 len 4]
        else:
            mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[520]:
                    revert with 0, 
                                32,
                                42,
                                0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                mem[ceil32(return_data.size) + 599 len 22]
        require ext_code.size(pangolinRouterAddress)
        call pangolinRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[64]:
            revert with 0, 'pangolinAddLiquidity failed!'
        return ext_call.return_data[64]
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
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[ceil32(return_data.size) + 403 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 595 len 26]
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg4) >> 32
    mem[ceil32(return_data.size) + 613 len 4] = 0
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg4) << 480, mem[ceil32(return_data.size) + 585 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[ceil32(return_data.size) + 599 len 14],
                        0,
                        mem[ceil32(return_data.size) + 617 len 4]
        require ext_code.size(pangolinRouterAddress)
        call pangolinRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[64]:
            revert with 0, 'pangolinAddLiquidity failed!'
        return ext_call.return_data[64]
    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 521]:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, arg5, arg6, address(arg7), arg8, mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        revert with 0, 
                    'pangolinAddLiquidity failed!',
                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    return ext_call.return_data[64], 
           mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function sub_939bc2a6(?) {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    require 0 < ('cd', 68).length
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = cd[4]
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(('cd', 68)[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, cd[4]) >> 32
    mem[416 len 4] = 0
    call address(('cd', 68)[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, cd[4]) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        mem[292] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[296] = cd[36]
        mem[328] = cd[36]
        mem[392] = address(cd[100])
        mem[424] = cd[132]
        mem[360] = 160
        mem[456] = ('cd', 68).length
        mem[488 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 488] = 0
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 292
        require return_data.size >= 32
        _170 = mem[292 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[292 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292]
        _182 = mem[_170 + 292]
        mem[ceil32(return_data.size) + 324 len floor32(mem[_170 + 292])] = mem[_170 + 324 len floor32(mem[_170 + 292])]
        mem[64] = (32 * _182) + ceil32(return_data.size) + 324
        require mem[ceil32(return_data.size) + 292] - 1 < mem[ceil32(return_data.size) + 292]
        if 0 == mem[(32 * mem[ceil32(return_data.size) + 292] - 1) + ceil32(return_data.size) + 324]:
            revert with 0, 'swap failed'
        require mem[ceil32(return_data.size) + 292] - 1 < mem[ceil32(return_data.size) + 292]
        mem[(32 * _182) + ceil32(return_data.size) + 324] = mem[(32 * mem[ceil32(return_data.size) + 292] - 1) + ceil32(return_data.size) + 324]
        return memory
          from (32 * _182) + ceil32(return_data.size) + 324
           len 32
    mem[292] = return_data.size
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[ceil32(return_data.size) + 293] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 297] = cd[36]
        mem[ceil32(return_data.size) + 329] = cd[36]
        mem[ceil32(return_data.size) + 393] = address(cd[100])
        mem[ceil32(return_data.size) + 425] = cd[132]
        mem[ceil32(return_data.size) + 361] = 160
        mem[ceil32(return_data.size) + 457] = ('cd', 68).length
        mem[ceil32(return_data.size) + 489 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 489] = 0
        require ext_code.size(joeRouterAddress)
        call joeRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        _165 = mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]
        _176 = mem[ceil32(return_data.size) + _165 + 293]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _165 + 293])] = mem[ceil32(return_data.size) + _165 + 325 len floor32(mem[ceil32(return_data.size) + _165 + 293])]
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
        if 0 == mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
            revert with 0, 'swap failed'
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
        mem[(32 * _176) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        return memory
          from (32 * _176) + ceil32(return_data.size) + ceil32(return_data.size) + 325
           len 32
    require return_data.size >= 32
    if not mem[324]:
        revert with 0, 
                    32,
                    42,
                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                    mem[ceil32(return_data.size) + 403 len 22]
    mem[ceil32(return_data.size) + 293] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 297] = cd[36]
    mem[ceil32(return_data.size) + 329] = cd[36]
    mem[ceil32(return_data.size) + 393] = address(cd[100])
    mem[ceil32(return_data.size) + 425] = cd[132]
    mem[ceil32(return_data.size) + 361] = 160
    mem[ceil32(return_data.size) + 457] = ('cd', 68).length
    mem[ceil32(return_data.size) + 489 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 489] = 0
    require ext_code.size(joeRouterAddress)
    call joeRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
    require return_data.size >= 32
    _173 = mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]
    _186 = mem[ceil32(return_data.size) + _173 + 293]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _173 + 293])] = mem[ceil32(return_data.size) + _173 + 325 len floor32(mem[ceil32(return_data.size) + _173 + 293])]
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
        revert with 0, 'swap failed'
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
    mem[(32 * _186) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
    return memory
      from (32 * _186) + ceil32(return_data.size) + ceil32(return_data.size) + 325
       len 32
}

function sub_33bd20cc(?) {
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'rPausable: paused'
    require 0 < ('cd', 68).length
    mem[132] = msg.sender
    mem[164] = this.address
    mem[196] = cd[4]
    mem[96] = 100
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = unknown_0x23b872dd(?????)
    mem[228] = 32
    mem[260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(('cd', 68)[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, cd[4]) >> 32
    mem[416 len 4] = 0
    call address(('cd', 68)[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, cd[4]) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        mem[292] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[296] = cd[36]
        mem[328] = cd[36]
        mem[392] = address(cd[100])
        mem[424] = cd[132]
        mem[360] = 160
        mem[456] = ('cd', 68).length
        mem[488 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + 488] = 0
        require ext_code.size(pangolinRouterAddress)
        call pangolinRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 292
        require return_data.size >= 32
        _170 = mem[292 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[292 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292] <= 4294967296 and mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 292] = mem[mem[292 len 4], Mask(224, 32, cd[36]) >> 32 + 292]
        _182 = mem[_170 + 292]
        mem[ceil32(return_data.size) + 324 len floor32(mem[_170 + 292])] = mem[_170 + 324 len floor32(mem[_170 + 292])]
        mem[64] = (32 * _182) + ceil32(return_data.size) + 324
        require mem[ceil32(return_data.size) + 292] - 1 < mem[ceil32(return_data.size) + 292]
        if 0 == mem[(32 * mem[ceil32(return_data.size) + 292] - 1) + ceil32(return_data.size) + 324]:
            revert with 0, 'swap failed'
        require mem[ceil32(return_data.size) + 292] - 1 < mem[ceil32(return_data.size) + 292]
        mem[(32 * _182) + ceil32(return_data.size) + 324] = mem[(32 * mem[ceil32(return_data.size) + 292] - 1) + ceil32(return_data.size) + 324]
        return memory
          from (32 * _182) + ceil32(return_data.size) + 324
           len 32
    mem[292] = return_data.size
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        mem[ceil32(return_data.size) + 293] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 297] = cd[36]
        mem[ceil32(return_data.size) + 329] = cd[36]
        mem[ceil32(return_data.size) + 393] = address(cd[100])
        mem[ceil32(return_data.size) + 425] = cd[132]
        mem[ceil32(return_data.size) + 361] = 160
        mem[ceil32(return_data.size) + 457] = ('cd', 68).length
        mem[ceil32(return_data.size) + 489 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 489] = 0
        require ext_code.size(pangolinRouterAddress)
        call pangolinRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
        require return_data.size >= 32
        _165 = mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]
        _176 = mem[ceil32(return_data.size) + _165 + 293]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _165 + 293])] = mem[ceil32(return_data.size) + _165 + 325 len floor32(mem[ceil32(return_data.size) + _165 + 293])]
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
        if 0 == mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
            revert with 0, 'swap failed'
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
        mem[(32 * _176) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
        return memory
          from (32 * _176) + ceil32(return_data.size) + ceil32(return_data.size) + 325
           len 32
    require return_data.size >= 32
    if not mem[324]:
        revert with 0, 
                    32,
                    42,
                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                    mem[ceil32(return_data.size) + 403 len 22]
    mem[ceil32(return_data.size) + 293] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 297] = cd[36]
    mem[ceil32(return_data.size) + 329] = cd[36]
    mem[ceil32(return_data.size) + 393] = address(cd[100])
    mem[ceil32(return_data.size) + 425] = cd[132]
    mem[ceil32(return_data.size) + 361] = 160
    mem[ceil32(return_data.size) + 457] = ('cd', 68).length
    mem[ceil32(return_data.size) + 489 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    mem[ceil32(return_data.size) + (32 * ('cd', 68).length) + 489] = 0
    require ext_code.size(pangolinRouterAddress)
    call pangolinRouterAddress.swapExactTokensForAVAX(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[36], cd[36], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), address(cd[100]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
    require return_data.size >= 32
    _173 = mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293] <= 4294967296 and mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 293 len 4], Mask(224, 32, cd[36]) >> 32 + 293]
    _186 = mem[ceil32(return_data.size) + _173 + 293]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len floor32(mem[ceil32(return_data.size) + _173 + 293])] = mem[ceil32(return_data.size) + _173 + 325 len floor32(mem[ceil32(return_data.size) + _173 + 293])]
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
    if 0 == mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
        revert with 0, 'swap failed'
    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1 < mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]
    mem[(32 * _186) + ceil32(return_data.size) + ceil32(return_data.size) + 325] = mem[(32 * mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] - 1) + ceil32(return_data.size) + ceil32(return_data.size) + 325]
    return memory
      from (32 * _186) + ceil32(return_data.size) + ceil32(return_data.size) + 325
       len 32
}

function sub_959cd8f6(?) {
    require calldata.size - 4 >= 64
    if stor0:
        revert with 0, 'rPausable: paused'
    require ext_code.size(arg1)
    staticcall arg1.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.rewardsToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        require ext_code.size(arg1)
        call arg1.stake(uint256 rg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 567 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(arg1)
            call arg1.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(arg1)
            call arg1.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, msg.sender, ext_call.return_data[0 len 28]
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666545524332303a204552433230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
