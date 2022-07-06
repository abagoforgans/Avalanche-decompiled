contract main {




// =====================  Runtime code  =====================


#
#  - sub_5400d639(?)
#  - sub_78430c51(?)
#  - sub_d215d981(?)
#
address owner;
address routerAddress;
address routerAddress;
address baseTokenAddress;
address ETHAddress;
address sub_c0b6201cAddress;
uint256 sub_43ff02f6;
array of uint256 sub_e4992e48;
mapping of uint8 stor8;
mapping of uint8 stor9;
array of address wallets;
uint256 sub_1ef782ba;
uint256 buyValue;
uint256 buyFee;
uint256 sellFee;
uint256 endingBalance;
uint256 mode;
uint8 stor17;
uint256 sub_adcdc67c;
uint256 sub_fce62d8f;
uint256 minLp;
uint8 stor21;
uint8 sub_a580e2c4;

function sub_1ef782ba(?) {
    return sub_1ef782ba
}

function mode() {
    return mode
}

function sellFee() {
    return sellFee
}

function routerAddress() {
    return routerAddress
}

function sub_40d1201c(?) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function sub_43ff02f6(?) {
    return sub_43ff02f6
}

function buyFee() {
    return buyFee
}

function wallets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < wallets.length
    return wallets[arg1]
}

function ETH() {
    return ETHAddress
}

function owner() {
    return owner
}

function buyValue() {
    return buyValue
}

function sub_9e31649a(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_a580e2c4(?) {
    return bool(sub_a580e2c4)
}

function sub_adcdc67c(?) {
    return sub_adcdc67c
}

function sub_b3f6490f(?) {
    return bool(stor17)
}

function endingBalance() {
    return endingBalance
}

function sub_c0b6201c(?) {
    return sub_c0b6201cAddress
}

function minLp() {
    return minLp
}

function baseToken() {
    return baseTokenAddress
}

function sub_e4992e48(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e4992e48.length
    return sub_e4992e48[arg1]
}

function router() {
    return routerAddress
}

function sub_fce62d8f(?) {
    return sub_fce62d8f
}

function _fallback() payable {
    revert
}

function sub_7e49098a(?) {
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    stor21 = 0
}

function sub_e093d17c(?) {
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    stor21 = 1
}

function depositEther() payable {
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 32, 26, 0xfe596f75206172656e277420636f6e7472616374206f776e65722e0000000000
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_71d5c08a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    stor9[address(arg1)] = 0
}

function sub_d2d3df15(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    stor9[address(arg1)] = 1
}

function withdrawEther() {
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 32, 26, 0xfe596f75206172656e277420636f6e7472616374206f776e65722e0000000000
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1b97acde(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'POwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function sub_803baf42(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 32, 26, 0xfe596f75206172656e277420636f6e7472616374206f776e65722e0000000000
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 32, 26, 0xfe596f75206172656e277420636f6e7472616374206f776e65722e0000000000
    require ext_code.size(arg2)
    if arg1 > 0:
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_696a5a81(?) {
    require calldata.size - 4 >= 320
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    mem[128 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[(32 * arg6.length) + 128] = arg7.length
    mem[(32 * arg6.length) + 160 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg6.length) + (32 * arg7.length) + 160] = 0
    if bool(stor9[msg.sender]) != 1:
        revert with 0, 32, 26, 0xfe596f75206172656e277420636f6e7472616374206f776e65722e0000000000
    if arg4 > 2:
        revert with 0, 'errou algo ai ein'
    if arg3 <= 0:
        revert with 0, 'errou algo ai ein'
    baseTokenAddress = arg1
    sub_c0b6201cAddress = arg2
    sub_43ff02f6 = arg3
    mode = arg4
    routerAddress = arg5
    routerAddress = arg5
    wallets.length = arg6.length
    if not arg6.length:
        idx = 0
        while wallets.length > idx:
            wallets[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg6.length) + 128 > idx:
            wallets[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while wallets.length > idx:
            wallets[idx] = 0
            idx = idx + 1
            continue 
    sub_e4992e48.length = arg7.length
    if not arg7.length:
        idx = 0
        while sub_e4992e48.length > idx:
            sub_e4992e48[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg6.length) + 160
        while (32 * arg6.length) + (32 * arg7.length) + 160 > idx:
            sub_e4992e48[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
        while sub_e4992e48.length > idx:
            sub_e4992e48[idx] = 0
            idx = idx + 1
            continue 
    ETHAddress = arg8
    minLp = arg9
    sub_a580e2c4 = uint8(arg10)
}

function sub_63e349d3(?) payable {
    require calldata.size - 4 >= 160
    if arg1 == arg4:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp
        mem[260] = 128
        mem[356] = 2
        mem[388 len 0] = None
        mem[192] = 228
        mem[64] = 452
        mem[228 len 28] = 0
        mem[224 len 4] = swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
        idx = 0
        while not idx:
            _56 = mem[64]
            _57 = mem[192]
            s = 224
            t = mem[64]
            idx = mem[192]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[192])] = mem[floor32(mem[192]) + -(mem[192] % 32) + 256 len mem[192] % 32] or Mask(8 * -(mem[192] % 32) + 32, -(8 * -(mem[192] % 32) + 32) + 256, mem[mem[64] + floor32(mem[192])])
            call arg3.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _57 + _56 + -mem[64] - 4]
            if return_data.size:
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_81] = return_data.size
                mem[_81 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = 0
                continue 
            idx = 1
            continue 
    else:
        mem[96] = 3
        mem[128] = arg4
        mem[160] = arg1
        mem[192] = arg2
        mem[260] = 0
        mem[324] = this.address
        mem[356] = block.timestamp
        mem[292] = 128
        mem[388] = 3
        mem[420 len 0] = None
        mem[224] = 260
        mem[64] = 516
        mem[260 len 28] = 0
        mem[256 len 4] = swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4)
        idx = 0
        while not idx:
            _54 = mem[64]
            _55 = mem[224]
            s = 256
            t = mem[64]
            idx = mem[224]
            while idx >= 32:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[224])] = mem[floor32(mem[224]) + -(mem[224] % 32) + 288 len mem[224] % 32] or Mask(8 * -(mem[224] % 32) + 32, -(8 * -(mem[224] % 32) + 32) + 256, mem[mem[64] + floor32(mem[224])])
            call arg3.mem[mem[64] len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _55 + _54 + -mem[64] - 4]
            if return_data.size:
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_80] = return_data.size
                mem[_80 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                idx = 0
                continue 
            idx = 1
            continue 
    return msg.value
}



}
