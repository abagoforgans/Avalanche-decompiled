contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d4d003d(?)
#  - sub_225fc9fd(?)
#  - sub_27b42c0f(?)
#
const BASIS_POINTS_DIVISOR = 10000


uint256 stor0;
address govAddress;
address adminAddress;
address vaultAddress;
address routerAddress;
address wethAddress;
uint256 depositFee;
uint256 sub_98d1e03a;
address sub_006cc35eAddress;
mapping of struct feeReserves;
mapping of uint256 sub_1045c74e;
mapping of uint256 sub_9698d25a;
uint256 sub_63ae2103;
uint256 sub_5841fcaa;
uint256 sub_3a2a80c7;
uint256 sub_cb0269c9;
uint8 isLeverageEnabled;
array of uint256 sub_04225954;
array of uint256 sub_4278555f;
uint256 sub_9b578620;
uint256 sub_1bca8cf0;
mapping of uint8 stor21;
mapping of uint256 sub_633451de;
array of struct sub_faf990f3;
mapping of uint256 sub_fa444577;
array of struct sub_1f285106;

function sub_006cc35e(?) {
    return sub_006cc35eAddress
}

function sub_04225954(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_04225954.length
    return sub_04225954[arg1]
}

function sub_1045c74e(?) {
    require calldata.size - 4 >= 32
    return sub_1045c74e[arg1]
}

function gov() {
    return govAddress
}

function sub_1bca8cf0(?) {
    return sub_1bca8cf0
}

function feeReserves(address arg1) {
    require calldata.size - 4 >= 32
    return feeReserves[arg1].field_0
}

function sub_1f285106(?) {
    require calldata.size - 4 >= 32
    return sub_1f285106[arg1].field_0, 
           sub_1f285106[arg1].field_512,
           sub_1f285106[arg1].field_768,
           sub_1f285106[arg1].field_1024,
           bool(sub_1f285106[arg1].field_1280),
           sub_1f285106[arg1].field_1280,
           sub_1f285106[arg1].field_1536,
           sub_1f285106[arg1].field_1792,
           sub_1f285106[arg1].field_2048,
           sub_1f285106[arg1].field_2304,
           sub_1f285106[arg1].field_2560,
           bool(sub_1f285106[arg1].field_2816)
}

function sub_36eba48a(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function sub_3a2a80c7(?) {
    return sub_3a2a80c7
}

function isLeverageEnabled() {
    return bool(isLeverageEnabled)
}

function weth() {
    return wethAddress
}

function sub_4278555f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4278555f.length
    return sub_4278555f[arg1]
}

function sub_5841fcaa(?) {
    return sub_5841fcaa
}

function sub_633451de(?) {
    require calldata.size - 4 >= 32
    return sub_633451de[arg1]
}

function sub_63ae2103(?) {
    return sub_63ae2103
}

function depositFee() {
    return depositFee
}

function sub_9698d25a(?) {
    require calldata.size - 4 >= 32
    return sub_9698d25a[arg1]
}

function sub_98d1e03a(?) {
    return sub_98d1e03a
}

function sub_9b578620(?) {
    return sub_9b578620
}

function sub_cb0269c9(?) {
    return sub_cb0269c9
}

function admin() {
    return adminAddress
}

function router() {
    return routerAddress
}

function sub_fa444577(?) {
    require calldata.size - 4 >= 32
    return sub_fa444577[arg1]
}

function sub_faf990f3(?) {
    require calldata.size - 4 >= 32
    return sub_faf990f3[arg1].field_0, 
           sub_faf990f3[arg1].field_512,
           sub_faf990f3[arg1].field_768,
           sub_faf990f3[arg1].field_1024,
           sub_faf990f3[arg1].field_1280,
           bool(sub_faf990f3[arg1].field_1536),
           sub_faf990f3[arg1].field_1792,
           sub_faf990f3[arg1].field_2048,
           sub_faf990f3[arg1].field_2304,
           sub_faf990f3[arg1].field_2560,
           bool(sub_faf990f3[arg1].field_2816)
}

