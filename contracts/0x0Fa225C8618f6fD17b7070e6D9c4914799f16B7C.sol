contract main {




// =====================  Runtime code  =====================


const version = 1


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of address sub_8adb1ba8;
mapping of address sub_a7465bdb;
mapping of uint256 sub_4e204cf5;
mapping of struct sub_a4c4a73e;
mapping of uint256 sub_35cfffc6;
mapping of uint256 sub_1696c7ac;
mapping of uint256 sub_23229c79;
mapping of uint8 stor108;
mapping of uint8 stor109;
array of struct sub_89c8aa62;
uint8 sub_c1fd2402;
uint256 sub_6699b459;
uint256 fixedFee;
array of struct stor114;
mapping of uint256 stor115;
array of address sub_89f73520;
array of struct stor117;
array of address stor11591756326471999264895421442065030704299572019615264954066775150057963321363;

function sub_1696c7ac(?) {
    require calldata.size - 4 >= 32
    return sub_1696c7ac[arg1]
}

function sub_23229c79(?) {
    require calldata.size - 4 >= 64
    return sub_23229c79[arg1][arg2]
}

function sub_25d6fa86(?) {
    require calldata.size - 4 >= 32
    return bool(sub_4e204cf5[address(arg1)])
}

function sub_35cfffc6(?) {
    require calldata.size - 4 >= 32
    return sub_35cfffc6[arg1]
}

function sub_4af13860(?) {
    require calldata.size - 4 >= 32
    return bool(stor108[arg1])
}

function sub_4e204cf5(?) {
    require calldata.size - 4 >= 32
    return sub_4e204cf5[arg1]
}

function sub_6699b459(?) {
    return sub_6699b459
}

function getTokenCount() {
    return sub_89f73520.length
}

function sub_89c8aa62(?) {
    require calldata.size - 4 >= 64
    if arg2 >= sub_89c8aa62[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_89c8aa62[address(arg1)][arg2].field_0
}

function sub_89f73520(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_89f73520.length
    return sub_89f73520[arg1]
}

function sub_8adb1ba8(?) {
    require calldata.size - 4 >= 32
    return sub_8adb1ba8[arg1]
}

function owner() {
    return owner
}

function fixedFee() {
    return fixedFee
}

function paid(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor109[arg1])
}

function sub_a4c4a73e(?) {
    require calldata.size - 4 >= 32
    return sub_a4c4a73e[arg1].field_0, sub_a4c4a73e[arg1].field_256
}

function sub_a7465bdb(?) {
    require calldata.size - 4 >= 32
    return sub_a7465bdb[arg1]
}

function sub_c1fd2402(?) {
    return bool(sub_c1fd2402)
}

function sub_d762f6d9(?) {
    require calldata.size - 4 >= 32
    return sub_89c8aa62[address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function sub_9a493aca(?) {
    if owner != msg.sender:
        return 0
    return stor114.length
}

function isBlackListed(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        return 0
    return bool(stor115[address(arg1)])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1df79952(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_6699b459 = arg1
}

function setFixedFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    fixedFee = arg1
}

function sub_e70f29aa(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_c1fd2402 = uint8(arg1)
}

function sub_a8ab28c3(?) {
    require calldata.size - 4 >= 32
    if sub_4e204cf5[address(arg1)]:
        return (block.number - sub_4e204cf5[address(arg1)])
    else:
        return 0
}

function sub_b1be3c00(?) {
    require calldata.size - 4 >= 32
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            return 0
    return stor117[address(arg1)].field_0
}

function sub_36446335(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        return 0
    if arg1 >= stor114.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return stor114[arg1].field_0
}

function sub_1023e47f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        return bool(ext_call.return_data[18 len 14])
    return bool(ext_call.return_data[50 len 14])
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x774f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a6e75e0c(?) {
    require calldata.size - 4 >= 64
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            return 0
    if arg2 >= stor117[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x79456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return stor117[address(arg1)][arg2].field_0
}

function sub_6c5651dc(?) {
    if owner != msg.sender:
        return ''
    require stor114.length <= test266151307()
    if stor114.length:
        mem[128 len 32 * stor114.length] = call.data[calldata.size len 32 * stor114.length]
    idx = 0
    while idx < stor114.length:
        mem[0] = 114
        require idx < stor114.length
        mem[(32 * idx) + 128] = stor114[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor114.length) + 192 len floor32(stor114.length)] = mem[128 len floor32(stor114.length)]
    return Array(len=stor114.length, data=mem[128 len floor32(stor114.length)], mem[(32 * stor114.length) + floor32(stor114.length) + 192 len (32 * stor114.length) - floor32(stor114.length)]), 
}

function addToBlackList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 115
        if not stor115[mem[(32 * idx) + 140 len 20]]:
            stor114.length++
            stor114[stor114.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor114[stor114.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 115
            stor115[address(mem[(32 * idx) + 128])] = stor114.length
        idx = idx + 1
        continue 
}

function claim() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x74416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x74416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
}

function sub_2926e227(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 115
        if stor115[mem[(32 * idx) + 140 len 20]]:
            require stor114.length - 1 < stor114.length
            require stor115[mem[(32 * idx) + 140 len 20]] - 1 < stor114.length
            stor114[stor115[mem[(32 * idx) + 140 len 20]]].field_0 = stor114[stor114.length].field_0
            stor115[stor114[stor114.length].field_0] = stor115[mem[(32 * idx) + 140 len 20]]
            require stor114.length
            stor114[stor114.length].field_0 = 0
            stor114.length--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 115
            stor115[address(mem[(32 * idx) + 128])] = 0
        idx = idx + 1
        continue 
}

function sub_a6dc4e15(?) {
    require calldata.size - 4 >= 32
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            return ''
    require stor117[address(arg1)].field_0 <= test266151307()
    if stor117[address(arg1)].field_0:
        mem[128 len 32 * stor117[address(arg1)].field_0] = call.data[calldata.size len 32 * stor117[address(arg1)].field_0]
    idx = 0
    while idx < stor117[address(arg1)].field_0:
        mem[32] = 117
        if idx >= stor117[address(arg1)].field_0:
            revert with 0, 
                        32,
                        34,
                        0x79456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor117[address(arg1)].field_0) + 230 len 30]
        mem[0] = sha3(address(arg1), 117)
        require idx < stor117[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor117[address(arg1)][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor117[address(arg1)].field_0) + 192 len floor32(stor117[address(arg1)].field_0)] = mem[128 len floor32(stor117[address(arg1)].field_0)]
    return Array(len=stor117[address(arg1)].field_0, data=mem[128 len floor32(stor117[address(arg1)].field_0)], mem[(32 * stor117[address(arg1)].field_0) + floor32(stor117[address(arg1)].field_0) + 192 len (32 * stor117[address(arg1)].field_0) - floor32(stor117[address(arg1)].field_0)]), 
}

function sub_dbe8ffc7(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 
                        32,
                        51,
                        0x6450696e6b416e7469426f743a204e6f7420746f6b656e206f776e6572206f722070696e6b20616e746920626f74206f776e65,
                        mem[(32 * arg2.length) + 247 len 13]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 117) + 1
        if not stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0:
            stor117[address(arg1)].field_0++
            stor117[address(arg1)][stor117[address(arg1)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
            stor117[address(arg1)][stor117[address(arg1)].field_0].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(arg1), 117) + 1
            stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0 = stor117[address(arg1)].field_0
        idx = idx + 1
        continue 
}

function getAllTokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require sub_89c8aa62[address(arg1)].field_0 <= test266151307()
    if sub_89c8aa62[address(arg1)].field_0:
        mem[128 len 32 * sub_89c8aa62[address(arg1)].field_0] = call.data[calldata.size len 32 * sub_89c8aa62[address(arg1)].field_0]
    idx = 0
    while idx < sub_89c8aa62[address(arg1)].field_0:
        mem[32] = 110
        if idx >= sub_89c8aa62[address(arg1)].field_0:
            revert with 0, 
                        32,
                        34,
                        0x79456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * sub_89c8aa62[address(arg1)].field_0) + 230 len 30]
        mem[0] = sha3(address(arg1), 110)
        require idx < sub_89c8aa62[address(arg1)].field_0
        mem[(32 * idx) + 128] = sub_89c8aa62[address(arg1)][idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * sub_89c8aa62[address(arg1)].field_0) + 192 len floor32(sub_89c8aa62[address(arg1)].field_0)] = mem[128 len floor32(sub_89c8aa62[address(arg1)].field_0)]
    return Array(len=sub_89c8aa62[address(arg1)].field_0, data=mem[128 len floor32(sub_89c8aa62[address(arg1)].field_0)], mem[(32 * sub_89c8aa62[address(arg1)].field_0) + floor32(sub_89c8aa62[address(arg1)].field_0) + 192 len (32 * sub_89c8aa62[address(arg1)].field_0) - floor32(sub_89c8aa62[address(arg1)].field_0)]), 
}

