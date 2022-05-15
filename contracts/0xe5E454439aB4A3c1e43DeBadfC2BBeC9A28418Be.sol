contract main {




// =====================  Runtime code  =====================


#
#  - sub_1dff1031(?)
#  - executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5)
#
address owner;
address ADDRESSES_PROVIDER;
address LENDING_POOLAddress;
address sub_a0397cd5Address;
address cEtherAddress;
address sub_085684a2Address;
address WAVAXAddress;
address priceOracleAddress;
uint256 incentive;
array of address sub_447d10f1;
array of address stor15;

function ADDRESSES_PROVIDER() {
    return ADDRESSES_PROVIDER
}

function sub_085684a2(?) {
    return sub_085684a2Address
}

function incentive() {
    return incentive
}

function priceOracle() {
    return priceOracleAddress
}

function sub_447d10f1(?) {
    require calldata.size - 4 >= 96
    require arg3 < uint256(sub_447d10f1[arg1][arg2])
    return address(sub_447d10f1[arg1][arg2][arg3])
}

function CEther() {
    return cEtherAddress
}

function WAVAX() {
    return WAVAXAddress
}

function owner() {
    return owner
}

function sub_a0397cd5(?) {
    return sub_a0397cd5Address
}

function LENDING_POOL() {
    return LENDING_POOLAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1af3a18a(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uint256(sub_447d10f1[address(cd[4])][address(cd[36])]) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(sub_447d10f1[address(cd[4])][address(cd[36])]) > idx:
            address(sub_447d10f1[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            address(sub_447d10f1[address(cd[4])][address(cd[36])][s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(sub_447d10f1[address(cd[4])][address(cd[36])]) > idx:
            address(sub_447d10f1[address(cd[4])][address(cd[36])][idx]) = 0
            idx = idx + 1
            continue 
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogWithdraw(eth.balance(this.address), msg.sender, arg1);
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit LogWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function sub_45c4bbfb(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
                if not ('cd', 4).length:
                    require ('cd', 4).length <= test266151307()
                    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                    mem[64] = (164 * ('cd', 4).length) + 256
                    if not ('cd', 4).length:
                        idx = 0
                        while idx < ('cd', 4).length:
                            _3491 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_3491 len 128] = call.data[calldata.size len 128]
                            s = 0
                            while s < stor15.length:
                                mem[0] = 15
                                require ext_code.size(stor15[s])
                                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                        gas gas_remaining wei
                                       args address(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 128
                                require ext_code.size(sub_a0397cd5Address)
                                staticcall sub_a0397cd5Address.markets(address arg1) with:
                                        gas gas_remaining wei
                                       args stor15[s]
                                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                mem[mem[64] + 4] = stor15[s]
                                require ext_code.size(priceOracleAddress)
                                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args stor15[s]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[96]:
                                    if ext_call.return_data[32]:
                                        if 0 / ext_call.return_data[32]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                            mem[_3491] = uint128(0 / incentive / 10^18)
                                            mem[_3491 + 32] = uint128(s + 1)
                                        if 0 > mem[_3491 + 80 len 16]:
                                            mem[_3491 + 64] = 0
                                            mem[_3491 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                            mem[_3491] = uint128(0 / incentive / 10^18)
                                            mem[_3491 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3491 + 80 len 16]:
                                            mem[_3491 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3491 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if not ext_call.return_data[32]:
                                        require incentive
                                        if not ext_call.return_data[64]:
                                            if uint128(0 / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                                mem[_3491] = uint128(0 / incentive / 10^18)
                                                mem[_3491 + 32] = uint128(s + 1)
                                            if 0 > mem[_3491 + 80 len 16]:
                                                mem[_3491 + 64] = 0
                                                mem[_3491 + 96] = uint128(s + 1)
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            ext_call.return_data[101 len 27],
                                                            mem[mem[64] + 128 len 4]
                                            if uint128(0 / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                                mem[_3491] = uint128(0 / incentive / 10^18)
                                                mem[_3491 + 32] = uint128(s + 1)
                                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3491 + 80 len 16]:
                                                mem[_3491 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                                mem[_3491 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        require incentive
                                        if not ext_call.return_data[64]:
                                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                                mem[_3491] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                                mem[_3491 + 32] = uint128(s + 1)
                                            if 0 > mem[_3491 + 80 len 16]:
                                                mem[_3491 + 64] = 0
                                                mem[_3491 + 96] = uint128(s + 1)
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            ext_call.return_data[101 len 27],
                                                            mem[mem[64] + 128 len 4]
                                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3491 + 16 len 16]:
                                                mem[_3491] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                                mem[_3491 + 32] = uint128(s + 1)
                                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3491 + 80 len 16]:
                                                mem[_3491 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                                mem[_3491 + 96] = uint128(s + 1)
                                s = s + 1
                                continue 
                            if not mem[_3491 + 112 len 16]:
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 0
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                            else:
                                _6880 = mem[_3491 + 96]
                                require uint128(mem[_3491 + 96] - 1) < stor15.length
                                mem[0] = 15
                                mem[mem[64] + 4] = stor15[uint128(_6880 - 1)]
                                require ext_code.size(priceOracleAddress)
                                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args stor15[uint128(_6880 - 1)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if mem[_3491 + 16 len 16] >= uint128(mem[_3491 + 64]) / 2:
                                    _7716 = mem[_3491 + 64]
                                    require ext_call.return_data[0]
                                    _7970 = mem[_3491 + 32]
                                    require uint128(mem[_3491 + 32] - 1) < stor15.length
                                    _8193 = mem[_3491 + 96]
                                    require uint128(mem[_3491 + 96] - 1) < stor15.length
                                    mem[0] = 15
                                    require idx < mem[(98 * ('cd', 4).length) + 192]
                                    require idx < mem[(131 * ('cd', 4).length) + 224]
                                    require idx < mem[96]
                                    require idx < mem[(32 * ('cd', 4).length) + 128]
                                    require idx < mem[(64 * ('cd', 4).length) + 160]
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7716) / ext_call.return_data[0]
                                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8193 - 1)]
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7970 - 1)]
                                else:
                                    _7717 = mem[_3491]
                                    require ext_call.return_data[0]
                                    _7971 = mem[_3491 + 32]
                                    require uint128(mem[_3491 + 32] - 1) < stor15.length
                                    _8195 = mem[_3491 + 96]
                                    require uint128(mem[_3491 + 96] - 1) < stor15.length
                                    mem[0] = 15
                                    require idx < mem[(98 * ('cd', 4).length) + 192]
                                    require idx < mem[(131 * ('cd', 4).length) + 224]
                                    require idx < mem[96]
                                    require idx < mem[(32 * ('cd', 4).length) + 128]
                                    require idx < mem[(64 * ('cd', 4).length) + 160]
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                    mem[(32 * idx) + 128] = 10^18 * uint128(_7717) / ext_call.return_data[0]
                                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8195 - 1)]
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7971 - 1)]
                            idx = idx + 1
                            continue 
                        _3392 = mem[64]
                        mem[mem[64]] = 160
                        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                        _3394 = mem[(98 * ('cd', 4).length) + 192]
                        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                        mem[mem[64] + 32] = (32 * _3394) + 192
                        mem[(32 * _3394) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                        _6753 = mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * _3394) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                        mem[mem[64] + 64] = (32 * _6753) + (32 * _3394) + 224
                        mem[(32 * _6753) + (32 * _3394) + _3392 + 224] = mem[96]
                        _9985 = mem[96]
                        mem[(32 * _6753) + (32 * _3394) + _3392 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[_3392 + 96] = (32 * mem[96]) + (32 * _6753) + (32 * _3394) + 256
                        mem[(32 * _9985) + (32 * _6753) + (32 * _3394) + _3392 + 256] = mem[(32 * ('cd', 4).length) + 128]
                        _10337 = mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * _9985) + (32 * _6753) + (32 * _3394) + _3392 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                        mem[_3392 + 128] = (32 * _10337) + (32 * _9985) + (32 * _6753) + (32 * _3394) + 288
                        mem[(32 * _10337) + (32 * _9985) + (32 * _6753) + (32 * _3394) + _3392 + 288] = mem[(64 * ('cd', 4).length) + 160]
                        _10593 = mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * _10337) + (32 * _9985) + (32 * _6753) + (32 * _3394) + _3392 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                        return memory
                          from mem[64]
                           len (32 * _10593) + (32 * _10337) + (32 * _9985) + (32 * _6753) + (32 * _3394) + _3392 + -mem[64] + 320
                    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    while idx < ('cd', 4).length:
                        _3495 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3495 len 128] = call.data[calldata.size len 128]
                        s = 0
                        while s < stor15.length:
                            mem[0] = 15
                            require ext_code.size(stor15[s])
                            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_code.size(sub_a0397cd5Address)
                            staticcall sub_a0397cd5Address.markets(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[mem[64] + 4] = stor15[s]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[96]:
                                if ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                        mem[_3495] = uint128(0 / incentive / 10^18)
                                        mem[_3495 + 32] = uint128(s + 1)
                                    if 0 > mem[_3495 + 80 len 16]:
                                        mem[_3495 + 64] = 0
                                        mem[_3495 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                        mem[_3495] = uint128(0 / incentive / 10^18)
                                        mem[_3495 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3495 + 80 len 16]:
                                        mem[_3495 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3495 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if not ext_call.return_data[32]:
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                            mem[_3495] = uint128(0 / incentive / 10^18)
                                            mem[_3495 + 32] = uint128(s + 1)
                                        if 0 > mem[_3495 + 80 len 16]:
                                            mem[_3495 + 64] = 0
                                            mem[_3495 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                            mem[_3495] = uint128(0 / incentive / 10^18)
                                            mem[_3495 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3495 + 80 len 16]:
                                            mem[_3495 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3495 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                            mem[_3495] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3495 + 32] = uint128(s + 1)
                                        if 0 > mem[_3495 + 80 len 16]:
                                            mem[_3495 + 64] = 0
                                            mem[_3495 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3495 + 16 len 16]:
                                            mem[_3495] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3495 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3495 + 80 len 16]:
                                            mem[_3495 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3495 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3495 + 112 len 16]:
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 0
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                        else:
                            _6882 = mem[_3495 + 96]
                            require uint128(mem[_3495 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_6882 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_6882 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3495 + 16 len 16] >= uint128(mem[_3495 + 64]) / 2:
                                _7722 = mem[_3495 + 64]
                                require ext_call.return_data[0]
                                _7977 = mem[_3495 + 32]
                                require uint128(mem[_3495 + 32] - 1) < stor15.length
                                _8197 = mem[_3495 + 96]
                                require uint128(mem[_3495 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7722) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8197 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7977 - 1)]
                            else:
                                _7723 = mem[_3495]
                                require ext_call.return_data[0]
                                _7978 = mem[_3495 + 32]
                                require uint128(mem[_3495 + 32] - 1) < stor15.length
                                _8199 = mem[_3495 + 96]
                                require uint128(mem[_3495 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 10^18 * uint128(_7723) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8199 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7978 - 1)]
                        idx = idx + 1
                        continue 
                    _3395 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3397 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3397) + 192
                    mem[(32 * _3397) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6757 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3397) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6757) + (32 * _3397) + 224
                    mem[(32 * _6757) + (32 * _3397) + _3395 + 224] = mem[96]
                    _9988 = mem[96]
                    mem[(32 * _6757) + (32 * _3397) + _3395 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3395 + 96] = (32 * mem[96]) + (32 * _6757) + (32 * _3397) + 256
                    mem[(32 * _9988) + (32 * _6757) + (32 * _3397) + _3395 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10340 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _9988) + (32 * _6757) + (32 * _3397) + _3395 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3395 + 128] = (32 * _10340) + (32 * _9988) + (32 * _6757) + (32 * _3397) + 288
                    mem[(32 * _10340) + (32 * _9988) + (32 * _6757) + (32 * _3397) + _3395 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10596 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10340) + (32 * _9988) + (32 * _6757) + (32 * _3397) + _3395 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10596) + (32 * _10340) + (32 * _9988) + (32 * _6757) + (32 * _3397) + _3395 + -mem[64] + 320
                mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        _3499 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3499 len 128] = call.data[calldata.size len 128]
                        s = 0
                        while s < stor15.length:
                            mem[0] = 15
                            require ext_code.size(stor15[s])
                            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_code.size(sub_a0397cd5Address)
                            staticcall sub_a0397cd5Address.markets(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[mem[64] + 4] = stor15[s]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[96]:
                                if ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                        mem[_3499] = uint128(0 / incentive / 10^18)
                                        mem[_3499 + 32] = uint128(s + 1)
                                    if 0 > mem[_3499 + 80 len 16]:
                                        mem[_3499 + 64] = 0
                                        mem[_3499 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                        mem[_3499] = uint128(0 / incentive / 10^18)
                                        mem[_3499 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3499 + 80 len 16]:
                                        mem[_3499 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3499 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if not ext_call.return_data[32]:
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                            mem[_3499] = uint128(0 / incentive / 10^18)
                                            mem[_3499 + 32] = uint128(s + 1)
                                        if 0 > mem[_3499 + 80 len 16]:
                                            mem[_3499 + 64] = 0
                                            mem[_3499 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                            mem[_3499] = uint128(0 / incentive / 10^18)
                                            mem[_3499 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3499 + 80 len 16]:
                                            mem[_3499 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3499 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                            mem[_3499] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3499 + 32] = uint128(s + 1)
                                        if 0 > mem[_3499 + 80 len 16]:
                                            mem[_3499 + 64] = 0
                                            mem[_3499 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3499 + 16 len 16]:
                                            mem[_3499] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3499 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3499 + 80 len 16]:
                                            mem[_3499 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3499 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3499 + 112 len 16]:
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 0
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                        else:
                            _6884 = mem[_3499 + 96]
                            require uint128(mem[_3499 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_6884 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_6884 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3499 + 16 len 16] >= uint128(mem[_3499 + 64]) / 2:
                                _7728 = mem[_3499 + 64]
                                require ext_call.return_data[0]
                                _7984 = mem[_3499 + 32]
                                require uint128(mem[_3499 + 32] - 1) < stor15.length
                                _8201 = mem[_3499 + 96]
                                require uint128(mem[_3499 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7728) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8201 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7984 - 1)]
                            else:
                                _7729 = mem[_3499]
                                require ext_call.return_data[0]
                                _7985 = mem[_3499 + 32]
                                require uint128(mem[_3499 + 32] - 1) < stor15.length
                                _8203 = mem[_3499 + 96]
                                require uint128(mem[_3499 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 10^18 * uint128(_7729) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8203 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7985 - 1)]
                        idx = idx + 1
                        continue 
                    _3398 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3400 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3400) + 192
                    mem[(32 * _3400) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6761 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3400) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6761) + (32 * _3400) + 224
                    mem[(32 * _6761) + (32 * _3400) + _3398 + 224] = mem[96]
                    _9991 = mem[96]
                    mem[(32 * _6761) + (32 * _3400) + _3398 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3398 + 96] = (32 * mem[96]) + (32 * _6761) + (32 * _3400) + 256
                    mem[(32 * _9991) + (32 * _6761) + (32 * _3400) + _3398 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10343 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _9991) + (32 * _6761) + (32 * _3400) + _3398 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3398 + 128] = (32 * _10343) + (32 * _9991) + (32 * _6761) + (32 * _3400) + 288
                    mem[(32 * _10343) + (32 * _9991) + (32 * _6761) + (32 * _3400) + _3398 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10599 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10343) + (32 * _9991) + (32 * _6761) + (32 * _3400) + _3398 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10599) + (32 * _10343) + (32 * _9991) + (32 * _6761) + (32 * _3400) + _3398 + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    _3503 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3503 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                    mem[_3503] = uint128(0 / incentive / 10^18)
                                    mem[_3503 + 32] = uint128(s + 1)
                                if 0 > mem[_3503 + 80 len 16]:
                                    mem[_3503 + 64] = 0
                                    mem[_3503 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                    mem[_3503] = uint128(0 / incentive / 10^18)
                                    mem[_3503 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3503 + 80 len 16]:
                                    mem[_3503 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3503 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                        mem[_3503] = uint128(0 / incentive / 10^18)
                                        mem[_3503 + 32] = uint128(s + 1)
                                    if 0 > mem[_3503 + 80 len 16]:
                                        mem[_3503 + 64] = 0
                                        mem[_3503 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                        mem[_3503] = uint128(0 / incentive / 10^18)
                                        mem[_3503 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3503 + 80 len 16]:
                                        mem[_3503 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3503 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                        mem[_3503] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3503 + 32] = uint128(s + 1)
                                    if 0 > mem[_3503 + 80 len 16]:
                                        mem[_3503 + 64] = 0
                                        mem[_3503 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3503 + 16 len 16]:
                                        mem[_3503] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3503 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3503 + 80 len 16]:
                                        mem[_3503 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3503 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3503 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6886 = mem[_3503 + 96]
                        require uint128(mem[_3503 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6886 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6886 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3503 + 16 len 16] >= uint128(mem[_3503 + 64]) / 2:
                            _7734 = mem[_3503 + 64]
                            require ext_call.return_data[0]
                            _7991 = mem[_3503 + 32]
                            require uint128(mem[_3503 + 32] - 1) < stor15.length
                            _8205 = mem[_3503 + 96]
                            require uint128(mem[_3503 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7734) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8205 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7991 - 1)]
                        else:
                            _7735 = mem[_3503]
                            require ext_call.return_data[0]
                            _7992 = mem[_3503 + 32]
                            require uint128(mem[_3503 + 32] - 1) < stor15.length
                            _8207 = mem[_3503 + 96]
                            require uint128(mem[_3503 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7735) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8207 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7992 - 1)]
                    idx = idx + 1
                    continue 
                _3401 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3403 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3403) + 192
                mem[(32 * _3403) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6765 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3403) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6765) + (32 * _3403) + 224
                mem[(32 * _6765) + (32 * _3403) + _3401 + 224] = mem[96]
                _9994 = mem[96]
                mem[(32 * _6765) + (32 * _3403) + _3401 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3401 + 96] = (32 * mem[96]) + (32 * _6765) + (32 * _3403) + 256
                mem[(32 * _9994) + (32 * _6765) + (32 * _3403) + _3401 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10346 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _9994) + (32 * _6765) + (32 * _3403) + _3401 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3401 + 128] = (32 * _10346) + (32 * _9994) + (32 * _6765) + (32 * _3403) + 288
                mem[(32 * _10346) + (32 * _9994) + (32 * _6765) + (32 * _3403) + _3401 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10602 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10346) + (32 * _9994) + (32 * _6765) + (32 * _3403) + _3401 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10602) + (32 * _10346) + (32 * _9994) + (32 * _6765) + (32 * _3403) + _3401 + -mem[64] + 320
            mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        _3507 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3507 len 128] = call.data[calldata.size len 128]
                        s = 0
                        while s < stor15.length:
                            mem[0] = 15
                            require ext_code.size(stor15[s])
                            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_code.size(sub_a0397cd5Address)
                            staticcall sub_a0397cd5Address.markets(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[mem[64] + 4] = stor15[s]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[96]:
                                if ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                        mem[_3507] = uint128(0 / incentive / 10^18)
                                        mem[_3507 + 32] = uint128(s + 1)
                                    if 0 > mem[_3507 + 80 len 16]:
                                        mem[_3507 + 64] = 0
                                        mem[_3507 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                        mem[_3507] = uint128(0 / incentive / 10^18)
                                        mem[_3507 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3507 + 80 len 16]:
                                        mem[_3507 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3507 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if not ext_call.return_data[32]:
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                            mem[_3507] = uint128(0 / incentive / 10^18)
                                            mem[_3507 + 32] = uint128(s + 1)
                                        if 0 > mem[_3507 + 80 len 16]:
                                            mem[_3507 + 64] = 0
                                            mem[_3507 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                            mem[_3507] = uint128(0 / incentive / 10^18)
                                            mem[_3507 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3507 + 80 len 16]:
                                            mem[_3507 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3507 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                            mem[_3507] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3507 + 32] = uint128(s + 1)
                                        if 0 > mem[_3507 + 80 len 16]:
                                            mem[_3507 + 64] = 0
                                            mem[_3507 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3507 + 16 len 16]:
                                            mem[_3507] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3507 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3507 + 80 len 16]:
                                            mem[_3507 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3507 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3507 + 112 len 16]:
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 0
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                        else:
                            _6888 = mem[_3507 + 96]
                            require uint128(mem[_3507 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_6888 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_6888 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3507 + 16 len 16] >= uint128(mem[_3507 + 64]) / 2:
                                _7740 = mem[_3507 + 64]
                                require ext_call.return_data[0]
                                _7998 = mem[_3507 + 32]
                                require uint128(mem[_3507 + 32] - 1) < stor15.length
                                _8209 = mem[_3507 + 96]
                                require uint128(mem[_3507 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7740) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8209 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7998 - 1)]
                            else:
                                _7741 = mem[_3507]
                                require ext_call.return_data[0]
                                _7999 = mem[_3507 + 32]
                                require uint128(mem[_3507 + 32] - 1) < stor15.length
                                _8211 = mem[_3507 + 96]
                                require uint128(mem[_3507 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 10^18 * uint128(_7741) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8211 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_7999 - 1)]
                        idx = idx + 1
                        continue 
                    _3404 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3406 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3406) + 192
                    mem[(32 * _3406) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6769 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3406) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6769) + (32 * _3406) + 224
                    mem[(32 * _6769) + (32 * _3406) + _3404 + 224] = mem[96]
                    _9997 = mem[96]
                    mem[(32 * _6769) + (32 * _3406) + _3404 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3404 + 96] = (32 * mem[96]) + (32 * _6769) + (32 * _3406) + 256
                    mem[(32 * _9997) + (32 * _6769) + (32 * _3406) + _3404 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10349 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _9997) + (32 * _6769) + (32 * _3406) + _3404 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3404 + 128] = (32 * _10349) + (32 * _9997) + (32 * _6769) + (32 * _3406) + 288
                    mem[(32 * _10349) + (32 * _9997) + (32 * _6769) + (32 * _3406) + _3404 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10605 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10349) + (32 * _9997) + (32 * _6769) + (32 * _3406) + _3404 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10605) + (32 * _10349) + (32 * _9997) + (32 * _6769) + (32 * _3406) + _3404 + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    _3511 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3511 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                    mem[_3511] = uint128(0 / incentive / 10^18)
                                    mem[_3511 + 32] = uint128(s + 1)
                                if 0 > mem[_3511 + 80 len 16]:
                                    mem[_3511 + 64] = 0
                                    mem[_3511 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                    mem[_3511] = uint128(0 / incentive / 10^18)
                                    mem[_3511 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3511 + 80 len 16]:
                                    mem[_3511 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3511 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                        mem[_3511] = uint128(0 / incentive / 10^18)
                                        mem[_3511 + 32] = uint128(s + 1)
                                    if 0 > mem[_3511 + 80 len 16]:
                                        mem[_3511 + 64] = 0
                                        mem[_3511 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                        mem[_3511] = uint128(0 / incentive / 10^18)
                                        mem[_3511 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3511 + 80 len 16]:
                                        mem[_3511 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3511 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                        mem[_3511] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3511 + 32] = uint128(s + 1)
                                    if 0 > mem[_3511 + 80 len 16]:
                                        mem[_3511 + 64] = 0
                                        mem[_3511 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3511 + 16 len 16]:
                                        mem[_3511] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3511 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3511 + 80 len 16]:
                                        mem[_3511 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3511 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3511 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6890 = mem[_3511 + 96]
                        require uint128(mem[_3511 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6890 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6890 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3511 + 16 len 16] >= uint128(mem[_3511 + 64]) / 2:
                            _7746 = mem[_3511 + 64]
                            require ext_call.return_data[0]
                            _8005 = mem[_3511 + 32]
                            require uint128(mem[_3511 + 32] - 1) < stor15.length
                            _8213 = mem[_3511 + 96]
                            require uint128(mem[_3511 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7746) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8213 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8005 - 1)]
                        else:
                            _7747 = mem[_3511]
                            require ext_call.return_data[0]
                            _8006 = mem[_3511 + 32]
                            require uint128(mem[_3511 + 32] - 1) < stor15.length
                            _8215 = mem[_3511 + 96]
                            require uint128(mem[_3511 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7747) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8215 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8006 - 1)]
                    idx = idx + 1
                    continue 
                _3407 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3409 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3409) + 192
                mem[(32 * _3409) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6773 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3409) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6773) + (32 * _3409) + 224
                mem[(32 * _6773) + (32 * _3409) + _3407 + 224] = mem[96]
                _10000 = mem[96]
                mem[(32 * _6773) + (32 * _3409) + _3407 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3407 + 96] = (32 * mem[96]) + (32 * _6773) + (32 * _3409) + 256
                mem[(32 * _10000) + (32 * _6773) + (32 * _3409) + _3407 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10352 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10000) + (32 * _6773) + (32 * _3409) + _3407 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3407 + 128] = (32 * _10352) + (32 * _10000) + (32 * _6773) + (32 * _3409) + 288
                mem[(32 * _10352) + (32 * _10000) + (32 * _6773) + (32 * _3409) + _3407 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10608 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10352) + (32 * _10000) + (32 * _6773) + (32 * _3409) + _3407 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10608) + (32 * _10352) + (32 * _10000) + (32 * _6773) + (32 * _3409) + _3407 + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3515 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3515 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                    mem[_3515] = uint128(0 / incentive / 10^18)
                                    mem[_3515 + 32] = uint128(s + 1)
                                if 0 > mem[_3515 + 80 len 16]:
                                    mem[_3515 + 64] = 0
                                    mem[_3515 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                    mem[_3515] = uint128(0 / incentive / 10^18)
                                    mem[_3515 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3515 + 80 len 16]:
                                    mem[_3515 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3515 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                        mem[_3515] = uint128(0 / incentive / 10^18)
                                        mem[_3515 + 32] = uint128(s + 1)
                                    if 0 > mem[_3515 + 80 len 16]:
                                        mem[_3515 + 64] = 0
                                        mem[_3515 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                        mem[_3515] = uint128(0 / incentive / 10^18)
                                        mem[_3515 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3515 + 80 len 16]:
                                        mem[_3515 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3515 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                        mem[_3515] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3515 + 32] = uint128(s + 1)
                                    if 0 > mem[_3515 + 80 len 16]:
                                        mem[_3515 + 64] = 0
                                        mem[_3515 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3515 + 16 len 16]:
                                        mem[_3515] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3515 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3515 + 80 len 16]:
                                        mem[_3515 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3515 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3515 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6892 = mem[_3515 + 96]
                        require uint128(mem[_3515 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6892 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6892 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3515 + 16 len 16] >= uint128(mem[_3515 + 64]) / 2:
                            _7752 = mem[_3515 + 64]
                            require ext_call.return_data[0]
                            _8012 = mem[_3515 + 32]
                            require uint128(mem[_3515 + 32] - 1) < stor15.length
                            _8217 = mem[_3515 + 96]
                            require uint128(mem[_3515 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7752) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8217 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8012 - 1)]
                        else:
                            _7753 = mem[_3515]
                            require ext_call.return_data[0]
                            _8013 = mem[_3515 + 32]
                            require uint128(mem[_3515 + 32] - 1) < stor15.length
                            _8219 = mem[_3515 + 96]
                            require uint128(mem[_3515 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7753) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8219 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8013 - 1)]
                    idx = idx + 1
                    continue 
                _3410 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3412 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3412) + 192
                mem[(32 * _3412) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6777 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3412) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6777) + (32 * _3412) + 224
                mem[(32 * _6777) + (32 * _3412) + _3410 + 224] = mem[96]
                _10003 = mem[96]
                mem[(32 * _6777) + (32 * _3412) + _3410 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3410 + 96] = (32 * mem[96]) + (32 * _6777) + (32 * _3412) + 256
                mem[(32 * _10003) + (32 * _6777) + (32 * _3412) + _3410 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10355 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10003) + (32 * _6777) + (32 * _3412) + _3410 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3410 + 128] = (32 * _10355) + (32 * _10003) + (32 * _6777) + (32 * _3412) + 288
                mem[(32 * _10355) + (32 * _10003) + (32 * _6777) + (32 * _3412) + _3410 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10611 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10355) + (32 * _10003) + (32 * _6777) + (32 * _3412) + _3410 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10611) + (32 * _10355) + (32 * _10003) + (32 * _6777) + (32 * _3412) + _3410 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3519 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3519 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                mem[_3519] = uint128(0 / incentive / 10^18)
                                mem[_3519 + 32] = uint128(s + 1)
                            if 0 > mem[_3519 + 80 len 16]:
                                mem[_3519 + 64] = 0
                                mem[_3519 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                mem[_3519] = uint128(0 / incentive / 10^18)
                                mem[_3519 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3519 + 80 len 16]:
                                mem[_3519 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3519 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                    mem[_3519] = uint128(0 / incentive / 10^18)
                                    mem[_3519 + 32] = uint128(s + 1)
                                if 0 > mem[_3519 + 80 len 16]:
                                    mem[_3519 + 64] = 0
                                    mem[_3519 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                    mem[_3519] = uint128(0 / incentive / 10^18)
                                    mem[_3519 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3519 + 80 len 16]:
                                    mem[_3519 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3519 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                    mem[_3519] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3519 + 32] = uint128(s + 1)
                                if 0 > mem[_3519 + 80 len 16]:
                                    mem[_3519 + 64] = 0
                                    mem[_3519 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3519 + 16 len 16]:
                                    mem[_3519] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3519 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3519 + 80 len 16]:
                                    mem[_3519 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3519 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3519 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6894 = mem[_3519 + 96]
                    require uint128(mem[_3519 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6894 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6894 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3519 + 16 len 16] >= uint128(mem[_3519 + 64]) / 2:
                        _7758 = mem[_3519 + 64]
                        require ext_call.return_data[0]
                        _8019 = mem[_3519 + 32]
                        require uint128(mem[_3519 + 32] - 1) < stor15.length
                        _8221 = mem[_3519 + 96]
                        require uint128(mem[_3519 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7758) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8221 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8019 - 1)]
                    else:
                        _7759 = mem[_3519]
                        require ext_call.return_data[0]
                        _8020 = mem[_3519 + 32]
                        require uint128(mem[_3519 + 32] - 1) < stor15.length
                        _8223 = mem[_3519 + 96]
                        require uint128(mem[_3519 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7759) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8223 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8020 - 1)]
                idx = idx + 1
                continue 
            _3413 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3415 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3415) + 192
            mem[(32 * _3415) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6781 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3415) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6781) + (32 * _3415) + 224
            mem[(32 * _6781) + (32 * _3415) + _3413 + 224] = mem[96]
            _10006 = mem[96]
            mem[(32 * _6781) + (32 * _3415) + _3413 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3413 + 96] = (32 * mem[96]) + (32 * _6781) + (32 * _3415) + 256
            mem[(32 * _10006) + (32 * _6781) + (32 * _3415) + _3413 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10358 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10006) + (32 * _6781) + (32 * _3415) + _3413 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3413 + 128] = (32 * _10358) + (32 * _10006) + (32 * _6781) + (32 * _3415) + 288
            mem[(32 * _10358) + (32 * _10006) + (32 * _6781) + (32 * _3415) + _3413 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10614 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10358) + (32 * _10006) + (32 * _6781) + (32 * _3415) + _3413 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10614) + (32 * _10358) + (32 * _10006) + (32 * _6781) + (32 * _3415) + _3413 + -mem[64] + 320
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        _3523 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3523 len 128] = call.data[calldata.size len 128]
                        s = 0
                        while s < stor15.length:
                            mem[0] = 15
                            require ext_code.size(stor15[s])
                            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_code.size(sub_a0397cd5Address)
                            staticcall sub_a0397cd5Address.markets(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[mem[64] + 4] = stor15[s]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[96]:
                                if ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                        mem[_3523] = uint128(0 / incentive / 10^18)
                                        mem[_3523 + 32] = uint128(s + 1)
                                    if 0 > mem[_3523 + 80 len 16]:
                                        mem[_3523 + 64] = 0
                                        mem[_3523 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                        mem[_3523] = uint128(0 / incentive / 10^18)
                                        mem[_3523 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3523 + 80 len 16]:
                                        mem[_3523 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3523 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if not ext_call.return_data[32]:
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                            mem[_3523] = uint128(0 / incentive / 10^18)
                                            mem[_3523 + 32] = uint128(s + 1)
                                        if 0 > mem[_3523 + 80 len 16]:
                                            mem[_3523 + 64] = 0
                                            mem[_3523 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                            mem[_3523] = uint128(0 / incentive / 10^18)
                                            mem[_3523 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3523 + 80 len 16]:
                                            mem[_3523 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3523 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                            mem[_3523] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3523 + 32] = uint128(s + 1)
                                        if 0 > mem[_3523 + 80 len 16]:
                                            mem[_3523 + 64] = 0
                                            mem[_3523 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3523 + 16 len 16]:
                                            mem[_3523] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3523 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3523 + 80 len 16]:
                                            mem[_3523 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3523 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3523 + 112 len 16]:
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 0
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                        else:
                            _6896 = mem[_3523 + 96]
                            require uint128(mem[_3523 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_6896 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_6896 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3523 + 16 len 16] >= uint128(mem[_3523 + 64]) / 2:
                                _7764 = mem[_3523 + 64]
                                require ext_call.return_data[0]
                                _8026 = mem[_3523 + 32]
                                require uint128(mem[_3523 + 32] - 1) < stor15.length
                                _8225 = mem[_3523 + 96]
                                require uint128(mem[_3523 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7764) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8225 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8026 - 1)]
                            else:
                                _7765 = mem[_3523]
                                require ext_call.return_data[0]
                                _8027 = mem[_3523 + 32]
                                require uint128(mem[_3523 + 32] - 1) < stor15.length
                                _8227 = mem[_3523 + 96]
                                require uint128(mem[_3523 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 10^18 * uint128(_7765) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8227 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8027 - 1)]
                        idx = idx + 1
                        continue 
                    _3416 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3418 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3418) + 192
                    mem[(32 * _3418) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6785 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3418) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6785) + (32 * _3418) + 224
                    mem[(32 * _6785) + (32 * _3418) + _3416 + 224] = mem[96]
                    _10009 = mem[96]
                    mem[(32 * _6785) + (32 * _3418) + _3416 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3416 + 96] = (32 * mem[96]) + (32 * _6785) + (32 * _3418) + 256
                    mem[(32 * _10009) + (32 * _6785) + (32 * _3418) + _3416 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10361 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10009) + (32 * _6785) + (32 * _3418) + _3416 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3416 + 128] = (32 * _10361) + (32 * _10009) + (32 * _6785) + (32 * _3418) + 288
                    mem[(32 * _10361) + (32 * _10009) + (32 * _6785) + (32 * _3418) + _3416 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10617 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10361) + (32 * _10009) + (32 * _6785) + (32 * _3418) + _3416 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10617) + (32 * _10361) + (32 * _10009) + (32 * _6785) + (32 * _3418) + _3416 + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    _3527 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3527 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                    mem[_3527] = uint128(0 / incentive / 10^18)
                                    mem[_3527 + 32] = uint128(s + 1)
                                if 0 > mem[_3527 + 80 len 16]:
                                    mem[_3527 + 64] = 0
                                    mem[_3527 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                    mem[_3527] = uint128(0 / incentive / 10^18)
                                    mem[_3527 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3527 + 80 len 16]:
                                    mem[_3527 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3527 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                        mem[_3527] = uint128(0 / incentive / 10^18)
                                        mem[_3527 + 32] = uint128(s + 1)
                                    if 0 > mem[_3527 + 80 len 16]:
                                        mem[_3527 + 64] = 0
                                        mem[_3527 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                        mem[_3527] = uint128(0 / incentive / 10^18)
                                        mem[_3527 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3527 + 80 len 16]:
                                        mem[_3527 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3527 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                        mem[_3527] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3527 + 32] = uint128(s + 1)
                                    if 0 > mem[_3527 + 80 len 16]:
                                        mem[_3527 + 64] = 0
                                        mem[_3527 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3527 + 16 len 16]:
                                        mem[_3527] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3527 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3527 + 80 len 16]:
                                        mem[_3527 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3527 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3527 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6898 = mem[_3527 + 96]
                        require uint128(mem[_3527 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6898 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6898 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3527 + 16 len 16] >= uint128(mem[_3527 + 64]) / 2:
                            _7770 = mem[_3527 + 64]
                            require ext_call.return_data[0]
                            _8033 = mem[_3527 + 32]
                            require uint128(mem[_3527 + 32] - 1) < stor15.length
                            _8229 = mem[_3527 + 96]
                            require uint128(mem[_3527 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7770) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8229 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8033 - 1)]
                        else:
                            _7771 = mem[_3527]
                            require ext_call.return_data[0]
                            _8034 = mem[_3527 + 32]
                            require uint128(mem[_3527 + 32] - 1) < stor15.length
                            _8231 = mem[_3527 + 96]
                            require uint128(mem[_3527 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7771) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8231 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8034 - 1)]
                    idx = idx + 1
                    continue 
                _3419 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3421 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3421) + 192
                mem[(32 * _3421) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6789 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3421) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6789) + (32 * _3421) + 224
                mem[(32 * _6789) + (32 * _3421) + _3419 + 224] = mem[96]
                _10012 = mem[96]
                mem[(32 * _6789) + (32 * _3421) + _3419 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3419 + 96] = (32 * mem[96]) + (32 * _6789) + (32 * _3421) + 256
                mem[(32 * _10012) + (32 * _6789) + (32 * _3421) + _3419 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10364 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10012) + (32 * _6789) + (32 * _3421) + _3419 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3419 + 128] = (32 * _10364) + (32 * _10012) + (32 * _6789) + (32 * _3421) + 288
                mem[(32 * _10364) + (32 * _10012) + (32 * _6789) + (32 * _3421) + _3419 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10620 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10364) + (32 * _10012) + (32 * _6789) + (32 * _3421) + _3419 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10620) + (32 * _10364) + (32 * _10012) + (32 * _6789) + (32 * _3421) + _3419 + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3531 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3531 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                    mem[_3531] = uint128(0 / incentive / 10^18)
                                    mem[_3531 + 32] = uint128(s + 1)
                                if 0 > mem[_3531 + 80 len 16]:
                                    mem[_3531 + 64] = 0
                                    mem[_3531 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                    mem[_3531] = uint128(0 / incentive / 10^18)
                                    mem[_3531 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3531 + 80 len 16]:
                                    mem[_3531 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3531 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                        mem[_3531] = uint128(0 / incentive / 10^18)
                                        mem[_3531 + 32] = uint128(s + 1)
                                    if 0 > mem[_3531 + 80 len 16]:
                                        mem[_3531 + 64] = 0
                                        mem[_3531 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                        mem[_3531] = uint128(0 / incentive / 10^18)
                                        mem[_3531 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3531 + 80 len 16]:
                                        mem[_3531 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3531 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                        mem[_3531] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3531 + 32] = uint128(s + 1)
                                    if 0 > mem[_3531 + 80 len 16]:
                                        mem[_3531 + 64] = 0
                                        mem[_3531 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3531 + 16 len 16]:
                                        mem[_3531] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3531 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3531 + 80 len 16]:
                                        mem[_3531 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3531 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3531 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6900 = mem[_3531 + 96]
                        require uint128(mem[_3531 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6900 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6900 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3531 + 16 len 16] >= uint128(mem[_3531 + 64]) / 2:
                            _7776 = mem[_3531 + 64]
                            require ext_call.return_data[0]
                            _8040 = mem[_3531 + 32]
                            require uint128(mem[_3531 + 32] - 1) < stor15.length
                            _8233 = mem[_3531 + 96]
                            require uint128(mem[_3531 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7776) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8233 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8040 - 1)]
                        else:
                            _7777 = mem[_3531]
                            require ext_call.return_data[0]
                            _8041 = mem[_3531 + 32]
                            require uint128(mem[_3531 + 32] - 1) < stor15.length
                            _8235 = mem[_3531 + 96]
                            require uint128(mem[_3531 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7777) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8235 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8041 - 1)]
                    idx = idx + 1
                    continue 
                _3422 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3424 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3424) + 192
                mem[(32 * _3424) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6793 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3424) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6793) + (32 * _3424) + 224
                mem[(32 * _6793) + (32 * _3424) + _3422 + 224] = mem[96]
                _10015 = mem[96]
                mem[(32 * _6793) + (32 * _3424) + _3422 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3422 + 96] = (32 * mem[96]) + (32 * _6793) + (32 * _3424) + 256
                mem[(32 * _10015) + (32 * _6793) + (32 * _3424) + _3422 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10367 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10015) + (32 * _6793) + (32 * _3424) + _3422 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3422 + 128] = (32 * _10367) + (32 * _10015) + (32 * _6793) + (32 * _3424) + 288
                mem[(32 * _10367) + (32 * _10015) + (32 * _6793) + (32 * _3424) + _3422 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10623 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10367) + (32 * _10015) + (32 * _6793) + (32 * _3424) + _3422 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10623) + (32 * _10367) + (32 * _10015) + (32 * _6793) + (32 * _3424) + _3422 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3535 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3535 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                mem[_3535] = uint128(0 / incentive / 10^18)
                                mem[_3535 + 32] = uint128(s + 1)
                            if 0 > mem[_3535 + 80 len 16]:
                                mem[_3535 + 64] = 0
                                mem[_3535 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                mem[_3535] = uint128(0 / incentive / 10^18)
                                mem[_3535 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3535 + 80 len 16]:
                                mem[_3535 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3535 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                    mem[_3535] = uint128(0 / incentive / 10^18)
                                    mem[_3535 + 32] = uint128(s + 1)
                                if 0 > mem[_3535 + 80 len 16]:
                                    mem[_3535 + 64] = 0
                                    mem[_3535 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                    mem[_3535] = uint128(0 / incentive / 10^18)
                                    mem[_3535 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3535 + 80 len 16]:
                                    mem[_3535 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3535 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                    mem[_3535] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3535 + 32] = uint128(s + 1)
                                if 0 > mem[_3535 + 80 len 16]:
                                    mem[_3535 + 64] = 0
                                    mem[_3535 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3535 + 16 len 16]:
                                    mem[_3535] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3535 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3535 + 80 len 16]:
                                    mem[_3535 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3535 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3535 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6902 = mem[_3535 + 96]
                    require uint128(mem[_3535 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6902 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6902 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3535 + 16 len 16] >= uint128(mem[_3535 + 64]) / 2:
                        _7782 = mem[_3535 + 64]
                        require ext_call.return_data[0]
                        _8047 = mem[_3535 + 32]
                        require uint128(mem[_3535 + 32] - 1) < stor15.length
                        _8237 = mem[_3535 + 96]
                        require uint128(mem[_3535 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7782) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8237 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8047 - 1)]
                    else:
                        _7783 = mem[_3535]
                        require ext_call.return_data[0]
                        _8048 = mem[_3535 + 32]
                        require uint128(mem[_3535 + 32] - 1) < stor15.length
                        _8239 = mem[_3535 + 96]
                        require uint128(mem[_3535 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7783) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8239 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8048 - 1)]
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3427 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3427) + 192
            mem[(32 * _3427) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6797 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3427) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6797) + (32 * _3427) + 224
            mem[(32 * _6797) + (32 * _3427) + mem[64] + 224] = mem[96]
            _10018 = mem[96]
            mem[(32 * _6797) + (32 * _3427) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6797) + (32 * _3427) + 256
            mem[(32 * _10018) + (32 * _6797) + (32 * _3427) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10370 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10018) + (32 * _6797) + (32 * _3427) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[mem[64] + 128] = (32 * _10370) + (32 * _10018) + (32 * _6797) + (32 * _3427) + 288
            mem[(32 * _10370) + (32 * _10018) + (32 * _6797) + (32 * _3427) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10626 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10370) + (32 * _10018) + (32 * _6797) + (32 * _3427) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return 160, 
                   (32 * _3427) + 192,
                   (32 * _6797) + (32 * _3427) + 224,
                   mem[mem[64] + 96],
                   (32 * _10370) + (32 * _10018) + (32 * _6797) + (32 * _3427) + 288,
                   mem[mem[64] + 160 len (32 * _10626) + (32 * _10370) + (32 * _10018) + (32 * _6797) + (32 * _3427) + 160]
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3539 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3539 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                    mem[_3539] = uint128(0 / incentive / 10^18)
                                    mem[_3539 + 32] = uint128(s + 1)
                                if 0 > mem[_3539 + 80 len 16]:
                                    mem[_3539 + 64] = 0
                                    mem[_3539 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                    mem[_3539] = uint128(0 / incentive / 10^18)
                                    mem[_3539 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3539 + 80 len 16]:
                                    mem[_3539 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3539 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                        mem[_3539] = uint128(0 / incentive / 10^18)
                                        mem[_3539 + 32] = uint128(s + 1)
                                    if 0 > mem[_3539 + 80 len 16]:
                                        mem[_3539 + 64] = 0
                                        mem[_3539 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                        mem[_3539] = uint128(0 / incentive / 10^18)
                                        mem[_3539 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3539 + 80 len 16]:
                                        mem[_3539 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3539 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                        mem[_3539] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3539 + 32] = uint128(s + 1)
                                    if 0 > mem[_3539 + 80 len 16]:
                                        mem[_3539 + 64] = 0
                                        mem[_3539 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3539 + 16 len 16]:
                                        mem[_3539] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3539 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3539 + 80 len 16]:
                                        mem[_3539 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3539 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3539 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6904 = mem[_3539 + 96]
                        require uint128(mem[_3539 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6904 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6904 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3539 + 16 len 16] >= uint128(mem[_3539 + 64]) / 2:
                            _7788 = mem[_3539 + 64]
                            require ext_call.return_data[0]
                            _8054 = mem[_3539 + 32]
                            require uint128(mem[_3539 + 32] - 1) < stor15.length
                            _8241 = mem[_3539 + 96]
                            require uint128(mem[_3539 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7788) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8241 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8054 - 1)]
                        else:
                            _7789 = mem[_3539]
                            require ext_call.return_data[0]
                            _8055 = mem[_3539 + 32]
                            require uint128(mem[_3539 + 32] - 1) < stor15.length
                            _8243 = mem[_3539 + 96]
                            require uint128(mem[_3539 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7789) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8243 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8055 - 1)]
                    idx = idx + 1
                    continue 
                _3428 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3430 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3430) + 192
                mem[(32 * _3430) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6801 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3430) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6801) + (32 * _3430) + 224
                mem[(32 * _6801) + (32 * _3430) + _3428 + 224] = mem[96]
                _10021 = mem[96]
                mem[(32 * _6801) + (32 * _3430) + _3428 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3428 + 96] = (32 * mem[96]) + (32 * _6801) + (32 * _3430) + 256
                mem[(32 * _10021) + (32 * _6801) + (32 * _3430) + _3428 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10373 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10021) + (32 * _6801) + (32 * _3430) + _3428 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3428 + 128] = (32 * _10373) + (32 * _10021) + (32 * _6801) + (32 * _3430) + 288
                mem[(32 * _10373) + (32 * _10021) + (32 * _6801) + (32 * _3430) + _3428 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10629 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10373) + (32 * _10021) + (32 * _6801) + (32 * _3430) + _3428 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10629) + (32 * _10373) + (32 * _10021) + (32 * _6801) + (32 * _3430) + _3428 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3543 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3543 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                mem[_3543] = uint128(0 / incentive / 10^18)
                                mem[_3543 + 32] = uint128(s + 1)
                            if 0 > mem[_3543 + 80 len 16]:
                                mem[_3543 + 64] = 0
                                mem[_3543 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                mem[_3543] = uint128(0 / incentive / 10^18)
                                mem[_3543 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3543 + 80 len 16]:
                                mem[_3543 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3543 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                    mem[_3543] = uint128(0 / incentive / 10^18)
                                    mem[_3543 + 32] = uint128(s + 1)
                                if 0 > mem[_3543 + 80 len 16]:
                                    mem[_3543 + 64] = 0
                                    mem[_3543 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                    mem[_3543] = uint128(0 / incentive / 10^18)
                                    mem[_3543 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3543 + 80 len 16]:
                                    mem[_3543 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3543 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                    mem[_3543] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3543 + 32] = uint128(s + 1)
                                if 0 > mem[_3543 + 80 len 16]:
                                    mem[_3543 + 64] = 0
                                    mem[_3543 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3543 + 16 len 16]:
                                    mem[_3543] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3543 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3543 + 80 len 16]:
                                    mem[_3543 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3543 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3543 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6906 = mem[_3543 + 96]
                    require uint128(mem[_3543 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6906 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6906 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3543 + 16 len 16] >= uint128(mem[_3543 + 64]) / 2:
                        _7794 = mem[_3543 + 64]
                        require ext_call.return_data[0]
                        _8061 = mem[_3543 + 32]
                        require uint128(mem[_3543 + 32] - 1) < stor15.length
                        _8245 = mem[_3543 + 96]
                        require uint128(mem[_3543 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7794) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8245 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8061 - 1)]
                    else:
                        _7795 = mem[_3543]
                        require ext_call.return_data[0]
                        _8062 = mem[_3543 + 32]
                        require uint128(mem[_3543 + 32] - 1) < stor15.length
                        _8247 = mem[_3543 + 96]
                        require uint128(mem[_3543 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7795) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8247 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8062 - 1)]
                idx = idx + 1
                continue 
            _3431 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3433 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3433) + 192
            mem[(32 * _3433) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6805 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3433) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6805) + (32 * _3433) + 224
            mem[(32 * _6805) + (32 * _3433) + _3431 + 224] = mem[96]
            _10024 = mem[96]
            mem[(32 * _6805) + (32 * _3433) + _3431 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3431 + 96] = (32 * mem[96]) + (32 * _6805) + (32 * _3433) + 256
            mem[(32 * _10024) + (32 * _6805) + (32 * _3433) + _3431 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10376 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10024) + (32 * _6805) + (32 * _3433) + _3431 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3431 + 128] = (32 * _10376) + (32 * _10024) + (32 * _6805) + (32 * _3433) + 288
            mem[(32 * _10376) + (32 * _10024) + (32 * _6805) + (32 * _3433) + _3431 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10632 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10376) + (32 * _10024) + (32 * _6805) + (32 * _3433) + _3431 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10632) + (32 * _10376) + (32 * _10024) + (32 * _6805) + (32 * _3433) + _3431 + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3547 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3547 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                mem[_3547] = uint128(0 / incentive / 10^18)
                                mem[_3547 + 32] = uint128(s + 1)
                            if 0 > mem[_3547 + 80 len 16]:
                                mem[_3547 + 64] = 0
                                mem[_3547 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                mem[_3547] = uint128(0 / incentive / 10^18)
                                mem[_3547 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3547 + 80 len 16]:
                                mem[_3547 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3547 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                    mem[_3547] = uint128(0 / incentive / 10^18)
                                    mem[_3547 + 32] = uint128(s + 1)
                                if 0 > mem[_3547 + 80 len 16]:
                                    mem[_3547 + 64] = 0
                                    mem[_3547 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                    mem[_3547] = uint128(0 / incentive / 10^18)
                                    mem[_3547 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3547 + 80 len 16]:
                                    mem[_3547 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3547 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                    mem[_3547] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3547 + 32] = uint128(s + 1)
                                if 0 > mem[_3547 + 80 len 16]:
                                    mem[_3547 + 64] = 0
                                    mem[_3547 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3547 + 16 len 16]:
                                    mem[_3547] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3547 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3547 + 80 len 16]:
                                    mem[_3547 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3547 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3547 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6908 = mem[_3547 + 96]
                    require uint128(mem[_3547 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6908 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6908 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3547 + 16 len 16] >= uint128(mem[_3547 + 64]) / 2:
                        _7800 = mem[_3547 + 64]
                        require ext_call.return_data[0]
                        _8068 = mem[_3547 + 32]
                        require uint128(mem[_3547 + 32] - 1) < stor15.length
                        _8249 = mem[_3547 + 96]
                        require uint128(mem[_3547 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7800) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8249 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8068 - 1)]
                    else:
                        _7801 = mem[_3547]
                        require ext_call.return_data[0]
                        _8069 = mem[_3547 + 32]
                        require uint128(mem[_3547 + 32] - 1) < stor15.length
                        _8251 = mem[_3547 + 96]
                        require uint128(mem[_3547 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7801) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8251 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8069 - 1)]
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3436 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3436) + 192
            mem[(32 * _3436) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6809 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3436) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6809) + (32 * _3436) + 224
            mem[(32 * _6809) + (32 * _3436) + mem[64] + 224] = mem[96]
            _10027 = mem[96]
            mem[(32 * _6809) + (32 * _3436) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6809) + (32 * _3436) + 256
            mem[(32 * _10027) + (32 * _6809) + (32 * _3436) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10379 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10027) + (32 * _6809) + (32 * _3436) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[mem[64] + 128] = (32 * _10379) + (32 * _10027) + (32 * _6809) + (32 * _3436) + 288
            mem[(32 * _10379) + (32 * _10027) + (32 * _6809) + (32 * _3436) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10635 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10379) + (32 * _10027) + (32 * _6809) + (32 * _3436) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return 160, 
                   (32 * _3436) + 192,
                   (32 * _6809) + (32 * _3436) + 224,
                   mem[mem[64] + 96],
                   (32 * _10379) + (32 * _10027) + (32 * _6809) + (32 * _3436) + 288,
                   mem[mem[64] + 160 len (32 * _10635) + (32 * _10379) + (32 * _10027) + (32 * _6809) + (32 * _3436) + 160]
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3551 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3551 len 128] = call.data[calldata.size len 128]
            s = 0
            while s < stor15.length:
                mem[0] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_code.size(sub_a0397cd5Address)
                staticcall sub_a0397cd5Address.markets(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = stor15[s]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[96]:
                    if ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3551 + 16 len 16]:
                            mem[_3551] = uint128(0 / incentive / 10^18)
                            mem[_3551 + 32] = uint128(s + 1)
                        if 0 > mem[_3551 + 80 len 16]:
                            mem[_3551 + 64] = 0
                            mem[_3551 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3551 + 16 len 16]:
                            mem[_3551] = uint128(0 / incentive / 10^18)
                            mem[_3551 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3551 + 80 len 16]:
                            mem[_3551 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3551 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if not ext_call.return_data[32]:
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3551 + 16 len 16]:
                                mem[_3551] = uint128(0 / incentive / 10^18)
                                mem[_3551 + 32] = uint128(s + 1)
                            if 0 > mem[_3551 + 80 len 16]:
                                mem[_3551 + 64] = 0
                                mem[_3551 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3551 + 16 len 16]:
                                mem[_3551] = uint128(0 / incentive / 10^18)
                                mem[_3551 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3551 + 80 len 16]:
                                mem[_3551 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3551 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3551 + 16 len 16]:
                                mem[_3551] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3551 + 32] = uint128(s + 1)
                            if 0 > mem[_3551 + 80 len 16]:
                                mem[_3551 + 64] = 0
                                mem[_3551 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3551 + 16 len 16]:
                                mem[_3551] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3551 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3551 + 80 len 16]:
                                mem[_3551 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3551 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3551 + 112 len 16]:
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
            else:
                _6910 = mem[_3551 + 96]
                require uint128(mem[_3551 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_6910 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_6910 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3551 + 16 len 16] >= uint128(mem[_3551 + 64]) / 2:
                    _7806 = mem[_3551 + 64]
                    require ext_call.return_data[0]
                    _8075 = mem[_3551 + 32]
                    require uint128(mem[_3551 + 32] - 1) < stor15.length
                    _8253 = mem[_3551 + 96]
                    require uint128(mem[_3551 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7806) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8253 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8075 - 1)]
                else:
                    _7807 = mem[_3551]
                    require ext_call.return_data[0]
                    _8076 = mem[_3551 + 32]
                    require uint128(mem[_3551 + 32] - 1) < stor15.length
                    _8255 = mem[_3551 + 96]
                    require uint128(mem[_3551 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 10^18 * uint128(_7807) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8255 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8076 - 1)]
            idx = idx + 1
            continue 
        _3437 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3439 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3439) + 192
        mem[(32 * _3439) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6813 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3439) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6813) + (32 * _3439) + 224
        mem[(32 * _6813) + (32 * _3439) + _3437 + 224] = mem[96]
        _10030 = mem[96]
        mem[(32 * _6813) + (32 * _3439) + _3437 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3437 + 96] = (32 * mem[96]) + (32 * _6813) + (32 * _3439) + 256
        mem[(32 * _10030) + (32 * _6813) + (32 * _3439) + _3437 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10382 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10030) + (32 * _6813) + (32 * _3439) + _3437 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3437 + 128] = (32 * _10382) + (32 * _10030) + (32 * _6813) + (32 * _3439) + 288
        mem[(32 * _10382) + (32 * _10030) + (32 * _6813) + (32 * _3439) + _3437 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10638 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10382) + (32 * _10030) + (32 * _6813) + (32 * _3439) + _3437 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10638) + (32 * _10382) + (32 * _10030) + (32 * _6813) + (32 * _3439) + _3437 + -mem[64] + 320
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        _3555 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3555 len 128] = call.data[calldata.size len 128]
                        s = 0
                        while s < stor15.length:
                            mem[0] = 15
                            require ext_code.size(stor15[s])
                            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require ext_code.size(sub_a0397cd5Address)
                            staticcall sub_a0397cd5Address.markets(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            mem[mem[64] + 4] = stor15[s]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[s]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[96]:
                                if ext_call.return_data[32]:
                                    if 0 / ext_call.return_data[32]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                        mem[_3555] = uint128(0 / incentive / 10^18)
                                        mem[_3555 + 32] = uint128(s + 1)
                                    if 0 > mem[_3555 + 80 len 16]:
                                        mem[_3555 + 64] = 0
                                        mem[_3555 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                        mem[_3555] = uint128(0 / incentive / 10^18)
                                        mem[_3555 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3555 + 80 len 16]:
                                        mem[_3555 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3555 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if not ext_call.return_data[32]:
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(0 / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                            mem[_3555] = uint128(0 / incentive / 10^18)
                                            mem[_3555 + 32] = uint128(s + 1)
                                        if 0 > mem[_3555 + 80 len 16]:
                                            mem[_3555 + 64] = 0
                                            mem[_3555 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                            mem[_3555] = uint128(0 / incentive / 10^18)
                                            mem[_3555 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3555 + 80 len 16]:
                                            mem[_3555 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3555 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    require incentive
                                    if not ext_call.return_data[64]:
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                            mem[_3555] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3555 + 32] = uint128(s + 1)
                                        if 0 > mem[_3555 + 80 len 16]:
                                            mem[_3555 + 64] = 0
                                            mem[_3555 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3555 + 16 len 16]:
                                            mem[_3555] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3555 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3555 + 80 len 16]:
                                            mem[_3555 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3555 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3555 + 112 len 16]:
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 0
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                        else:
                            _6912 = mem[_3555 + 96]
                            require uint128(mem[_3555 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_6912 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_6912 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3555 + 16 len 16] >= uint128(mem[_3555 + 64]) / 2:
                                _7812 = mem[_3555 + 64]
                                require ext_call.return_data[0]
                                _8082 = mem[_3555 + 32]
                                require uint128(mem[_3555 + 32] - 1) < stor15.length
                                _8257 = mem[_3555 + 96]
                                require uint128(mem[_3555 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7812) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8257 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8082 - 1)]
                            else:
                                _7813 = mem[_3555]
                                require ext_call.return_data[0]
                                _8083 = mem[_3555 + 32]
                                require uint128(mem[_3555 + 32] - 1) < stor15.length
                                _8259 = mem[_3555 + 96]
                                require uint128(mem[_3555 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = 10^18 * uint128(_7813) / ext_call.return_data[0]
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8259 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8083 - 1)]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3442 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3442) + 192
                    mem[(32 * _3442) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6817 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3442) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6817) + (32 * _3442) + 224
                    mem[(32 * _6817) + (32 * _3442) + mem[64] + 224] = mem[96]
                    _10033 = mem[96]
                    mem[(32 * _6817) + (32 * _3442) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6817) + (32 * _3442) + 256
                    mem[(32 * _10033) + (32 * _6817) + (32 * _3442) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10385 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10033) + (32 * _6817) + (32 * _3442) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[mem[64] + 128] = (32 * _10385) + (32 * _10033) + (32 * _6817) + (32 * _3442) + 288
                    mem[(32 * _10385) + (32 * _10033) + (32 * _6817) + (32 * _3442) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10641 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10385) + (32 * _10033) + (32 * _6817) + (32 * _3442) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return 160, 
                           (32 * _3442) + 192,
                           (32 * _6817) + (32 * _3442) + 224,
                           mem[mem[64] + 96],
                           (32 * _10385) + (32 * _10033) + (32 * _6817) + (32 * _3442) + 288,
                           mem[mem[64] + 160 len (32 * _10641) + (32 * _10385) + (32 * _10033) + (32 * _6817) + (32 * _3442) + 160]
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    _3559 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3559 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                    mem[_3559] = uint128(0 / incentive / 10^18)
                                    mem[_3559 + 32] = uint128(s + 1)
                                if 0 > mem[_3559 + 80 len 16]:
                                    mem[_3559 + 64] = 0
                                    mem[_3559 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                    mem[_3559] = uint128(0 / incentive / 10^18)
                                    mem[_3559 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3559 + 80 len 16]:
                                    mem[_3559 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3559 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                        mem[_3559] = uint128(0 / incentive / 10^18)
                                        mem[_3559 + 32] = uint128(s + 1)
                                    if 0 > mem[_3559 + 80 len 16]:
                                        mem[_3559 + 64] = 0
                                        mem[_3559 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                        mem[_3559] = uint128(0 / incentive / 10^18)
                                        mem[_3559 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3559 + 80 len 16]:
                                        mem[_3559 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3559 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                        mem[_3559] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3559 + 32] = uint128(s + 1)
                                    if 0 > mem[_3559 + 80 len 16]:
                                        mem[_3559 + 64] = 0
                                        mem[_3559 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3559 + 16 len 16]:
                                        mem[_3559] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3559 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3559 + 80 len 16]:
                                        mem[_3559 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3559 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3559 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6914 = mem[_3559 + 96]
                        require uint128(mem[_3559 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6914 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6914 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3559 + 16 len 16] >= uint128(mem[_3559 + 64]) / 2:
                            _7818 = mem[_3559 + 64]
                            require ext_call.return_data[0]
                            _8089 = mem[_3559 + 32]
                            require uint128(mem[_3559 + 32] - 1) < stor15.length
                            _8261 = mem[_3559 + 96]
                            require uint128(mem[_3559 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7818) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8261 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8089 - 1)]
                        else:
                            _7819 = mem[_3559]
                            require ext_call.return_data[0]
                            _8090 = mem[_3559 + 32]
                            require uint128(mem[_3559 + 32] - 1) < stor15.length
                            _8263 = mem[_3559 + 96]
                            require uint128(mem[_3559 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7819) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8263 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8090 - 1)]
                    idx = idx + 1
                    continue 
                _3443 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3445 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3445) + 192
                mem[(32 * _3445) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6821 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3445) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6821) + (32 * _3445) + 224
                mem[(32 * _6821) + (32 * _3445) + _3443 + 224] = mem[96]
                _10036 = mem[96]
                mem[(32 * _6821) + (32 * _3445) + _3443 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3443 + 96] = (32 * mem[96]) + (32 * _6821) + (32 * _3445) + 256
                mem[(32 * _10036) + (32 * _6821) + (32 * _3445) + _3443 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10388 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10036) + (32 * _6821) + (32 * _3445) + _3443 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3443 + 128] = (32 * _10388) + (32 * _10036) + (32 * _6821) + (32 * _3445) + 288
                mem[(32 * _10388) + (32 * _10036) + (32 * _6821) + (32 * _3445) + _3443 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10644 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10388) + (32 * _10036) + (32 * _6821) + (32 * _3445) + _3443 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10644) + (32 * _10388) + (32 * _10036) + (32 * _6821) + (32 * _3445) + _3443 + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3563 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3563 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                    mem[_3563] = uint128(0 / incentive / 10^18)
                                    mem[_3563 + 32] = uint128(s + 1)
                                if 0 > mem[_3563 + 80 len 16]:
                                    mem[_3563 + 64] = 0
                                    mem[_3563 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                    mem[_3563] = uint128(0 / incentive / 10^18)
                                    mem[_3563 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3563 + 80 len 16]:
                                    mem[_3563 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3563 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                        mem[_3563] = uint128(0 / incentive / 10^18)
                                        mem[_3563 + 32] = uint128(s + 1)
                                    if 0 > mem[_3563 + 80 len 16]:
                                        mem[_3563 + 64] = 0
                                        mem[_3563 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                        mem[_3563] = uint128(0 / incentive / 10^18)
                                        mem[_3563 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3563 + 80 len 16]:
                                        mem[_3563 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3563 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                        mem[_3563] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3563 + 32] = uint128(s + 1)
                                    if 0 > mem[_3563 + 80 len 16]:
                                        mem[_3563 + 64] = 0
                                        mem[_3563 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3563 + 16 len 16]:
                                        mem[_3563] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3563 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3563 + 80 len 16]:
                                        mem[_3563 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3563 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3563 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6916 = mem[_3563 + 96]
                        require uint128(mem[_3563 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6916 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6916 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3563 + 16 len 16] >= uint128(mem[_3563 + 64]) / 2:
                            _7824 = mem[_3563 + 64]
                            require ext_call.return_data[0]
                            _8096 = mem[_3563 + 32]
                            require uint128(mem[_3563 + 32] - 1) < stor15.length
                            _8265 = mem[_3563 + 96]
                            require uint128(mem[_3563 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7824) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8265 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8096 - 1)]
                        else:
                            _7825 = mem[_3563]
                            require ext_call.return_data[0]
                            _8097 = mem[_3563 + 32]
                            require uint128(mem[_3563 + 32] - 1) < stor15.length
                            _8267 = mem[_3563 + 96]
                            require uint128(mem[_3563 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7825) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8267 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8097 - 1)]
                    idx = idx + 1
                    continue 
                _3446 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3448 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3448) + 192
                mem[(32 * _3448) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6825 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3448) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6825) + (32 * _3448) + 224
                mem[(32 * _6825) + (32 * _3448) + _3446 + 224] = mem[96]
                _10039 = mem[96]
                mem[(32 * _6825) + (32 * _3448) + _3446 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3446 + 96] = (32 * mem[96]) + (32 * _6825) + (32 * _3448) + 256
                mem[(32 * _10039) + (32 * _6825) + (32 * _3448) + _3446 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10391 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10039) + (32 * _6825) + (32 * _3448) + _3446 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3446 + 128] = (32 * _10391) + (32 * _10039) + (32 * _6825) + (32 * _3448) + 288
                mem[(32 * _10391) + (32 * _10039) + (32 * _6825) + (32 * _3448) + _3446 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10647 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10391) + (32 * _10039) + (32 * _6825) + (32 * _3448) + _3446 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10647) + (32 * _10391) + (32 * _10039) + (32 * _6825) + (32 * _3448) + _3446 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3567 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3567 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                mem[_3567] = uint128(0 / incentive / 10^18)
                                mem[_3567 + 32] = uint128(s + 1)
                            if 0 > mem[_3567 + 80 len 16]:
                                mem[_3567 + 64] = 0
                                mem[_3567 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                mem[_3567] = uint128(0 / incentive / 10^18)
                                mem[_3567 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3567 + 80 len 16]:
                                mem[_3567 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3567 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                    mem[_3567] = uint128(0 / incentive / 10^18)
                                    mem[_3567 + 32] = uint128(s + 1)
                                if 0 > mem[_3567 + 80 len 16]:
                                    mem[_3567 + 64] = 0
                                    mem[_3567 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                    mem[_3567] = uint128(0 / incentive / 10^18)
                                    mem[_3567 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3567 + 80 len 16]:
                                    mem[_3567 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3567 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                    mem[_3567] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3567 + 32] = uint128(s + 1)
                                if 0 > mem[_3567 + 80 len 16]:
                                    mem[_3567 + 64] = 0
                                    mem[_3567 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3567 + 16 len 16]:
                                    mem[_3567] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3567 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3567 + 80 len 16]:
                                    mem[_3567 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3567 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3567 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6918 = mem[_3567 + 96]
                    require uint128(mem[_3567 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6918 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6918 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3567 + 16 len 16] >= uint128(mem[_3567 + 64]) / 2:
                        _7830 = mem[_3567 + 64]
                        require ext_call.return_data[0]
                        _8103 = mem[_3567 + 32]
                        require uint128(mem[_3567 + 32] - 1) < stor15.length
                        _8269 = mem[_3567 + 96]
                        require uint128(mem[_3567 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7830) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8269 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8103 - 1)]
                    else:
                        _7831 = mem[_3567]
                        require ext_call.return_data[0]
                        _8104 = mem[_3567 + 32]
                        require uint128(mem[_3567 + 32] - 1) < stor15.length
                        _8271 = mem[_3567 + 96]
                        require uint128(mem[_3567 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7831) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8271 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8104 - 1)]
                idx = idx + 1
                continue 
            _3449 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3451 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3451) + 192
            mem[(32 * _3451) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6829 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3451) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6829) + (32 * _3451) + 224
            mem[(32 * _6829) + (32 * _3451) + _3449 + 224] = mem[96]
            _10042 = mem[96]
            mem[(32 * _6829) + (32 * _3451) + _3449 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3449 + 96] = (32 * mem[96]) + (32 * _6829) + (32 * _3451) + 256
            mem[(32 * _10042) + (32 * _6829) + (32 * _3451) + _3449 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10394 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10042) + (32 * _6829) + (32 * _3451) + _3449 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3449 + 128] = (32 * _10394) + (32 * _10042) + (32 * _6829) + (32 * _3451) + 288
            mem[(32 * _10394) + (32 * _10042) + (32 * _6829) + (32 * _3451) + _3449 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10650 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10394) + (32 * _10042) + (32 * _6829) + (32 * _3451) + _3449 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10650) + (32 * _10394) + (32 * _10042) + (32 * _6829) + (32 * _3451) + _3449 + -mem[64] + 320
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3571 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3571 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                    mem[_3571] = uint128(0 / incentive / 10^18)
                                    mem[_3571 + 32] = uint128(s + 1)
                                if 0 > mem[_3571 + 80 len 16]:
                                    mem[_3571 + 64] = 0
                                    mem[_3571 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                    mem[_3571] = uint128(0 / incentive / 10^18)
                                    mem[_3571 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3571 + 80 len 16]:
                                    mem[_3571 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3571 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                        mem[_3571] = uint128(0 / incentive / 10^18)
                                        mem[_3571 + 32] = uint128(s + 1)
                                    if 0 > mem[_3571 + 80 len 16]:
                                        mem[_3571 + 64] = 0
                                        mem[_3571 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                        mem[_3571] = uint128(0 / incentive / 10^18)
                                        mem[_3571 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3571 + 80 len 16]:
                                        mem[_3571 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3571 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                        mem[_3571] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3571 + 32] = uint128(s + 1)
                                    if 0 > mem[_3571 + 80 len 16]:
                                        mem[_3571 + 64] = 0
                                        mem[_3571 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3571 + 16 len 16]:
                                        mem[_3571] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3571 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3571 + 80 len 16]:
                                        mem[_3571 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3571 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3571 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6920 = mem[_3571 + 96]
                        require uint128(mem[_3571 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6920 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6920 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3571 + 16 len 16] >= uint128(mem[_3571 + 64]) / 2:
                            _7836 = mem[_3571 + 64]
                            require ext_call.return_data[0]
                            _8110 = mem[_3571 + 32]
                            require uint128(mem[_3571 + 32] - 1) < stor15.length
                            _8273 = mem[_3571 + 96]
                            require uint128(mem[_3571 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7836) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8273 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8110 - 1)]
                        else:
                            _7837 = mem[_3571]
                            require ext_call.return_data[0]
                            _8111 = mem[_3571 + 32]
                            require uint128(mem[_3571 + 32] - 1) < stor15.length
                            _8275 = mem[_3571 + 96]
                            require uint128(mem[_3571 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7837) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8275 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8111 - 1)]
                    idx = idx + 1
                    continue 
                _3452 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3454 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3454) + 192
                mem[(32 * _3454) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6833 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3454) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6833) + (32 * _3454) + 224
                mem[(32 * _6833) + (32 * _3454) + _3452 + 224] = mem[96]
                _10045 = mem[96]
                mem[(32 * _6833) + (32 * _3454) + _3452 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3452 + 96] = (32 * mem[96]) + (32 * _6833) + (32 * _3454) + 256
                mem[(32 * _10045) + (32 * _6833) + (32 * _3454) + _3452 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10397 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10045) + (32 * _6833) + (32 * _3454) + _3452 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3452 + 128] = (32 * _10397) + (32 * _10045) + (32 * _6833) + (32 * _3454) + 288
                mem[(32 * _10397) + (32 * _10045) + (32 * _6833) + (32 * _3454) + _3452 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10653 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10397) + (32 * _10045) + (32 * _6833) + (32 * _3454) + _3452 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10653) + (32 * _10397) + (32 * _10045) + (32 * _6833) + (32 * _3454) + _3452 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3575 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3575 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                mem[_3575] = uint128(0 / incentive / 10^18)
                                mem[_3575 + 32] = uint128(s + 1)
                            if 0 > mem[_3575 + 80 len 16]:
                                mem[_3575 + 64] = 0
                                mem[_3575 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                mem[_3575] = uint128(0 / incentive / 10^18)
                                mem[_3575 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3575 + 80 len 16]:
                                mem[_3575 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3575 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                    mem[_3575] = uint128(0 / incentive / 10^18)
                                    mem[_3575 + 32] = uint128(s + 1)
                                if 0 > mem[_3575 + 80 len 16]:
                                    mem[_3575 + 64] = 0
                                    mem[_3575 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                    mem[_3575] = uint128(0 / incentive / 10^18)
                                    mem[_3575 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3575 + 80 len 16]:
                                    mem[_3575 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3575 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                    mem[_3575] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3575 + 32] = uint128(s + 1)
                                if 0 > mem[_3575 + 80 len 16]:
                                    mem[_3575 + 64] = 0
                                    mem[_3575 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3575 + 16 len 16]:
                                    mem[_3575] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3575 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3575 + 80 len 16]:
                                    mem[_3575 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3575 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3575 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6922 = mem[_3575 + 96]
                    require uint128(mem[_3575 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6922 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6922 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3575 + 16 len 16] >= uint128(mem[_3575 + 64]) / 2:
                        _7842 = mem[_3575 + 64]
                        require ext_call.return_data[0]
                        _8117 = mem[_3575 + 32]
                        require uint128(mem[_3575 + 32] - 1) < stor15.length
                        _8277 = mem[_3575 + 96]
                        require uint128(mem[_3575 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7842) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8277 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8117 - 1)]
                    else:
                        _7843 = mem[_3575]
                        require ext_call.return_data[0]
                        _8118 = mem[_3575 + 32]
                        require uint128(mem[_3575 + 32] - 1) < stor15.length
                        _8279 = mem[_3575 + 96]
                        require uint128(mem[_3575 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7843) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8279 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8118 - 1)]
                idx = idx + 1
                continue 
            _3455 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3457 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3457) + 192
            mem[(32 * _3457) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6837 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3457) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6837) + (32 * _3457) + 224
            mem[(32 * _6837) + (32 * _3457) + _3455 + 224] = mem[96]
            _10048 = mem[96]
            mem[(32 * _6837) + (32 * _3457) + _3455 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3455 + 96] = (32 * mem[96]) + (32 * _6837) + (32 * _3457) + 256
            mem[(32 * _10048) + (32 * _6837) + (32 * _3457) + _3455 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10400 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10048) + (32 * _6837) + (32 * _3457) + _3455 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3455 + 128] = (32 * _10400) + (32 * _10048) + (32 * _6837) + (32 * _3457) + 288
            mem[(32 * _10400) + (32 * _10048) + (32 * _6837) + (32 * _3457) + _3455 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10656 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10400) + (32 * _10048) + (32 * _6837) + (32 * _3457) + _3455 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10656) + (32 * _10400) + (32 * _10048) + (32 * _6837) + (32 * _3457) + _3455 + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3579 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3579 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                mem[_3579] = uint128(0 / incentive / 10^18)
                                mem[_3579 + 32] = uint128(s + 1)
                            if 0 > mem[_3579 + 80 len 16]:
                                mem[_3579 + 64] = 0
                                mem[_3579 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                mem[_3579] = uint128(0 / incentive / 10^18)
                                mem[_3579 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3579 + 80 len 16]:
                                mem[_3579 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3579 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                    mem[_3579] = uint128(0 / incentive / 10^18)
                                    mem[_3579 + 32] = uint128(s + 1)
                                if 0 > mem[_3579 + 80 len 16]:
                                    mem[_3579 + 64] = 0
                                    mem[_3579 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                    mem[_3579] = uint128(0 / incentive / 10^18)
                                    mem[_3579 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3579 + 80 len 16]:
                                    mem[_3579 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3579 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                    mem[_3579] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3579 + 32] = uint128(s + 1)
                                if 0 > mem[_3579 + 80 len 16]:
                                    mem[_3579 + 64] = 0
                                    mem[_3579 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3579 + 16 len 16]:
                                    mem[_3579] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3579 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3579 + 80 len 16]:
                                    mem[_3579 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3579 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3579 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6924 = mem[_3579 + 96]
                    require uint128(mem[_3579 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6924 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6924 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3579 + 16 len 16] >= uint128(mem[_3579 + 64]) / 2:
                        _7848 = mem[_3579 + 64]
                        require ext_call.return_data[0]
                        _8124 = mem[_3579 + 32]
                        require uint128(mem[_3579 + 32] - 1) < stor15.length
                        _8281 = mem[_3579 + 96]
                        require uint128(mem[_3579 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7848) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8281 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8124 - 1)]
                    else:
                        _7849 = mem[_3579]
                        require ext_call.return_data[0]
                        _8125 = mem[_3579 + 32]
                        require uint128(mem[_3579 + 32] - 1) < stor15.length
                        _8283 = mem[_3579 + 96]
                        require uint128(mem[_3579 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7849) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8283 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8125 - 1)]
                idx = idx + 1
                continue 
            _3458 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3460 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3460) + 192
            mem[(32 * _3460) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6841 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3460) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6841) + (32 * _3460) + 224
            mem[(32 * _6841) + (32 * _3460) + _3458 + 224] = mem[96]
            _10051 = mem[96]
            mem[(32 * _6841) + (32 * _3460) + _3458 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3458 + 96] = (32 * mem[96]) + (32 * _6841) + (32 * _3460) + 256
            mem[(32 * _10051) + (32 * _6841) + (32 * _3460) + _3458 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10403 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10051) + (32 * _6841) + (32 * _3460) + _3458 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3458 + 128] = (32 * _10403) + (32 * _10051) + (32 * _6841) + (32 * _3460) + 288
            mem[(32 * _10403) + (32 * _10051) + (32 * _6841) + (32 * _3460) + _3458 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10659 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10403) + (32 * _10051) + (32 * _6841) + (32 * _3460) + _3458 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10659) + (32 * _10403) + (32 * _10051) + (32 * _6841) + (32 * _3460) + _3458 + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3583 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3583 len 128] = call.data[calldata.size len 128]
            s = 0
            while s < stor15.length:
                mem[0] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_code.size(sub_a0397cd5Address)
                staticcall sub_a0397cd5Address.markets(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = stor15[s]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[96]:
                    if ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3583 + 16 len 16]:
                            mem[_3583] = uint128(0 / incentive / 10^18)
                            mem[_3583 + 32] = uint128(s + 1)
                        if 0 > mem[_3583 + 80 len 16]:
                            mem[_3583 + 64] = 0
                            mem[_3583 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3583 + 16 len 16]:
                            mem[_3583] = uint128(0 / incentive / 10^18)
                            mem[_3583 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3583 + 80 len 16]:
                            mem[_3583 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3583 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if not ext_call.return_data[32]:
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3583 + 16 len 16]:
                                mem[_3583] = uint128(0 / incentive / 10^18)
                                mem[_3583 + 32] = uint128(s + 1)
                            if 0 > mem[_3583 + 80 len 16]:
                                mem[_3583 + 64] = 0
                                mem[_3583 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3583 + 16 len 16]:
                                mem[_3583] = uint128(0 / incentive / 10^18)
                                mem[_3583 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3583 + 80 len 16]:
                                mem[_3583 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3583 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3583 + 16 len 16]:
                                mem[_3583] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3583 + 32] = uint128(s + 1)
                            if 0 > mem[_3583 + 80 len 16]:
                                mem[_3583 + 64] = 0
                                mem[_3583 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3583 + 16 len 16]:
                                mem[_3583] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3583 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3583 + 80 len 16]:
                                mem[_3583 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3583 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3583 + 112 len 16]:
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
            else:
                _6926 = mem[_3583 + 96]
                require uint128(mem[_3583 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_6926 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_6926 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3583 + 16 len 16] >= uint128(mem[_3583 + 64]) / 2:
                    _7854 = mem[_3583 + 64]
                    require ext_call.return_data[0]
                    _8131 = mem[_3583 + 32]
                    require uint128(mem[_3583 + 32] - 1) < stor15.length
                    _8285 = mem[_3583 + 96]
                    require uint128(mem[_3583 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7854) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8285 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8131 - 1)]
                else:
                    _7855 = mem[_3583]
                    require ext_call.return_data[0]
                    _8132 = mem[_3583 + 32]
                    require uint128(mem[_3583 + 32] - 1) < stor15.length
                    _8287 = mem[_3583 + 96]
                    require uint128(mem[_3583 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 10^18 * uint128(_7855) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8287 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8132 - 1)]
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3463 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3463) + 192
        mem[(32 * _3463) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6845 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3463) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6845) + (32 * _3463) + 224
        mem[(32 * _6845) + (32 * _3463) + mem[64] + 224] = mem[96]
        _10054 = mem[96]
        mem[(32 * _6845) + (32 * _3463) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6845) + (32 * _3463) + 256
        mem[(32 * _10054) + (32 * _6845) + (32 * _3463) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10406 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10054) + (32 * _6845) + (32 * _3463) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[mem[64] + 128] = (32 * _10406) + (32 * _10054) + (32 * _6845) + (32 * _3463) + 288
        mem[(32 * _10406) + (32 * _10054) + (32 * _6845) + (32 * _3463) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10662 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10406) + (32 * _10054) + (32 * _6845) + (32 * _3463) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return 160, 
               (32 * _3463) + 192,
               (32 * _6845) + (32 * _3463) + 224,
               mem[mem[64] + 96],
               (32 * _10406) + (32 * _10054) + (32 * _6845) + (32 * _3463) + 288,
               mem[mem[64] + 160 len (32 * _10662) + (32 * _10406) + (32 * _10054) + (32 * _6845) + (32 * _3463) + 160]
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3587 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3587 len 128] = call.data[calldata.size len 128]
                    s = 0
                    while s < stor15.length:
                        mem[0] = 15
                        require ext_code.size(stor15[s])
                        staticcall stor15[s].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require ext_code.size(sub_a0397cd5Address)
                        staticcall sub_a0397cd5Address.markets(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        mem[mem[64] + 4] = stor15[s]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[s]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[96]:
                            if ext_call.return_data[32]:
                                if 0 / ext_call.return_data[32]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                    mem[_3587] = uint128(0 / incentive / 10^18)
                                    mem[_3587 + 32] = uint128(s + 1)
                                if 0 > mem[_3587 + 80 len 16]:
                                    mem[_3587 + 64] = 0
                                    mem[_3587 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                    mem[_3587] = uint128(0 / incentive / 10^18)
                                    mem[_3587 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3587 + 80 len 16]:
                                    mem[_3587 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3587 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if not ext_call.return_data[32]:
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(0 / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                        mem[_3587] = uint128(0 / incentive / 10^18)
                                        mem[_3587 + 32] = uint128(s + 1)
                                    if 0 > mem[_3587 + 80 len 16]:
                                        mem[_3587 + 64] = 0
                                        mem[_3587 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                        mem[_3587] = uint128(0 / incentive / 10^18)
                                        mem[_3587 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3587 + 80 len 16]:
                                        mem[_3587 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3587 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                require incentive
                                if not ext_call.return_data[64]:
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                        mem[_3587] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3587 + 32] = uint128(s + 1)
                                    if 0 > mem[_3587 + 80 len 16]:
                                        mem[_3587 + 64] = 0
                                        mem[_3587 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3587 + 16 len 16]:
                                        mem[_3587] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3587 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3587 + 80 len 16]:
                                        mem[_3587 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3587 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3587 + 112 len 16]:
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 0
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                    else:
                        _6928 = mem[_3587 + 96]
                        require uint128(mem[_3587 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_6928 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_6928 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3587 + 16 len 16] >= uint128(mem[_3587 + 64]) / 2:
                            _7860 = mem[_3587 + 64]
                            require ext_call.return_data[0]
                            _8138 = mem[_3587 + 32]
                            require uint128(mem[_3587 + 32] - 1) < stor15.length
                            _8289 = mem[_3587 + 96]
                            require uint128(mem[_3587 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7860) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8289 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8138 - 1)]
                        else:
                            _7861 = mem[_3587]
                            require ext_call.return_data[0]
                            _8139 = mem[_3587 + 32]
                            require uint128(mem[_3587 + 32] - 1) < stor15.length
                            _8291 = mem[_3587 + 96]
                            require uint128(mem[_3587 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = 10^18 * uint128(_7861) / ext_call.return_data[0]
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8291 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8139 - 1)]
                    idx = idx + 1
                    continue 
                _3464 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3466 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3466) + 192
                mem[(32 * _3466) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6849 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3466) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6849) + (32 * _3466) + 224
                mem[(32 * _6849) + (32 * _3466) + _3464 + 224] = mem[96]
                _10057 = mem[96]
                mem[(32 * _6849) + (32 * _3466) + _3464 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3464 + 96] = (32 * mem[96]) + (32 * _6849) + (32 * _3466) + 256
                mem[(32 * _10057) + (32 * _6849) + (32 * _3466) + _3464 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10409 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10057) + (32 * _6849) + (32 * _3466) + _3464 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3464 + 128] = (32 * _10409) + (32 * _10057) + (32 * _6849) + (32 * _3466) + 288
                mem[(32 * _10409) + (32 * _10057) + (32 * _6849) + (32 * _3466) + _3464 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10665 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10409) + (32 * _10057) + (32 * _6849) + (32 * _3466) + _3464 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10665) + (32 * _10409) + (32 * _10057) + (32 * _6849) + (32 * _3466) + _3464 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3591 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3591 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                mem[_3591] = uint128(0 / incentive / 10^18)
                                mem[_3591 + 32] = uint128(s + 1)
                            if 0 > mem[_3591 + 80 len 16]:
                                mem[_3591 + 64] = 0
                                mem[_3591 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                mem[_3591] = uint128(0 / incentive / 10^18)
                                mem[_3591 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3591 + 80 len 16]:
                                mem[_3591 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3591 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                    mem[_3591] = uint128(0 / incentive / 10^18)
                                    mem[_3591 + 32] = uint128(s + 1)
                                if 0 > mem[_3591 + 80 len 16]:
                                    mem[_3591 + 64] = 0
                                    mem[_3591 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                    mem[_3591] = uint128(0 / incentive / 10^18)
                                    mem[_3591 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3591 + 80 len 16]:
                                    mem[_3591 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3591 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                    mem[_3591] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3591 + 32] = uint128(s + 1)
                                if 0 > mem[_3591 + 80 len 16]:
                                    mem[_3591 + 64] = 0
                                    mem[_3591 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3591 + 16 len 16]:
                                    mem[_3591] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3591 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3591 + 80 len 16]:
                                    mem[_3591 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3591 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3591 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6930 = mem[_3591 + 96]
                    require uint128(mem[_3591 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6930 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6930 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3591 + 16 len 16] >= uint128(mem[_3591 + 64]) / 2:
                        _7866 = mem[_3591 + 64]
                        require ext_call.return_data[0]
                        _8145 = mem[_3591 + 32]
                        require uint128(mem[_3591 + 32] - 1) < stor15.length
                        _8293 = mem[_3591 + 96]
                        require uint128(mem[_3591 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7866) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8293 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8145 - 1)]
                    else:
                        _7867 = mem[_3591]
                        require ext_call.return_data[0]
                        _8146 = mem[_3591 + 32]
                        require uint128(mem[_3591 + 32] - 1) < stor15.length
                        _8295 = mem[_3591 + 96]
                        require uint128(mem[_3591 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7867) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8295 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8146 - 1)]
                idx = idx + 1
                continue 
            _3467 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3469 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3469) + 192
            mem[(32 * _3469) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6853 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3469) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6853) + (32 * _3469) + 224
            mem[(32 * _6853) + (32 * _3469) + _3467 + 224] = mem[96]
            _10060 = mem[96]
            mem[(32 * _6853) + (32 * _3469) + _3467 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3467 + 96] = (32 * mem[96]) + (32 * _6853) + (32 * _3469) + 256
            mem[(32 * _10060) + (32 * _6853) + (32 * _3469) + _3467 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10412 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10060) + (32 * _6853) + (32 * _3469) + _3467 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3467 + 128] = (32 * _10412) + (32 * _10060) + (32 * _6853) + (32 * _3469) + 288
            mem[(32 * _10412) + (32 * _10060) + (32 * _6853) + (32 * _3469) + _3467 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10668 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10412) + (32 * _10060) + (32 * _6853) + (32 * _3469) + _3467 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10668) + (32 * _10412) + (32 * _10060) + (32 * _6853) + (32 * _3469) + _3467 + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3595 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3595 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                mem[_3595] = uint128(0 / incentive / 10^18)
                                mem[_3595 + 32] = uint128(s + 1)
                            if 0 > mem[_3595 + 80 len 16]:
                                mem[_3595 + 64] = 0
                                mem[_3595 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                mem[_3595] = uint128(0 / incentive / 10^18)
                                mem[_3595 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3595 + 80 len 16]:
                                mem[_3595 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3595 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                    mem[_3595] = uint128(0 / incentive / 10^18)
                                    mem[_3595 + 32] = uint128(s + 1)
                                if 0 > mem[_3595 + 80 len 16]:
                                    mem[_3595 + 64] = 0
                                    mem[_3595 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                    mem[_3595] = uint128(0 / incentive / 10^18)
                                    mem[_3595 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3595 + 80 len 16]:
                                    mem[_3595 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3595 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                    mem[_3595] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3595 + 32] = uint128(s + 1)
                                if 0 > mem[_3595 + 80 len 16]:
                                    mem[_3595 + 64] = 0
                                    mem[_3595 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3595 + 16 len 16]:
                                    mem[_3595] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3595 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3595 + 80 len 16]:
                                    mem[_3595 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3595 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3595 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6932 = mem[_3595 + 96]
                    require uint128(mem[_3595 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6932 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6932 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3595 + 16 len 16] >= uint128(mem[_3595 + 64]) / 2:
                        _7872 = mem[_3595 + 64]
                        require ext_call.return_data[0]
                        _8152 = mem[_3595 + 32]
                        require uint128(mem[_3595 + 32] - 1) < stor15.length
                        _8297 = mem[_3595 + 96]
                        require uint128(mem[_3595 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7872) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8297 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8152 - 1)]
                    else:
                        _7873 = mem[_3595]
                        require ext_call.return_data[0]
                        _8153 = mem[_3595 + 32]
                        require uint128(mem[_3595 + 32] - 1) < stor15.length
                        _8299 = mem[_3595 + 96]
                        require uint128(mem[_3595 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7873) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8299 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8153 - 1)]
                idx = idx + 1
                continue 
            _3470 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3472 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3472) + 192
            mem[(32 * _3472) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6857 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3472) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6857) + (32 * _3472) + 224
            mem[(32 * _6857) + (32 * _3472) + _3470 + 224] = mem[96]
            _10063 = mem[96]
            mem[(32 * _6857) + (32 * _3472) + _3470 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3470 + 96] = (32 * mem[96]) + (32 * _6857) + (32 * _3472) + 256
            mem[(32 * _10063) + (32 * _6857) + (32 * _3472) + _3470 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10415 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10063) + (32 * _6857) + (32 * _3472) + _3470 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3470 + 128] = (32 * _10415) + (32 * _10063) + (32 * _6857) + (32 * _3472) + 288
            mem[(32 * _10415) + (32 * _10063) + (32 * _6857) + (32 * _3472) + _3470 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10671 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10415) + (32 * _10063) + (32 * _6857) + (32 * _3472) + _3470 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10671) + (32 * _10415) + (32 * _10063) + (32 * _6857) + (32 * _3472) + _3470 + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3599 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3599 len 128] = call.data[calldata.size len 128]
            s = 0
            while s < stor15.length:
                mem[0] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_code.size(sub_a0397cd5Address)
                staticcall sub_a0397cd5Address.markets(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = stor15[s]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[96]:
                    if ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3599 + 16 len 16]:
                            mem[_3599] = uint128(0 / incentive / 10^18)
                            mem[_3599 + 32] = uint128(s + 1)
                        if 0 > mem[_3599 + 80 len 16]:
                            mem[_3599 + 64] = 0
                            mem[_3599 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3599 + 16 len 16]:
                            mem[_3599] = uint128(0 / incentive / 10^18)
                            mem[_3599 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3599 + 80 len 16]:
                            mem[_3599 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3599 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if not ext_call.return_data[32]:
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3599 + 16 len 16]:
                                mem[_3599] = uint128(0 / incentive / 10^18)
                                mem[_3599 + 32] = uint128(s + 1)
                            if 0 > mem[_3599 + 80 len 16]:
                                mem[_3599 + 64] = 0
                                mem[_3599 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3599 + 16 len 16]:
                                mem[_3599] = uint128(0 / incentive / 10^18)
                                mem[_3599 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3599 + 80 len 16]:
                                mem[_3599 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3599 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3599 + 16 len 16]:
                                mem[_3599] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3599 + 32] = uint128(s + 1)
                            if 0 > mem[_3599 + 80 len 16]:
                                mem[_3599 + 64] = 0
                                mem[_3599 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3599 + 16 len 16]:
                                mem[_3599] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3599 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3599 + 80 len 16]:
                                mem[_3599 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3599 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3599 + 112 len 16]:
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
            else:
                _6934 = mem[_3599 + 96]
                require uint128(mem[_3599 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_6934 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_6934 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3599 + 16 len 16] >= uint128(mem[_3599 + 64]) / 2:
                    _7878 = mem[_3599 + 64]
                    require ext_call.return_data[0]
                    _8159 = mem[_3599 + 32]
                    require uint128(mem[_3599 + 32] - 1) < stor15.length
                    _8301 = mem[_3599 + 96]
                    require uint128(mem[_3599 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7878) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8301 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8159 - 1)]
                else:
                    _7879 = mem[_3599]
                    require ext_call.return_data[0]
                    _8160 = mem[_3599 + 32]
                    require uint128(mem[_3599 + 32] - 1) < stor15.length
                    _8303 = mem[_3599 + 96]
                    require uint128(mem[_3599 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 10^18 * uint128(_7879) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8303 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8160 - 1)]
            idx = idx + 1
            continue 
        _3473 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3475 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3475) + 192
        mem[(32 * _3475) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6861 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3475) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6861) + (32 * _3475) + 224
        mem[(32 * _6861) + (32 * _3475) + _3473 + 224] = mem[96]
        _10066 = mem[96]
        mem[(32 * _6861) + (32 * _3475) + _3473 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3473 + 96] = (32 * mem[96]) + (32 * _6861) + (32 * _3475) + 256
        mem[(32 * _10066) + (32 * _6861) + (32 * _3475) + _3473 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10418 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10066) + (32 * _6861) + (32 * _3475) + _3473 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3473 + 128] = (32 * _10418) + (32 * _10066) + (32 * _6861) + (32 * _3475) + 288
        mem[(32 * _10418) + (32 * _10066) + (32 * _6861) + (32 * _3475) + _3473 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10674 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10418) + (32 * _10066) + (32 * _6861) + (32 * _3475) + _3473 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10674) + (32 * _10418) + (32 * _10066) + (32 * _6861) + (32 * _3475) + _3473 + -mem[64] + 320
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3603 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3603 len 128] = call.data[calldata.size len 128]
                s = 0
                while s < stor15.length:
                    mem[0] = 15
                    require ext_code.size(stor15[s])
                    staticcall stor15[s].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require ext_code.size(sub_a0397cd5Address)
                    staticcall sub_a0397cd5Address.markets(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    mem[mem[64] + 4] = stor15[s]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[s]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[96]:
                        if ext_call.return_data[32]:
                            if 0 / ext_call.return_data[32]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                mem[_3603] = uint128(0 / incentive / 10^18)
                                mem[_3603 + 32] = uint128(s + 1)
                            if 0 > mem[_3603 + 80 len 16]:
                                mem[_3603 + 64] = 0
                                mem[_3603 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                mem[_3603] = uint128(0 / incentive / 10^18)
                                mem[_3603 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3603 + 80 len 16]:
                                mem[_3603 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3603 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if not ext_call.return_data[32]:
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(0 / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                    mem[_3603] = uint128(0 / incentive / 10^18)
                                    mem[_3603 + 32] = uint128(s + 1)
                                if 0 > mem[_3603 + 80 len 16]:
                                    mem[_3603 + 64] = 0
                                    mem[_3603 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                    mem[_3603] = uint128(0 / incentive / 10^18)
                                    mem[_3603 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3603 + 80 len 16]:
                                    mem[_3603 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3603 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            require incentive
                            if not ext_call.return_data[64]:
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                    mem[_3603] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3603 + 32] = uint128(s + 1)
                                if 0 > mem[_3603 + 80 len 16]:
                                    mem[_3603 + 64] = 0
                                    mem[_3603 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3603 + 16 len 16]:
                                    mem[_3603] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3603 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3603 + 80 len 16]:
                                    mem[_3603 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3603 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3603 + 112 len 16]:
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 0
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
                else:
                    _6936 = mem[_3603 + 96]
                    require uint128(mem[_3603 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_6936 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_6936 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3603 + 16 len 16] >= uint128(mem[_3603 + 64]) / 2:
                        _7884 = mem[_3603 + 64]
                        require ext_call.return_data[0]
                        _8166 = mem[_3603 + 32]
                        require uint128(mem[_3603 + 32] - 1) < stor15.length
                        _8305 = mem[_3603 + 96]
                        require uint128(mem[_3603 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7884) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8305 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8166 - 1)]
                    else:
                        _7885 = mem[_3603]
                        require ext_call.return_data[0]
                        _8167 = mem[_3603 + 32]
                        require uint128(mem[_3603 + 32] - 1) < stor15.length
                        _8307 = mem[_3603 + 96]
                        require uint128(mem[_3603 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = 10^18 * uint128(_7885) / ext_call.return_data[0]
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8307 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8167 - 1)]
                idx = idx + 1
                continue 
            _3476 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3478 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3478) + 192
            mem[(32 * _3478) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6865 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3478) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6865) + (32 * _3478) + 224
            mem[(32 * _6865) + (32 * _3478) + _3476 + 224] = mem[96]
            _10069 = mem[96]
            mem[(32 * _6865) + (32 * _3478) + _3476 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3476 + 96] = (32 * mem[96]) + (32 * _6865) + (32 * _3478) + 256
            mem[(32 * _10069) + (32 * _6865) + (32 * _3478) + _3476 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10421 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10069) + (32 * _6865) + (32 * _3478) + _3476 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3476 + 128] = (32 * _10421) + (32 * _10069) + (32 * _6865) + (32 * _3478) + 288
            mem[(32 * _10421) + (32 * _10069) + (32 * _6865) + (32 * _3478) + _3476 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10677 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10421) + (32 * _10069) + (32 * _6865) + (32 * _3478) + _3476 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10677) + (32 * _10421) + (32 * _10069) + (32 * _6865) + (32 * _3478) + _3476 + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3607 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3607 len 128] = call.data[calldata.size len 128]
            s = 0
            while s < stor15.length:
                mem[0] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_code.size(sub_a0397cd5Address)
                staticcall sub_a0397cd5Address.markets(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = stor15[s]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[96]:
                    if ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3607 + 16 len 16]:
                            mem[_3607] = uint128(0 / incentive / 10^18)
                            mem[_3607 + 32] = uint128(s + 1)
                        if 0 > mem[_3607 + 80 len 16]:
                            mem[_3607 + 64] = 0
                            mem[_3607 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3607 + 16 len 16]:
                            mem[_3607] = uint128(0 / incentive / 10^18)
                            mem[_3607 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3607 + 80 len 16]:
                            mem[_3607 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3607 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if not ext_call.return_data[32]:
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3607 + 16 len 16]:
                                mem[_3607] = uint128(0 / incentive / 10^18)
                                mem[_3607 + 32] = uint128(s + 1)
                            if 0 > mem[_3607 + 80 len 16]:
                                mem[_3607 + 64] = 0
                                mem[_3607 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3607 + 16 len 16]:
                                mem[_3607] = uint128(0 / incentive / 10^18)
                                mem[_3607 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3607 + 80 len 16]:
                                mem[_3607 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3607 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3607 + 16 len 16]:
                                mem[_3607] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3607 + 32] = uint128(s + 1)
                            if 0 > mem[_3607 + 80 len 16]:
                                mem[_3607 + 64] = 0
                                mem[_3607 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3607 + 16 len 16]:
                                mem[_3607] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3607 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3607 + 80 len 16]:
                                mem[_3607 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3607 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3607 + 112 len 16]:
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
            else:
                _6938 = mem[_3607 + 96]
                require uint128(mem[_3607 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_6938 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_6938 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3607 + 16 len 16] >= uint128(mem[_3607 + 64]) / 2:
                    _7890 = mem[_3607 + 64]
                    require ext_call.return_data[0]
                    _8173 = mem[_3607 + 32]
                    require uint128(mem[_3607 + 32] - 1) < stor15.length
                    _8309 = mem[_3607 + 96]
                    require uint128(mem[_3607 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7890) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8309 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8173 - 1)]
                else:
                    _7891 = mem[_3607]
                    require ext_call.return_data[0]
                    _8174 = mem[_3607 + 32]
                    require uint128(mem[_3607 + 32] - 1) < stor15.length
                    _8311 = mem[_3607 + 96]
                    require uint128(mem[_3607 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 10^18 * uint128(_7891) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8311 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8174 - 1)]
            idx = idx + 1
            continue 
        _3479 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3481 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3481) + 192
        mem[(32 * _3481) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6869 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3481) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6869) + (32 * _3481) + 224
        mem[(32 * _6869) + (32 * _3481) + _3479 + 224] = mem[96]
        _10072 = mem[96]
        mem[(32 * _6869) + (32 * _3481) + _3479 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3479 + 96] = (32 * mem[96]) + (32 * _6869) + (32 * _3481) + 256
        mem[(32 * _10072) + (32 * _6869) + (32 * _3481) + _3479 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10424 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10072) + (32 * _6869) + (32 * _3481) + _3479 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3479 + 128] = (32 * _10424) + (32 * _10072) + (32 * _6869) + (32 * _3481) + 288
        mem[(32 * _10424) + (32 * _10072) + (32 * _6869) + (32 * _3481) + _3479 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10680 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10424) + (32 * _10072) + (32 * _6869) + (32 * _3481) + _3479 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10680) + (32 * _10424) + (32 * _10072) + (32 * _6869) + (32 * _3481) + _3479 + -mem[64] + 320
    mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[64] = (164 * ('cd', 4).length) + 256
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _3611 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3611 len 128] = call.data[calldata.size len 128]
            s = 0
            while s < stor15.length:
                mem[0] = 15
                require ext_code.size(stor15[s])
                staticcall stor15[s].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require ext_code.size(sub_a0397cd5Address)
                staticcall sub_a0397cd5Address.markets(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                mem[mem[64] + 4] = stor15[s]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[96]:
                    if ext_call.return_data[32]:
                        if 0 / ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3611 + 16 len 16]:
                            mem[_3611] = uint128(0 / incentive / 10^18)
                            mem[_3611 + 32] = uint128(s + 1)
                        if 0 > mem[_3611 + 80 len 16]:
                            mem[_3611 + 64] = 0
                            mem[_3611 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3611 + 16 len 16]:
                            mem[_3611] = uint128(0 / incentive / 10^18)
                            mem[_3611 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3611 + 80 len 16]:
                            mem[_3611 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3611 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if not ext_call.return_data[32]:
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(0 / incentive / 10^18) > mem[_3611 + 16 len 16]:
                                mem[_3611] = uint128(0 / incentive / 10^18)
                                mem[_3611 + 32] = uint128(s + 1)
                            if 0 > mem[_3611 + 80 len 16]:
                                mem[_3611 + 64] = 0
                                mem[_3611 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3611 + 16 len 16]:
                                mem[_3611] = uint128(0 / incentive / 10^18)
                                mem[_3611 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3611 + 80 len 16]:
                                mem[_3611 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3611 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        require incentive
                        if not ext_call.return_data[64]:
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3611 + 16 len 16]:
                                mem[_3611] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3611 + 32] = uint128(s + 1)
                            if 0 > mem[_3611 + 80 len 16]:
                                mem[_3611 + 64] = 0
                                mem[_3611 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3611 + 16 len 16]:
                                mem[_3611] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3611 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3611 + 80 len 16]:
                                mem[_3611 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3611 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3611 + 112 len 16]:
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 0
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
            else:
                _6940 = mem[_3611 + 96]
                require uint128(mem[_3611 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_6940 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_6940 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3611 + 16 len 16] >= uint128(mem[_3611 + 64]) / 2:
                    _7896 = mem[_3611 + 64]
                    require ext_call.return_data[0]
                    _8180 = mem[_3611 + 32]
                    require uint128(mem[_3611 + 32] - 1) < stor15.length
                    _8313 = mem[_3611 + 96]
                    require uint128(mem[_3611 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7896) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8313 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8180 - 1)]
                else:
                    _7897 = mem[_3611]
                    require ext_call.return_data[0]
                    _8181 = mem[_3611 + 32]
                    require uint128(mem[_3611 + 32] - 1) < stor15.length
                    _8315 = mem[_3611 + 96]
                    require uint128(mem[_3611 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = 10^18 * uint128(_7897) / ext_call.return_data[0]
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8315 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8181 - 1)]
            idx = idx + 1
            continue 
        _3482 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3484 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3484) + 192
        mem[(32 * _3484) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6873 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3484) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6873) + (32 * _3484) + 224
        mem[(32 * _6873) + (32 * _3484) + _3482 + 224] = mem[96]
        _10075 = mem[96]
        mem[(32 * _6873) + (32 * _3484) + _3482 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3482 + 96] = (32 * mem[96]) + (32 * _6873) + (32 * _3484) + 256
        mem[(32 * _10075) + (32 * _6873) + (32 * _3484) + _3482 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10427 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10075) + (32 * _6873) + (32 * _3484) + _3482 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3482 + 128] = (32 * _10427) + (32 * _10075) + (32 * _6873) + (32 * _3484) + 288
        mem[(32 * _10427) + (32 * _10075) + (32 * _6873) + (32 * _3484) + _3482 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10683 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10427) + (32 * _10075) + (32 * _6873) + (32 * _3484) + _3482 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10683) + (32 * _10427) + (32 * _10075) + (32 * _6873) + (32 * _3484) + _3482 + -mem[64] + 320
    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        _3615 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3615 len 128] = call.data[calldata.size len 128]
        s = 0
        while s < stor15.length:
            mem[0] = 15
            require ext_code.size(stor15[s])
            staticcall stor15[s].getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            require ext_code.size(sub_a0397cd5Address)
            staticcall sub_a0397cd5Address.markets(address arg1) with:
                    gas gas_remaining wei
                   args stor15[s]
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            mem[mem[64] + 4] = stor15[s]
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args stor15[s]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[96]:
                if ext_call.return_data[32]:
                    if 0 / ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                require incentive
                if not ext_call.return_data[64]:
                    if uint128(0 / incentive / 10^18) > mem[_3615 + 16 len 16]:
                        mem[_3615] = uint128(0 / incentive / 10^18)
                        mem[_3615 + 32] = uint128(s + 1)
                    if 0 > mem[_3615 + 80 len 16]:
                        mem[_3615 + 64] = 0
                        mem[_3615 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if uint128(0 / incentive / 10^18) > mem[_3615 + 16 len 16]:
                        mem[_3615] = uint128(0 / incentive / 10^18)
                        mem[_3615 + 32] = uint128(s + 1)
                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3615 + 80 len 16]:
                        mem[_3615 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                        mem[_3615 + 96] = uint128(s + 1)
            else:
                if ext_call.return_data[0] * ext_call.return_data[96] / ext_call.return_data[96] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[101 len 27],
                                mem[mem[64] + 128 len 4]
                if not ext_call.return_data[32]:
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(0 / incentive / 10^18) > mem[_3615 + 16 len 16]:
                            mem[_3615] = uint128(0 / incentive / 10^18)
                            mem[_3615 + 32] = uint128(s + 1)
                        if 0 > mem[_3615 + 80 len 16]:
                            mem[_3615 + 64] = 0
                            mem[_3615 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3615 + 16 len 16]:
                            mem[_3615] = uint128(0 / incentive / 10^18)
                            mem[_3615 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3615 + 80 len 16]:
                            mem[_3615 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3615 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0] * ext_call.return_data[96]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    require incentive
                    if not ext_call.return_data[64]:
                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3615 + 16 len 16]:
                            mem[_3615] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                            mem[_3615 + 32] = uint128(s + 1)
                        if 0 > mem[_3615 + 80 len 16]:
                            mem[_3615 + 64] = 0
                            mem[_3615 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3615 + 16 len 16]:
                            mem[_3615] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                            mem[_3615 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3615 + 80 len 16]:
                            mem[_3615 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3615 + 96] = uint128(s + 1)
            s = s + 1
            continue 
        if not mem[_3615 + 112 len 16]:
            require idx < mem[(98 * ('cd', 4).length) + 192]
            require idx < mem[(131 * ('cd', 4).length) + 224]
            require idx < mem[96]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            require idx < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
            mem[(32 * idx) + 128] = 0
            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = 0
            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 0
        else:
            _6942 = mem[_3615 + 96]
            require uint128(mem[_3615 + 96] - 1) < stor15.length
            mem[0] = 15
            mem[mem[64] + 4] = stor15[uint128(_6942 - 1)]
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args stor15[uint128(_6942 - 1)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[_3615 + 16 len 16] >= uint128(mem[_3615 + 64]) / 2:
                _7902 = mem[_3615 + 64]
                require ext_call.return_data[0]
                _8187 = mem[_3615 + 32]
                require uint128(mem[_3615 + 32] - 1) < stor15.length
                _8317 = mem[_3615 + 96]
                require uint128(mem[_3615 + 96] - 1) < stor15.length
                mem[0] = 15
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 5 * 10^17 * uint128(_7902) / ext_call.return_data[0]
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8317 - 1)]
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8187 - 1)]
            else:
                _7903 = mem[_3615]
                require ext_call.return_data[0]
                _8188 = mem[_3615 + 32]
                require uint128(mem[_3615 + 32] - 1) < stor15.length
                _8319 = mem[_3615 + 96]
                require uint128(mem[_3615 + 96] - 1) < stor15.length
                mem[0] = 15
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = 10^18 * uint128(_7903) / ext_call.return_data[0]
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8319 - 1)]
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8188 - 1)]
        idx = idx + 1
        continue 
    _3485 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
    _3487 = mem[(98 * ('cd', 4).length) + 192]
    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
    mem[mem[64] + 32] = (32 * _3487) + 192
    mem[(32 * _3487) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
    _6877 = mem[(131 * ('cd', 4).length) + 224]
    mem[(32 * _3487) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
    mem[mem[64] + 64] = (32 * _6877) + (32 * _3487) + 224
    mem[(32 * _6877) + (32 * _3487) + _3485 + 224] = mem[96]
    _10078 = mem[96]
    mem[(32 * _6877) + (32 * _3487) + _3485 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_3485 + 96] = (32 * mem[96]) + (32 * _6877) + (32 * _3487) + 256
    mem[(32 * _10078) + (32 * _6877) + (32 * _3487) + _3485 + 256] = mem[(32 * ('cd', 4).length) + 128]
    _10430 = mem[(32 * ('cd', 4).length) + 128]
    mem[(32 * _10078) + (32 * _6877) + (32 * _3487) + _3485 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    mem[_3485 + 128] = (32 * _10430) + (32 * _10078) + (32 * _6877) + (32 * _3487) + 288
    mem[(32 * _10430) + (32 * _10078) + (32 * _6877) + (32 * _3487) + _3485 + 288] = mem[(64 * ('cd', 4).length) + 160]
    _10686 = mem[(64 * ('cd', 4).length) + 160]
    mem[(32 * _10430) + (32 * _10078) + (32 * _6877) + (32 * _3487) + _3485 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
    return memory
      from mem[64]
       len (32 * _10686) + (32 * _10430) + (32 * _10078) + (32 * _6877) + (32 * _3487) + _3485 + -mem[64] + 320
}



}