function vault() {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_62f8a3fe(?) {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function sub_f2cea6a5(?) {
    return sub_9b578620, sub_04225954.length, sub_1bca8cf0, sub_4278555f.length
}

function setGov(address arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'eGovernable: forbidden'
    govAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'eGovernable: forbidden'
    adminAddress = arg1
    emit SetAdmin(arg1);
}

function sub_233bfe3b(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    sub_98d1e03a = arg1
    emit 0x21167d0d: arg1
}

function sub_ae4d7f9a(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    sub_006cc35eAddress = arg1
    emit 0x828abccc: arg1
}

function setDepositFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    depositFee = arg1
    emit SetDepositFee(arg1);
}

function setMinExecutionFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    sub_63ae2103 = arg1
    emit 0x52a83584: arg1
}

function sub_3422ead1(?) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    stor21[address(arg1)] = uint8(arg2)
    emit 0xfbabc023: arg2, arg1
}

function setIsLeverageEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    isLeverageEnabled = uint8(arg1)
    emit 0x4eb87a59: arg1
}

function sub_308aa81f(?) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    sub_9b578620 = arg1
    sub_1bca8cf0 = arg2
    emit 0xebb0f666: arg1, arg2
}

function sub_4067b132(?) {
    require calldata.size - 4 >= 96
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    sub_5841fcaa = arg1
    sub_3a2a80c7 = arg2
    sub_cb0269c9 = arg3
    emit 0xb98e7597: arg1, arg2, arg3
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if govAddress != msg.sender:
        revert with 0, 'eGovernable: forbidden'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_95e9bbd7(?) {
    require calldata.size - 4 >= 32
    if sub_faf990f3[arg1].field_256:
        mem[896] = sub_faf990f3[arg1][1].field_0
        idx = 896
        s = 0
        while (32 * sub_faf990f3[arg1].field_256) + 864 > idx:
            mem[idx + 32] = sub_faf990f3[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_faf990f3[arg1].field_256) + 960 len floor32(sub_faf990f3[arg1].field_256)] = mem[896 len floor32(sub_faf990f3[arg1].field_256)]
    return Array(len=sub_faf990f3[arg1].field_256, data=mem[896 len floor32(sub_faf990f3[arg1].field_256)], mem[(32 * sub_faf990f3[arg1].field_256) + floor32(sub_faf990f3[arg1].field_256) + 960 len (32 * sub_faf990f3[arg1].field_256) - floor32(sub_faf990f3[arg1].field_256)]), 
}

function sub_5d5c22e8(?) {
    require calldata.size - 4 >= 32
    if sub_1f285106[arg1].field_256:
        mem[960] = sub_1f285106[arg1][1].field_0
        idx = 960
        s = 0
        while (32 * sub_1f285106[arg1].field_256) + 928 > idx:
            mem[idx + 32] = sub_1f285106[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_1f285106[arg1].field_256) + 1024 len floor32(sub_1f285106[arg1].field_256)] = mem[960 len floor32(sub_1f285106[arg1].field_256)]
    return Array(len=sub_1f285106[arg1].field_256, data=mem[960 len floor32(sub_1f285106[arg1].field_256)], mem[(32 * sub_1f285106[arg1].field_256) + floor32(sub_1f285106[arg1].field_256) + 1024 len (32 * sub_1f285106[arg1].field_256) - floor32(sub_1f285106[arg1].field_256)]), 
}

function sendValue(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if govAddress != msg.sender:
        revert with 0, 'eGovernable: forbidden'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x68416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x68416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
}

function withdrawFees(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    if feeReserves[address(arg1)].field_0:
        feeReserves[address(arg1)].field_0 = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c00, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, feeReserves[address(arg1)].field_32
        call arg1 with:
             gas gas_remaining wei
            args feeReserves[address(arg1)].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transfer(address arg1, uint256 arg2), address(arg2) << 64, 0, feeReserves[address(arg1)].field_0
            if not transfer(address arg1, uint256 arg2), address(arg2) << 64:
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
        emit WithdrawFees(address(arg1), address(arg2), feeReserves[address(arg1)].field_0);
}