function setEnabled(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        revert with 0, 'PinkAntiBot: Not token owner'
    if arg2:
        if not stor109[address(arg1)]:
            if msg.value < fixedFee:
                revert with 0, 'PinkAntiBot: Fee'
            stor109[address(arg1)] = 1
            sub_89f73520.length++
            stor19A0[stor116.length] = arg1
        if not sub_a7465bdb[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x7250696e6b416e7469426f743a2050616972206e6f74207365742e2055736520736574436f6e666967282920746f2073657420706169,
                        mem[218 len 10]
        require ext_code.size(sub_a7465bdb[address(arg1)])
        staticcall sub_a7465bdb[address(arg1)].getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[18 len 14]:
            if ext_call.return_data[50 len 14]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe50696e6b416e7469426f743a20416c726561647920686173206c69717569646974,
                            mem[198 len 30]
    stor108[address(arg1)] = uint8(arg2)
}

function setTokenOwner(address arg1) {
    require calldata.size - 4 >= 32
    if sub_8adb1ba8[address(msg.sender)]:
        if sub_89c8aa62[stor101[address(msg.sender)]][1][address(msg.sender)].field_0:
            require sub_89c8aa62[stor101[address(msg.sender)]].field_0 - 1 < sub_89c8aa62[stor101[address(msg.sender)]].field_0
            require sub_89c8aa62[stor101[address(msg.sender)]][1][address(msg.sender)].field_0 - 1 < sub_89c8aa62[stor101[address(msg.sender)]].field_0
            sub_89c8aa62[stor101[address(msg.sender)]][sub_89c8aa62[stor101[address(msg.sender)]][1][address(msg.sender)].field_0].field_0 = sub_89c8aa62[stor101[address(msg.sender)]][sub_89c8aa62[stor101[address(msg.sender)]].field_0].field_0
            sub_89c8aa62[stor101[address(msg.sender)]][1][sub_89c8aa62[stor101[address(msg.sender)]][sub_89c8aa62[stor101[address(msg.sender)]].field_0].field_0].field_0 = sub_89c8aa62[stor101[address(msg.sender)]][1][address(msg.sender)].field_0
            require sub_89c8aa62[stor101[address(msg.sender)]].field_0
            sub_89c8aa62[stor101[address(msg.sender)]][sub_89c8aa62[stor101[address(msg.sender)]].field_0].field_0 = 0
            sub_89c8aa62[stor101[address(msg.sender)]].field_0--
            sub_89c8aa62[stor101[address(msg.sender)]][1][address(msg.sender)].field_0 = 0
    sub_8adb1ba8[address(msg.sender)] = arg1
    if not sub_89c8aa62[address(arg1)][1][address(msg.sender)].field_0:
        sub_89c8aa62[address(arg1)].field_0++
        sub_89c8aa62[address(arg1)][sub_89c8aa62[address(arg1)].field_0].field_0 = msg.sender
        sub_89c8aa62[address(arg1)][sub_89c8aa62[address(arg1)].field_0].field_160 = 0
        sub_89c8aa62[address(arg1)][1][address(msg.sender)].field_0 = sub_89c8aa62[address(arg1)].field_0
    emit 0xcedd24ab: msg.sender, sub_8adb1ba8[address(msg.sender)], arg1
}

function sub_2ab32792(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0, 
                        32,
                        51,
                        0x6450696e6b416e7469426f743a204e6f7420746f6b656e206f776e6572206f722070696e6b20616e746920626f74206f776e65,
                        mem[(32 * arg2.length) + 247 len 13]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(address(arg1), 117) + 1
        if stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0:
            require stor117[address(arg1)].field_0 - 1 < stor117[address(arg1)].field_0
            require stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0 - 1 < stor117[address(arg1)].field_0
            stor117[address(arg1)][stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0].field_0 = stor117[address(arg1)][stor117[address(arg1)].field_0].field_0
            stor117[address(arg1)][1][stor117[address(arg1)][stor117[address(arg1)].field_0].field_0].field_0 = stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0
            require stor117[address(arg1)].field_0
            stor117[address(arg1)][stor117[address(arg1)].field_0].field_0 = 0
            stor117[address(arg1)].field_0--
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(arg1), 117) + 1
            stor117[address(arg1)][1][address(mem[(32 * idx) + 128])].field_0 = 0
        idx = idx + 1
        continue 
}

function claimToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
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
}

function transferTokenOwner(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x6450696e6b416e7469426f743a204e6f7420746f6b656e206f776e6572206f722070696e6b20616e746920626f74206f776e65,
                        mem[215 len 13]
    if sub_8adb1ba8[address(arg1)]:
        if sub_89c8aa62[stor101[address(arg1)]][1][address(arg1)].field_0:
            require sub_89c8aa62[stor101[address(arg1)]].field_0 - 1 < sub_89c8aa62[stor101[address(arg1)]].field_0
            require sub_89c8aa62[stor101[address(arg1)]][1][address(arg1)].field_0 - 1 < sub_89c8aa62[stor101[address(arg1)]].field_0
            sub_89c8aa62[stor101[address(arg1)]][sub_89c8aa62[stor101[address(arg1)]][1][address(arg1)].field_0].field_0 = sub_89c8aa62[stor101[address(arg1)]][sub_89c8aa62[stor101[address(arg1)]].field_0].field_0
            sub_89c8aa62[stor101[address(arg1)]][1][sub_89c8aa62[stor101[address(arg1)]][sub_89c8aa62[stor101[address(arg1)]].field_0].field_0].field_0 = sub_89c8aa62[stor101[address(arg1)]][1][address(arg1)].field_0
            require sub_89c8aa62[stor101[address(arg1)]].field_0
            sub_89c8aa62[stor101[address(arg1)]][sub_89c8aa62[stor101[address(arg1)]].field_0].field_0 = 0
            sub_89c8aa62[stor101[address(arg1)]].field_0--
            sub_89c8aa62[stor101[address(arg1)]][1][address(arg1)].field_0 = 0
    sub_8adb1ba8[address(arg1)] = arg2
    if not sub_89c8aa62[address(arg2)][1][address(arg1)].field_0:
        sub_89c8aa62[address(arg2)].field_0++
        sub_89c8aa62[address(arg2)][sub_89c8aa62[address(arg2)].field_0].field_0 = arg1
        sub_89c8aa62[address(arg2)][sub_89c8aa62[address(arg2)].field_0].field_160 = 0
        sub_89c8aa62[address(arg2)][1][address(arg1)].field_0 = sub_89c8aa62[address(arg2)].field_0
    emit 0xcedd24ab: address(arg1), sub_8adb1ba8[address(arg1)], arg2
}