function sub_ef12c67e(?) {
    require calldata.size - 4 >= 96
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
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    if adminAddress != msg.sender:
        revert with 0, 'tBasePositionManager: forbidden'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        sub_1045c74e[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        sub_9698d25a[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        idx = idx + 1
        continue 
    s = 0
    while arg1.length < 32 * arg1.length:
        mem[(34 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = mem[arg1.length + 128]
        s = arg1.length + 32
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = arg2.length
    mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 352] = arg3.length
    mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 384 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit 0xae32d569: Array(len=arg1.length, data=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320 len (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 64]), (32 * arg1.length) + 128, (32 * arg2.length) + (32 * arg1.length) + 160
}

function sub_f3883d8b(?) {
    require calldata.size - 4 >= 64
    if not stor21[msg.sender]:
        revert with 0, 'hPositionRouter: forbidden'
    if sub_1bca8cf0 < sub_4278555f.length:
        if arg1 <= sub_4278555f.length:
            idx = sub_1bca8cf0
            while idx < arg1:
                require idx < sub_4278555f.length
                mem[100] = sub_4278555f[idx]
                mem[132] = arg2
                require ext_code.size(this.address)
                call this.address.0xd4d003d with:
                     gas gas_remaining wei
                    args sub_4278555f[idx], arg2
                mem[96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_1bca8cf0 = idx
                else:
                    mem[100] = sub_4278555f[idx]
                    mem[132] = arg2
                    require ext_code.size(this.address)
                    call this.address.0x60a362e2 with:
                         gas gas_remaining wei
                        args sub_4278555f[idx], arg2
                    mem[96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_1bca8cf0 = idx
                require idx < sub_4278555f.length
                mem[0] = 18
                sub_4278555f[idx] = 0
                idx = idx + 1
                continue 
        else:
            idx = sub_1bca8cf0
            while idx < sub_4278555f.length:
                mem[100] = sub_4278555f[idx]
                mem[132] = arg2
                require ext_code.size(this.address)
                call this.address.0xd4d003d with:
                     gas gas_remaining wei
                    args sub_4278555f[idx], arg2
                mem[96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_1bca8cf0 = idx
                else:
                    mem[100] = sub_4278555f[idx]
                    mem[132] = arg2
                    require ext_code.size(this.address)
                    call this.address.0x60a362e2 with:
                         gas gas_remaining wei
                        args sub_4278555f[idx], arg2
                    mem[96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_1bca8cf0 = idx
                require idx < sub_4278555f.length
                mem[0] = 18
                sub_4278555f[idx] = 0
                idx = idx + 1
                continue 
        sub_1bca8cf0 = idx
}

function sub_9a208100(?) {
    require calldata.size - 4 >= 64
    if not stor21[msg.sender]:
        revert with 0, 'hPositionRouter: forbidden'
    if sub_9b578620 < sub_04225954.length:
        if arg1 <= sub_04225954.length:
            idx = sub_9b578620
            while idx < arg1:
                require idx < sub_04225954.length
                mem[100] = sub_04225954[idx]
                mem[132] = arg2
                require ext_code.size(this.address)
                call this.address.0x27b42c0f with:
                     gas gas_remaining wei
                    args sub_04225954[idx], arg2
                mem[96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_9b578620 = idx
                else:
                    mem[100] = sub_04225954[idx]
                    mem[132] = arg2
                    require ext_code.size(this.address)
                    call this.address.0x225fc9fd with:
                         gas gas_remaining wei
                        args sub_04225954[idx], arg2
                    mem[96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_9b578620 = idx
                require idx < sub_04225954.length
                mem[0] = 17
                sub_04225954[idx] = 0
                idx = idx + 1
                continue 
        else:
            idx = sub_9b578620
            while idx < sub_04225954.length:
                mem[100] = sub_04225954[idx]
                mem[132] = arg2
                require ext_code.size(this.address)
                call this.address.0x27b42c0f with:
                     gas gas_remaining wei
                    args sub_04225954[idx], arg2
                mem[96] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        sub_9b578620 = idx
                else:
                    mem[100] = sub_04225954[idx]
                    mem[132] = arg2
                    require ext_code.size(this.address)
                    call this.address.0x225fc9fd with:
                         gas gas_remaining wei
                        args sub_04225954[idx], arg2
                    mem[96] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            sub_9b578620 = idx
                require idx < sub_04225954.length
                mem[0] = 17
                sub_04225954[idx] = 0
                idx = idx + 1
                continue 
        sub_9b578620 = idx
}

function sub_e70dd2fc(?) payable {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if arg9 < sub_63ae2103:
        revert with 0, 
                    32,
                    36,
                    0x64506f736974696f6e526f757465723a20696e76616c696420657865637574696f6e4665,
                    mem[(32 * arg1.length) + 232 len 28]
    if arg9 != msg.value:
        revert with 0, 32, 33, 0x506f736974696f6e526f757465723a20696e76616c6964206d73672e76616c7500, mem[(32 * arg1.length) + 229 len 31]
    if arg1.length != 1:
        if arg1.length != 2:
            revert with 0, 
                        32,
                        36,
                        0x74506f736974696f6e526f757465723a20696e76616c6964205f70617468206c656e6774,
                        mem[(32 * arg1.length) + 232 len 28]
    if arg10:
        require arg1.length - 1 < arg1.length
        if mem[(32 * arg1.length - 1) + 140 len 20] != wethAddress:
            revert with 0, 'dPositionRouter: invalid _path'
    if msg.value:
        require ext_code.size(wethAddress)
        call wethAddress.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_fa444577[address(msg.sender)] + 1 < sub_fa444577[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_fa444577[address(msg.sender)]++
    mem[(32 * arg1.length) + 128] = 0
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_0 = msg.sender
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_256 > idx:
            sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_256 > idx:
            sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_512 = arg2
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_768 = arg3
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_1024 = arg4
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_1280 = uint8(arg5)
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_1288 = arg6
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_1536 = arg7
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_1792 = arg8
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_2048 = arg9
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_2304 = block.number
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_2560 = block.timestamp
    sub_1f285106[msg.sender][stor24[address(msg.sender)] + 1].field_2816 = uint8(arg10)
    sub_4278555f.length++
    sub_4278555f[sub_4278555f.length] = sha3(msg.sender, sub_fa444577[address(msg.sender)] + 1)
    mem[(32 * arg1.length) + 1460 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0x506f2634: Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 1460 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), arg3, arg4, arg5, address(arg6), arg7, arg8, arg9, sub_fa444577[address(msg.sender)] + 1, block.number, block.timestamp, msg.sender
    stor0 = 1
}

function sub_332e0382(?) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if arg7 < sub_63ae2103:
        revert with 0, 
                    32,
                    36,
                    0x64506f736974696f6e526f757465723a20696e76616c696420657865637574696f6e4665,
                    mem[(32 * arg1.length) + 232 len 28]
    if msg.value < arg7:
        revert with 0, 32, 33, 0x506f736974696f6e526f757465723a20696e76616c6964206d73672e76616c7500, mem[(32 * arg1.length) + 229 len 31]
    if arg1.length != 1:
        if arg1.length != 2:
            revert with 0, 
                        32,
                        36,
                        0x74506f736974696f6e526f757465723a20696e76616c6964205f70617468206c656e6774,
                        mem[(32 * arg1.length) + 232 len 28]
    require arg1.length
    if mem[140 len 20] != wethAddress:
        revert with 0, 'dPositionRouter: invalid _path'
    if msg.value:
        require ext_code.size(wethAddress)
        call wethAddress.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg8:
        if sub_006cc35eAddress:
            require ext_code.size(sub_006cc35eAddress)
            call sub_006cc35eAddress.0x56b4b2ad with:
                 gas gas_remaining wei
                args msg.sender, arg8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128] = 30
    if arg7 > msg.value:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_633451de[address(msg.sender)] + 1 < sub_633451de[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_633451de[address(msg.sender)]++
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_0 = msg.sender
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_512 = arg2
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_768 = msg.value - arg7
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1024 = arg3
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1280 = arg4
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1536 = uint8(arg5)
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1792 = arg6
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2048 = arg7
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2304 = block.number
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2560 = block.timestamp
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2816 = 1
    sub_04225954.length++
    sub_04225954[sub_04225954.length] = sha3(msg.sender, sub_633451de[address(msg.sender)] + 1)
    mem[(32 * arg1.length) + 1460 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0xa89f00a1: Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 1460 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), msg.value - arg7, arg3, arg4, arg5, arg6, arg7, sub_633451de[address(msg.sender)] + 1, block.number, block.timestamp, block.gasprice, msg.sender
    stor0 = 1
}

function sub_c9874170(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if arg8 < sub_63ae2103:
        revert with 0, 
                    32,
                    36,
                    0x64506f736974696f6e526f757465723a20696e76616c696420657865637574696f6e4665,
                    mem[(32 * arg1.length) + 232 len 28]
    if arg8 != msg.value:
        revert with 0, 32, 33, 0x506f736974696f6e526f757465723a20696e76616c6964206d73672e76616c7500, mem[(32 * arg1.length) + 229 len 31]
    if arg1.length != 1:
        if arg1.length != 2:
            revert with 0, 
                        32,
                        36,
                        0x74506f736974696f6e526f757465723a20696e76616c6964205f70617468206c656e6774,
                        mem[(32 * arg1.length) + 232 len 28]
    if msg.value:
        mem[(32 * arg1.length) + 128] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(wethAddress)
        call wethAddress.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg9:
        if sub_006cc35eAddress:
            mem[(32 * arg1.length) + 128] = 0x56b4b2ad00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            require ext_code.size(sub_006cc35eAddress)
            call sub_006cc35eAddress.0x56b4b2ad with:
                 gas gas_remaining wei
                args msg.sender, arg9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require arg1.length
        require ext_code.size(routerAddress)
        call routerAddress.pluginTransfer(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args address(mem[128]), msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if sub_633451de[address(msg.sender)] + 1 < sub_633451de[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_633451de[address(msg.sender)]++
    mem[(32 * arg1.length) + 128] = 0
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_0 = msg.sender
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_256 > idx:
            sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_512 = arg2
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_768 = arg3
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1024 = arg4
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1280 = arg5
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1536 = uint8(arg6)
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_1792 = arg7
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2048 = arg8
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2304 = block.number
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2560 = block.timestamp
    sub_faf990f3[msg.sender][stor22[address(msg.sender)] + 1].field_2816 = 0
    sub_04225954.length++
    sub_04225954[sub_04225954.length] = sha3(msg.sender, sub_633451de[address(msg.sender)] + 1)
    mem[(32 * arg1.length) + 1396 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit 0xa89f00a1: Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 1396 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2), arg3, arg4, arg5, arg6, arg7, arg8, sub_633451de[address(msg.sender)] + 1, block.number, block.timestamp, block.gasprice, msg.sender
    stor0 = 1
}

function sub_60a362e2(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'eReentrancyGuard: reentrant call'
    stor0 = 2
    if sub_1f285106[arg1].field_256:
        mem[960] = sub_1f285106[arg1][1].field_0
        idx = 960
        s = 0
        while (32 * sub_1f285106[arg1].field_256) + 928 > idx:
            mem[idx + 32] = sub_1f285106[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if sub_1f285106[arg1].field_0:
        if this.address == msg.sender:
            if not isLeverageEnabled:
                if msg.sender != this.address:
                    revert with 0, 'hPositionRouter: forbidden'
                if sub_5841fcaa + sub_1f285106[arg1].field_2304 < sub_1f285106[arg1].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_5841fcaa + sub_1f285106[arg1].field_2304 > block.number:
                    stor0 = 1
                    return 0
            else:
                if this.address == msg.sender:
                    if sub_5841fcaa + sub_1f285106[arg1].field_2304 < sub_1f285106[arg1].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_5841fcaa + sub_1f285106[arg1].field_2304 > block.number:
                        stor0 = 1
                        return 0
                else:
                    if sub_1f285106[arg1].field_0 != msg.sender:
                        revert with 0, 'hPositionRouter: forbidden'
                    if sub_3a2a80c7 + sub_1f285106[arg1].field_2560 < sub_1f285106[arg1].field_2560:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_3a2a80c7 + sub_1f285106[arg1].field_2560 > block.timestamp:
                        revert with 0, 
                                    32,
                                    40,
                                    0x74506f736974696f6e526f757465723a206d696e2064656c6179206e6f7420796574207061737365,
                                    mem[(32 * sub_1f285106[arg1].field_256) + 1068 len 24]
        else:
            if not isLeverageEnabled:
                if not stor21[msg.sender]:
                    revert with 0, 'hPositionRouter: forbidden'
                if sub_5841fcaa + sub_1f285106[arg1].field_2304 < sub_1f285106[arg1].field_2304:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_5841fcaa + sub_1f285106[arg1].field_2304 > block.number:
                    stor0 = 1
                    return 0
            else:
                if stor21[msg.sender]:
                    if sub_5841fcaa + sub_1f285106[arg1].field_2304 < sub_1f285106[arg1].field_2304:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_5841fcaa + sub_1f285106[arg1].field_2304 > block.number:
                        stor0 = 1
                        return 0
                else:
                    if sub_1f285106[arg1].field_0 != msg.sender:
                        revert with 0, 'hPositionRouter: forbidden'
                    if sub_3a2a80c7 + sub_1f285106[arg1].field_2560 < sub_1f285106[arg1].field_2560:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_3a2a80c7 + sub_1f285106[arg1].field_2560 > block.timestamp:
                        revert with 0, 
                                    32,
                                    40,
                                    0x74506f736974696f6e526f757465723a206d696e2064656c6179206e6f7420796574207061737365,
                                    mem[(32 * sub_1f285106[arg1].field_256) + 1068 len 24]
        sub_1f285106[arg1].field_0 = 0
        sub_1f285106[arg1].field_256 = 0
        idx = 0
        while sub_1f285106[arg1].field_256 > idx:
            sub_1f285106[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        sub_1f285106[arg1].field_512 = 0
        sub_1f285106[arg1].field_768 = 0
        sub_1f285106[arg1].field_1024 = 0
        sub_1f285106[arg1].field_1280 = 0
        sub_1f285106[arg1].field_1536 = 0
        sub_1f285106[arg1].field_1792 = 0
        sub_1f285106[arg1].field_2048 = 0
        sub_1f285106[arg1].field_2304 = 0
        sub_1f285106[arg1].field_2560 = 0
        sub_1f285106[arg1].field_2816 = 0
        require ext_code.size(wethAddress)
        call wethAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args sub_1f285106[arg1].field_2048
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < sub_1f285106[arg1].field_2048:
            revert with 0, 'Address: insufficient balance'
        call arg2 with:
           value sub_1f285106[arg1].field_2048 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x68416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[(32 * sub_1f285106[arg1].field_256) + 1086 len 6]
            if sub_1f285106[arg1].field_2304 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1f285106[arg1].field_2560 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(32 * sub_1f285106[arg1].field_256) + 1472 len floor32(sub_1f285106[arg1].field_256)] = mem[960 len floor32(sub_1f285106[arg1].field_256)]
            emit 0x87abfd78: Array(len=sub_1f285106[arg1].field_256, data=mem[960 len floor32(sub_1f285106[arg1].field_256)], mem[(32 * sub_1f285106[arg1].field_256) + floor32(sub_1f285106[arg1].field_256) + 1472 len (32 * sub_1f285106[arg1].field_256) - floor32(sub_1f285106[arg1].field_256)]), sub_1f285106[arg1].field_512, sub_1f285106[arg1].field_768, sub_1f285106[arg1].field_1024, bool(sub_1f285106[arg1].field_1280), sub_1f285106[arg1].field_1280, sub_1f285106[arg1].field_1536, sub_1f285106[arg1].field_1792, sub_1f285106[arg1].field_2048, block.number - sub_1f285106[arg1].field_2304, block.timestamp - sub_1f285106[arg1].field_2560, sub_1f285106[arg1].field_0
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x68416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[(32 * sub_1f285106[arg1].field_256) + ceil32(return_data.size) + 1087 len 6]
            if sub_1f285106[arg1].field_2304 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_1f285106[arg1].field_2560 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[(32 * sub_1f285106[arg1].field_256) + ceil32(return_data.size) + 1473 len floor32(sub_1f285106[arg1].field_256)] = mem[960 len floor32(sub_1f285106[arg1].field_256)]
            emit 0x87abfd78: Array(len=sub_1f285106[arg1].field_256, data=mem[960 len floor32(sub_1f285106[arg1].field_256)], mem[(32 * sub_1f285106[arg1].field_256) + ceil32(return_data.size) + floor32(sub_1f285106[arg1].field_256) + 1473 len (32 * sub_1f285106[arg1].field_256) - floor32(sub_1f285106[arg1].field_256)]), sub_1f285106[arg1].field_512, sub_1f285106[arg1].field_768, sub_1f285106[arg1].field_1024, bool(sub_1f285106[arg1].field_1280), sub_1f285106[arg1].field_1280, sub_1f285106[arg1].field_1536, sub_1f285106[arg1].field_1792, sub_1f285106[arg1].field_2048, block.number - sub_1f285106[arg1].field_2304, block.timestamp - sub_1f285106[arg1].field_2560, sub_1f285106[arg1].field_0
    stor0 = 1
    return 1
}



}