function sub_718f68a8(?) {
    require calldata.size - 4 >= 224
    if sub_8adb1ba8[address(arg1)] != msg.sender:
        revert with 0, 'PinkAntiBot: Not token owner'
    require ext_code.size(arg3)
    staticcall arg3.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(arg3)
        staticcall arg3.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[18 len 14]:
        if ext_call.return_data[50 len 14]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe50696e6b416e7469426f743a20416c726561647920686173206c69717569646974,
                        mem[198 len 30]
    sub_a7465bdb[address(arg1)] = address(ext_call.return_data[0])
    if arg7 <= sub_6699b459:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x7350696e6b416e7469426f743a204e756d626572206f6620626c6f636b20746f2064697361626c652070726f74656374696f6e20697320746f6f206c6f,
                    mem[225 len 3]
    sub_a4c4a73e[address(arg1)].field_0 = arg4
    sub_a4c4a73e[address(arg1)].field_256 = arg5
    sub_35cfffc6[address(arg1)] = arg6
    sub_1696c7ac[address(arg1)] = arg7
}

function initialize() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        sub_c1fd2402 = 1
        sub_6699b459 = 20
        fixedFee = 10^16
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            sub_c1fd2402 = 1
            sub_6699b459 = 20
            fixedFee = 10^16
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                sub_c1fd2402 = 1
                sub_6699b459 = 20
                fixedFee = 10^16
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    sub_c1fd2402 = 1
                    sub_6699b459 = 20
                    fixedFee = 10^16
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
                                        0x79496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        sub_c1fd2402 = 1
                        sub_6699b459 = 20
                        fixedFee = 10^16
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        sub_c1fd2402 = 1
                        sub_6699b459 = 20
                        fixedFee = 10^16
                        uint8(stor0.field_8) = 0
}

function onPreTransferCheck(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_c1fd2402:
        if stor108[msg.sender]:
            if sub_a7465bdb[address(msg.sender)] == arg1:
                if stor115[address(arg2)]:
                    revert with 0, 'PinkAntiBot: Blacklisted'
                if stor117[address(msg.sender)][1][address(arg2)].field_0:
                    revert with 0, 'PinkAntiBot: Blacklisted'
                if sub_a7465bdb[address(msg.sender)] == arg1:
                    if not sub_4e204cf5[address(msg.sender)]:
                        if sub_a7465bdb[address(msg.sender)] == arg2:
                            if arg3 > 0:
                                if not sub_4e204cf5[address(msg.sender)]:
                                    sub_4e204cf5[address(msg.sender)] = block.number
                    else:
                        if not sub_4e204cf5[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        43,
                                        0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                        mem[207 len 21]
                        if not block.number - sub_4e204cf5[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        43,
                                        0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                        mem[207 len 21]
                        if block.number - sub_4e204cf5[address(msg.sender)] < sub_1696c7ac[address(msg.sender)]:
                            if sub_23229c79[address(msg.sender)][address(arg2)] > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp - sub_23229c79[address(msg.sender)][address(arg2)] <= sub_35cfffc6[address(msg.sender)]:
                                revert with 0, 'PinkAntiBot: Timelock'
                            if not block.number - sub_4e204cf5[address(msg.sender)]:
                                if sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg3 > sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                            else:
                                if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) / block.number - sub_4e204cf5[address(msg.sender)] != sub_a4c4a73e[address(msg.sender)].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg3 > (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                            sub_23229c79[address(msg.sender)][address(arg2)] = block.timestamp
                else:
                    if sub_a7465bdb[address(msg.sender)] == arg2:
                        if not sub_4e204cf5[address(msg.sender)]:
                            if sub_a7465bdb[address(msg.sender)] == arg2:
                                if arg3 > 0:
                                    if not sub_4e204cf5[address(msg.sender)]:
                                        sub_4e204cf5[address(msg.sender)] = block.number
                        else:
                            if not sub_4e204cf5[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            43,
                                            0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                            mem[207 len 21]
                            if not block.number - sub_4e204cf5[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            43,
                                            0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                            mem[207 len 21]
                            if block.number - sub_4e204cf5[address(msg.sender)] < sub_1696c7ac[address(msg.sender)]:
                                if sub_23229c79[address(msg.sender)][address(arg2)] > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp - sub_23229c79[address(msg.sender)][address(arg2)] <= sub_35cfffc6[address(msg.sender)]:
                                    revert with 0, 'PinkAntiBot: Timelock'
                                if not block.number - sub_4e204cf5[address(msg.sender)]:
                                    if sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 > sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                                else:
                                    if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) / block.number - sub_4e204cf5[address(msg.sender)] != sub_a4c4a73e[address(msg.sender)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 > (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                                sub_23229c79[address(msg.sender)][address(arg2)] = block.timestamp
            else:
                if stor115[address(arg1)]:
                    revert with 0, 'PinkAntiBot: Blacklisted'
                if stor117[address(msg.sender)][1][address(arg1)].field_0:
                    revert with 0, 'PinkAntiBot: Blacklisted'
                if sub_a7465bdb[address(msg.sender)] == arg1:
                    if not sub_4e204cf5[address(msg.sender)]:
                        if sub_a7465bdb[address(msg.sender)] == arg2:
                            if arg3 > 0:
                                if not sub_4e204cf5[address(msg.sender)]:
                                    sub_4e204cf5[address(msg.sender)] = block.number
                    else:
                        if not sub_4e204cf5[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        43,
                                        0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                        mem[207 len 21]
                        if not block.number - sub_4e204cf5[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        43,
                                        0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                        mem[207 len 21]
                        if block.number - sub_4e204cf5[address(msg.sender)] < sub_1696c7ac[address(msg.sender)]:
                            if sub_23229c79[address(msg.sender)][address(arg1)] > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.timestamp - sub_23229c79[address(msg.sender)][address(arg1)] <= sub_35cfffc6[address(msg.sender)]:
                                revert with 0, 'PinkAntiBot: Timelock'
                            if not block.number - sub_4e204cf5[address(msg.sender)]:
                                if sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg3 > sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                            else:
                                if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) / block.number - sub_4e204cf5[address(msg.sender)] != sub_a4c4a73e[address(msg.sender)].field_256:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg3 > (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0:
                                    revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                            sub_23229c79[address(msg.sender)][address(arg1)] = block.timestamp
                else:
                    if sub_a7465bdb[address(msg.sender)] == arg2:
                        if not sub_4e204cf5[address(msg.sender)]:
                            if sub_a7465bdb[address(msg.sender)] == arg2:
                                if arg3 > 0:
                                    if not sub_4e204cf5[address(msg.sender)]:
                                        sub_4e204cf5[address(msg.sender)] = block.number
                        else:
                            if not sub_4e204cf5[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            43,
                                            0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                            mem[207 len 21]
                            if not block.number - sub_4e204cf5[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            43,
                                            0x6c50696e6b416e7469426f743a2053616d6520626c6f636b20617320616464696e67206c69717569646974,
                                            mem[207 len 21]
                            if block.number - sub_4e204cf5[address(msg.sender)] < sub_1696c7ac[address(msg.sender)]:
                                if sub_23229c79[address(msg.sender)][address(arg1)] > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp - sub_23229c79[address(msg.sender)][address(arg1)] <= sub_35cfffc6[address(msg.sender)]:
                                    revert with 0, 'PinkAntiBot: Timelock'
                                if not block.number - sub_4e204cf5[address(msg.sender)]:
                                    if sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 > sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                                else:
                                    if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) / block.number - sub_4e204cf5[address(msg.sender)] != sub_a4c4a73e[address(msg.sender)].field_256:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[293 len 31]
                                    if (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0 < sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg3 > (block.number * sub_a4c4a73e[address(msg.sender)].field_256) - (sub_4e204cf5[address(msg.sender)] * sub_a4c4a73e[address(msg.sender)].field_256) + sub_a4c4a73e[address(msg.sender)].field_0:
                                        revert with 0, 32, 40, 0x7350696e6b416e7469426f743a2045786365656473206d6178207472616e7366657220616d6f756e, mem[300 len 24]
                                sub_23229c79[address(msg.sender)][address(arg1)] = block.timestamp
}



}
