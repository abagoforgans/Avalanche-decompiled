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
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
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
                                _7008 = mem[_3555 + 96]
                                require uint128(mem[_3555 + 96] - 1) < stor15.length
                                mem[0] = 15
                                mem[mem[64] + 4] = stor15[uint128(_7008 - 1)]
                                require ext_code.size(priceOracleAddress)
                                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                        gas gas_remaining wei
                                       args stor15[uint128(_7008 - 1)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if mem[_3555 + 16 len 16] >= uint128(mem[_3555 + 64]) / 2:
                                    _7844 = mem[_3555 + 64]
                                    require ext_call.return_data[0]
                                    _8033 = mem[_3555 + 64]
                                    _8352 = mem[_3555 + 32]
                                    require uint128(mem[_3555 + 32] - 1) < stor15.length
                                    _8449 = mem[_3555 + 96]
                                    require uint128(mem[_3555 + 96] - 1) < stor15.length
                                    mem[0] = 15
                                    require idx < mem[(98 * ('cd', 4).length) + 192]
                                    require idx < mem[(131 * ('cd', 4).length) + 224]
                                    require idx < mem[96]
                                    require idx < mem[(32 * ('cd', 4).length) + 128]
                                    require idx < mem[(64 * ('cd', 4).length) + 160]
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7844) / ext_call.return_data[0] << 128) + (uint128(_8033) / 2)
                                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8449 - 1)]
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8352 - 1)]
                                else:
                                    _7845 = mem[_3555]
                                    require ext_call.return_data[0]
                                    _8034 = mem[_3555]
                                    _8162 = mem[_3555 + 32]
                                    require uint128(mem[_3555 + 32] - 1) < stor15.length
                                    _8354 = mem[_3555 + 96]
                                    require uint128(mem[_3555 + 96] - 1) < stor15.length
                                    mem[0] = 15
                                    require idx < mem[(98 * ('cd', 4).length) + 192]
                                    require idx < mem[(131 * ('cd', 4).length) + 224]
                                    require idx < mem[96]
                                    require idx < mem[(32 * ('cd', 4).length) + 128]
                                    require idx < mem[(64 * ('cd', 4).length) + 160]
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                    mem[(32 * idx) + 128] = (10^18 * uint128(_7845) / ext_call.return_data[0] << 128) + uint128(_8034)
                                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8354 - 1)]
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8162 - 1)]
                            idx = idx + 1
                            continue 
                        _3456 = mem[64]
                        mem[mem[64]] = 160
                        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                        _3458 = mem[(98 * ('cd', 4).length) + 192]
                        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                        mem[mem[64] + 32] = (32 * _3458) + 192
                        mem[(32 * _3458) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                        _6881 = mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * _3458) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                        mem[mem[64] + 64] = (32 * _6881) + (32 * _3458) + 224
                        mem[(32 * _6881) + (32 * _3458) + _3456 + 224] = mem[96]
                        _10177 = mem[96]
                        mem[(32 * _6881) + (32 * _3458) + _3456 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                        mem[_3456 + 96] = (32 * mem[96]) + (32 * _6881) + (32 * _3458) + 256
                        mem[(32 * _10177) + (32 * _6881) + (32 * _3458) + _3456 + 256] = mem[(32 * ('cd', 4).length) + 128]
                        _10529 = mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * _10177) + (32 * _6881) + (32 * _3458) + _3456 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                        mem[_3456 + 128] = (32 * _10529) + (32 * _10177) + (32 * _6881) + (32 * _3458) + 288
                        mem[(32 * _10529) + (32 * _10177) + (32 * _6881) + (32 * _3458) + _3456 + 288] = mem[(64 * ('cd', 4).length) + 160]
                        _10785 = mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * _10529) + (32 * _10177) + (32 * _6881) + (32 * _3458) + _3456 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                        return memory
                          from mem[64]
                           len (32 * _10785) + (32 * _10529) + (32 * _10177) + (32 * _6881) + (32 * _3458) + _3456 + -mem[64] + 320
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
                            _7010 = mem[_3559 + 96]
                            require uint128(mem[_3559 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_7010 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_7010 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3559 + 16 len 16] >= uint128(mem[_3559 + 64]) / 2:
                                _7850 = mem[_3559 + 64]
                                require ext_call.return_data[0]
                                _8037 = mem[_3559 + 64]
                                _8355 = mem[_3559 + 32]
                                require uint128(mem[_3559 + 32] - 1) < stor15.length
                                _8453 = mem[_3559 + 96]
                                require uint128(mem[_3559 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7850) / ext_call.return_data[0] << 128) + (uint128(_8037) / 2)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8453 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8355 - 1)]
                            else:
                                _7851 = mem[_3559]
                                require ext_call.return_data[0]
                                _8038 = mem[_3559]
                                _8168 = mem[_3559 + 32]
                                require uint128(mem[_3559 + 32] - 1) < stor15.length
                                _8357 = mem[_3559 + 96]
                                require uint128(mem[_3559 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (10^18 * uint128(_7851) / ext_call.return_data[0] << 128) + uint128(_8038)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8357 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8168 - 1)]
                        idx = idx + 1
                        continue 
                    _3459 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3461 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3461) + 192
                    mem[(32 * _3461) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6885 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3461) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6885) + (32 * _3461) + 224
                    mem[(32 * _6885) + (32 * _3461) + _3459 + 224] = mem[96]
                    _10180 = mem[96]
                    mem[(32 * _6885) + (32 * _3461) + _3459 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3459 + 96] = (32 * mem[96]) + (32 * _6885) + (32 * _3461) + 256
                    mem[(32 * _10180) + (32 * _6885) + (32 * _3461) + _3459 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10532 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10180) + (32 * _6885) + (32 * _3461) + _3459 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3459 + 128] = (32 * _10532) + (32 * _10180) + (32 * _6885) + (32 * _3461) + 288
                    mem[(32 * _10532) + (32 * _10180) + (32 * _6885) + (32 * _3461) + _3459 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10788 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10532) + (32 * _10180) + (32 * _6885) + (32 * _3461) + _3459 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10788) + (32 * _10532) + (32 * _10180) + (32 * _6885) + (32 * _3461) + _3459 + -mem[64] + 320
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
                            _7012 = mem[_3563 + 96]
                            require uint128(mem[_3563 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_7012 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_7012 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3563 + 16 len 16] >= uint128(mem[_3563 + 64]) / 2:
                                _7856 = mem[_3563 + 64]
                                require ext_call.return_data[0]
                                _8041 = mem[_3563 + 64]
                                _8358 = mem[_3563 + 32]
                                require uint128(mem[_3563 + 32] - 1) < stor15.length
                                _8457 = mem[_3563 + 96]
                                require uint128(mem[_3563 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7856) / ext_call.return_data[0] << 128) + (uint128(_8041) / 2)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8457 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8358 - 1)]
                            else:
                                _7857 = mem[_3563]
                                require ext_call.return_data[0]
                                _8042 = mem[_3563]
                                _8174 = mem[_3563 + 32]
                                require uint128(mem[_3563 + 32] - 1) < stor15.length
                                _8360 = mem[_3563 + 96]
                                require uint128(mem[_3563 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (10^18 * uint128(_7857) / ext_call.return_data[0] << 128) + uint128(_8042)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8360 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8174 - 1)]
                        idx = idx + 1
                        continue 
                    _3462 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3464 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3464) + 192
                    mem[(32 * _3464) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6889 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3464) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6889) + (32 * _3464) + 224
                    mem[(32 * _6889) + (32 * _3464) + _3462 + 224] = mem[96]
                    _10183 = mem[96]
                    mem[(32 * _6889) + (32 * _3464) + _3462 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3462 + 96] = (32 * mem[96]) + (32 * _6889) + (32 * _3464) + 256
                    mem[(32 * _10183) + (32 * _6889) + (32 * _3464) + _3462 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10535 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10183) + (32 * _6889) + (32 * _3464) + _3462 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3462 + 128] = (32 * _10535) + (32 * _10183) + (32 * _6889) + (32 * _3464) + 288
                    mem[(32 * _10535) + (32 * _10183) + (32 * _6889) + (32 * _3464) + _3462 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10791 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10535) + (32 * _10183) + (32 * _6889) + (32 * _3464) + _3462 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10791) + (32 * _10535) + (32 * _10183) + (32 * _6889) + (32 * _3464) + _3462 + -mem[64] + 320
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
                        _7014 = mem[_3567 + 96]
                        require uint128(mem[_3567 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7014 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7014 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3567 + 16 len 16] >= uint128(mem[_3567 + 64]) / 2:
                            _7862 = mem[_3567 + 64]
                            require ext_call.return_data[0]
                            _8045 = mem[_3567 + 64]
                            _8361 = mem[_3567 + 32]
                            require uint128(mem[_3567 + 32] - 1) < stor15.length
                            _8461 = mem[_3567 + 96]
                            require uint128(mem[_3567 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7862) / ext_call.return_data[0] << 128) + (uint128(_8045) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8461 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8361 - 1)]
                        else:
                            _7863 = mem[_3567]
                            require ext_call.return_data[0]
                            _8046 = mem[_3567]
                            _8180 = mem[_3567 + 32]
                            require uint128(mem[_3567 + 32] - 1) < stor15.length
                            _8363 = mem[_3567 + 96]
                            require uint128(mem[_3567 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7863) / ext_call.return_data[0] << 128) + uint128(_8046)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8363 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8180 - 1)]
                    idx = idx + 1
                    continue 
                _3465 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3467 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3467) + 192
                mem[(32 * _3467) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6893 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3467) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6893) + (32 * _3467) + 224
                mem[(32 * _6893) + (32 * _3467) + _3465 + 224] = mem[96]
                _10186 = mem[96]
                mem[(32 * _6893) + (32 * _3467) + _3465 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3465 + 96] = (32 * mem[96]) + (32 * _6893) + (32 * _3467) + 256
                mem[(32 * _10186) + (32 * _6893) + (32 * _3467) + _3465 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10538 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10186) + (32 * _6893) + (32 * _3467) + _3465 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3465 + 128] = (32 * _10538) + (32 * _10186) + (32 * _6893) + (32 * _3467) + 288
                mem[(32 * _10538) + (32 * _10186) + (32 * _6893) + (32 * _3467) + _3465 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10794 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10538) + (32 * _10186) + (32 * _6893) + (32 * _3467) + _3465 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10794) + (32 * _10538) + (32 * _10186) + (32 * _6893) + (32 * _3467) + _3465 + -mem[64] + 320
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
                            _7016 = mem[_3571 + 96]
                            require uint128(mem[_3571 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_7016 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_7016 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3571 + 16 len 16] >= uint128(mem[_3571 + 64]) / 2:
                                _7868 = mem[_3571 + 64]
                                require ext_call.return_data[0]
                                _8049 = mem[_3571 + 64]
                                _8364 = mem[_3571 + 32]
                                require uint128(mem[_3571 + 32] - 1) < stor15.length
                                _8465 = mem[_3571 + 96]
                                require uint128(mem[_3571 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7868) / ext_call.return_data[0] << 128) + (uint128(_8049) / 2)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8465 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8364 - 1)]
                            else:
                                _7869 = mem[_3571]
                                require ext_call.return_data[0]
                                _8050 = mem[_3571]
                                _8186 = mem[_3571 + 32]
                                require uint128(mem[_3571 + 32] - 1) < stor15.length
                                _8366 = mem[_3571 + 96]
                                require uint128(mem[_3571 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (10^18 * uint128(_7869) / ext_call.return_data[0] << 128) + uint128(_8050)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8366 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8186 - 1)]
                        idx = idx + 1
                        continue 
                    _3468 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3470 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3470) + 192
                    mem[(32 * _3470) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6897 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3470) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6897) + (32 * _3470) + 224
                    mem[(32 * _6897) + (32 * _3470) + _3468 + 224] = mem[96]
                    _10189 = mem[96]
                    mem[(32 * _6897) + (32 * _3470) + _3468 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3468 + 96] = (32 * mem[96]) + (32 * _6897) + (32 * _3470) + 256
                    mem[(32 * _10189) + (32 * _6897) + (32 * _3470) + _3468 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10541 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10189) + (32 * _6897) + (32 * _3470) + _3468 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3468 + 128] = (32 * _10541) + (32 * _10189) + (32 * _6897) + (32 * _3470) + 288
                    mem[(32 * _10541) + (32 * _10189) + (32 * _6897) + (32 * _3470) + _3468 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10797 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10541) + (32 * _10189) + (32 * _6897) + (32 * _3470) + _3468 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10797) + (32 * _10541) + (32 * _10189) + (32 * _6897) + (32 * _3470) + _3468 + -mem[64] + 320
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
                        _7018 = mem[_3575 + 96]
                        require uint128(mem[_3575 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7018 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7018 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3575 + 16 len 16] >= uint128(mem[_3575 + 64]) / 2:
                            _7874 = mem[_3575 + 64]
                            require ext_call.return_data[0]
                            _8053 = mem[_3575 + 64]
                            _8367 = mem[_3575 + 32]
                            require uint128(mem[_3575 + 32] - 1) < stor15.length
                            _8469 = mem[_3575 + 96]
                            require uint128(mem[_3575 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7874) / ext_call.return_data[0] << 128) + (uint128(_8053) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8469 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8367 - 1)]
                        else:
                            _7875 = mem[_3575]
                            require ext_call.return_data[0]
                            _8054 = mem[_3575]
                            _8192 = mem[_3575 + 32]
                            require uint128(mem[_3575 + 32] - 1) < stor15.length
                            _8369 = mem[_3575 + 96]
                            require uint128(mem[_3575 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7875) / ext_call.return_data[0] << 128) + uint128(_8054)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8369 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8192 - 1)]
                    idx = idx + 1
                    continue 
                _3471 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3473 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3473) + 192
                mem[(32 * _3473) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6901 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3473) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6901) + (32 * _3473) + 224
                mem[(32 * _6901) + (32 * _3473) + _3471 + 224] = mem[96]
                _10192 = mem[96]
                mem[(32 * _6901) + (32 * _3473) + _3471 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3471 + 96] = (32 * mem[96]) + (32 * _6901) + (32 * _3473) + 256
                mem[(32 * _10192) + (32 * _6901) + (32 * _3473) + _3471 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10544 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10192) + (32 * _6901) + (32 * _3473) + _3471 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3471 + 128] = (32 * _10544) + (32 * _10192) + (32 * _6901) + (32 * _3473) + 288
                mem[(32 * _10544) + (32 * _10192) + (32 * _6901) + (32 * _3473) + _3471 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10800 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10544) + (32 * _10192) + (32 * _6901) + (32 * _3473) + _3471 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10800) + (32 * _10544) + (32 * _10192) + (32 * _6901) + (32 * _3473) + _3471 + -mem[64] + 320
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
                        _7020 = mem[_3579 + 96]
                        require uint128(mem[_3579 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7020 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7020 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3579 + 16 len 16] >= uint128(mem[_3579 + 64]) / 2:
                            _7880 = mem[_3579 + 64]
                            require ext_call.return_data[0]
                            _8057 = mem[_3579 + 64]
                            _8370 = mem[_3579 + 32]
                            require uint128(mem[_3579 + 32] - 1) < stor15.length
                            _8473 = mem[_3579 + 96]
                            require uint128(mem[_3579 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7880) / ext_call.return_data[0] << 128) + (uint128(_8057) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8473 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8370 - 1)]
                        else:
                            _7881 = mem[_3579]
                            require ext_call.return_data[0]
                            _8058 = mem[_3579]
                            _8198 = mem[_3579 + 32]
                            require uint128(mem[_3579 + 32] - 1) < stor15.length
                            _8372 = mem[_3579 + 96]
                            require uint128(mem[_3579 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7881) / ext_call.return_data[0] << 128) + uint128(_8058)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8372 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8198 - 1)]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3476 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3476) + 192
                mem[(32 * _3476) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6905 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3476) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6905) + (32 * _3476) + 224
                mem[(32 * _6905) + (32 * _3476) + mem[64] + 224] = mem[96]
                _10195 = mem[96]
                mem[(32 * _6905) + (32 * _3476) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6905) + (32 * _3476) + 256
                mem[(32 * mem[96]) + (32 * _6905) + (32 * _3476) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10547 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10195) + (32 * _6905) + (32 * _3476) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[mem[64] + 128] = (32 * _10547) + (32 * _10195) + (32 * _6905) + (32 * _3476) + 288
                mem[(32 * _10547) + (32 * _10195) + (32 * _6905) + (32 * _3476) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10803 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10547) + (32 * _10195) + (32 * _6905) + (32 * _3476) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return 160, 
                       (32 * _3476) + 192,
                       (32 * _6905) + (32 * _3476) + 224,
                       mem[mem[64] + 96],
                       (32 * _10547) + (32 * _10195) + (32 * _6905) + (32 * _3476) + 288,
                       mem[mem[64] + 160 len (32 * _10803) + (32 * _10547) + (32 * _10195) + (32 * _6905) + (32 * _3476) + 160]
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
                    _7022 = mem[_3583 + 96]
                    require uint128(mem[_3583 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7022 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7022 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3583 + 16 len 16] >= uint128(mem[_3583 + 64]) / 2:
                        _7886 = mem[_3583 + 64]
                        require ext_call.return_data[0]
                        _8061 = mem[_3583 + 64]
                        _8373 = mem[_3583 + 32]
                        require uint128(mem[_3583 + 32] - 1) < stor15.length
                        _8477 = mem[_3583 + 96]
                        require uint128(mem[_3583 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7886) / ext_call.return_data[0] << 128) + (uint128(_8061) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8477 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8373 - 1)]
                    else:
                        _7887 = mem[_3583]
                        require ext_call.return_data[0]
                        _8062 = mem[_3583]
                        _8204 = mem[_3583 + 32]
                        require uint128(mem[_3583 + 32] - 1) < stor15.length
                        _8375 = mem[_3583 + 96]
                        require uint128(mem[_3583 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7887) / ext_call.return_data[0] << 128) + uint128(_8062)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8375 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8204 - 1)]
                idx = idx + 1
                continue 
            _3477 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3479 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3479) + 192
            mem[(32 * _3479) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6909 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3479) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6909) + (32 * _3479) + 224
            mem[(32 * _6909) + (32 * _3479) + _3477 + 224] = mem[96]
            _10198 = mem[96]
            mem[(32 * _6909) + (32 * _3479) + _3477 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3477 + 96] = (32 * mem[96]) + (32 * _6909) + (32 * _3479) + 256
            mem[(32 * _10198) + (32 * _6909) + (32 * _3479) + _3477 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10550 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10198) + (32 * _6909) + (32 * _3479) + _3477 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3477 + 128] = (32 * _10550) + (32 * _10198) + (32 * _6909) + (32 * _3479) + 288
            mem[(32 * _10550) + (32 * _10198) + (32 * _6909) + (32 * _3479) + _3477 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10806 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10550) + (32 * _10198) + (32 * _6909) + (32 * _3479) + _3477 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10806) + (32 * _10550) + (32 * _10198) + (32 * _6909) + (32 * _3479) + _3477 + -mem[64] + 320
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
                            _7024 = mem[_3587 + 96]
                            require uint128(mem[_3587 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_7024 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_7024 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3587 + 16 len 16] >= uint128(mem[_3587 + 64]) / 2:
                                _7892 = mem[_3587 + 64]
                                require ext_call.return_data[0]
                                _8065 = mem[_3587 + 64]
                                _8376 = mem[_3587 + 32]
                                require uint128(mem[_3587 + 32] - 1) < stor15.length
                                _8481 = mem[_3587 + 96]
                                require uint128(mem[_3587 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7892) / ext_call.return_data[0] << 128) + (uint128(_8065) / 2)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8481 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8376 - 1)]
                            else:
                                _7893 = mem[_3587]
                                require ext_call.return_data[0]
                                _8066 = mem[_3587]
                                _8210 = mem[_3587 + 32]
                                require uint128(mem[_3587 + 32] - 1) < stor15.length
                                _8378 = mem[_3587 + 96]
                                require uint128(mem[_3587 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (10^18 * uint128(_7893) / ext_call.return_data[0] << 128) + uint128(_8066)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8378 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8210 - 1)]
                        idx = idx + 1
                        continue 
                    _3480 = mem[64]
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3482 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3482) + 192
                    mem[(32 * _3482) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6913 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3482) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6913) + (32 * _3482) + 224
                    mem[(32 * _6913) + (32 * _3482) + _3480 + 224] = mem[96]
                    _10201 = mem[96]
                    mem[(32 * _6913) + (32 * _3482) + _3480 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[_3480 + 96] = (32 * mem[96]) + (32 * _6913) + (32 * _3482) + 256
                    mem[(32 * _10201) + (32 * _6913) + (32 * _3482) + _3480 + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10553 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10201) + (32 * _6913) + (32 * _3482) + _3480 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[_3480 + 128] = (32 * _10553) + (32 * _10201) + (32 * _6913) + (32 * _3482) + 288
                    mem[(32 * _10553) + (32 * _10201) + (32 * _6913) + (32 * _3482) + _3480 + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10809 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10553) + (32 * _10201) + (32 * _6913) + (32 * _3482) + _3480 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return memory
                      from mem[64]
                       len (32 * _10809) + (32 * _10553) + (32 * _10201) + (32 * _6913) + (32 * _3482) + _3480 + -mem[64] + 320
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
                        _7026 = mem[_3591 + 96]
                        require uint128(mem[_3591 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7026 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7026 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3591 + 16 len 16] >= uint128(mem[_3591 + 64]) / 2:
                            _7898 = mem[_3591 + 64]
                            require ext_call.return_data[0]
                            _8069 = mem[_3591 + 64]
                            _8379 = mem[_3591 + 32]
                            require uint128(mem[_3591 + 32] - 1) < stor15.length
                            _8485 = mem[_3591 + 96]
                            require uint128(mem[_3591 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7898) / ext_call.return_data[0] << 128) + (uint128(_8069) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8485 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8379 - 1)]
                        else:
                            _7899 = mem[_3591]
                            require ext_call.return_data[0]
                            _8070 = mem[_3591]
                            _8216 = mem[_3591 + 32]
                            require uint128(mem[_3591 + 32] - 1) < stor15.length
                            _8381 = mem[_3591 + 96]
                            require uint128(mem[_3591 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7899) / ext_call.return_data[0] << 128) + uint128(_8070)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8381 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8216 - 1)]
                    idx = idx + 1
                    continue 
                _3483 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3485 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3485) + 192
                mem[(32 * _3485) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6917 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3485) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6917) + (32 * _3485) + 224
                mem[(32 * _6917) + (32 * _3485) + _3483 + 224] = mem[96]
                _10204 = mem[96]
                mem[(32 * _6917) + (32 * _3485) + _3483 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3483 + 96] = (32 * mem[96]) + (32 * _6917) + (32 * _3485) + 256
                mem[(32 * _10204) + (32 * _6917) + (32 * _3485) + _3483 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10556 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10204) + (32 * _6917) + (32 * _3485) + _3483 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3483 + 128] = (32 * _10556) + (32 * _10204) + (32 * _6917) + (32 * _3485) + 288
                mem[(32 * _10556) + (32 * _10204) + (32 * _6917) + (32 * _3485) + _3483 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10812 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10556) + (32 * _10204) + (32 * _6917) + (32 * _3485) + _3483 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10812) + (32 * _10556) + (32 * _10204) + (32 * _6917) + (32 * _3485) + _3483 + -mem[64] + 320
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
                        _7028 = mem[_3595 + 96]
                        require uint128(mem[_3595 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7028 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7028 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3595 + 16 len 16] >= uint128(mem[_3595 + 64]) / 2:
                            _7904 = mem[_3595 + 64]
                            require ext_call.return_data[0]
                            _8073 = mem[_3595 + 64]
                            _8382 = mem[_3595 + 32]
                            require uint128(mem[_3595 + 32] - 1) < stor15.length
                            _8489 = mem[_3595 + 96]
                            require uint128(mem[_3595 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7904) / ext_call.return_data[0] << 128) + (uint128(_8073) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8489 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8382 - 1)]
                        else:
                            _7905 = mem[_3595]
                            require ext_call.return_data[0]
                            _8074 = mem[_3595]
                            _8222 = mem[_3595 + 32]
                            require uint128(mem[_3595 + 32] - 1) < stor15.length
                            _8384 = mem[_3595 + 96]
                            require uint128(mem[_3595 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7905) / ext_call.return_data[0] << 128) + uint128(_8074)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8384 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8222 - 1)]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3488 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3488) + 192
                mem[(32 * _3488) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6921 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3488) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6921) + (32 * _3488) + 224
                mem[(32 * _6921) + (32 * _3488) + mem[64] + 224] = mem[96]
                _10207 = mem[96]
                mem[(32 * _6921) + (32 * _3488) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6921) + (32 * _3488) + 256
                mem[(32 * mem[96]) + (32 * _6921) + (32 * _3488) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10559 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * mem[96]) + (32 * _6921) + (32 * _3488) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[mem[64] + 128] = (32 * _10559) + (32 * mem[96]) + (32 * _6921) + (32 * _3488) + 288
                mem[(32 * _10559) + (32 * _10207) + (32 * _6921) + (32 * _3488) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10815 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10559) + (32 * _10207) + (32 * _6921) + (32 * _3488) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return 160, 
                       (32 * _3488) + 192,
                       (32 * _6921) + (32 * _3488) + 224,
                       mem[mem[64] + 96 len (32 * _10815) + (32 * _10559) + (32 * _10207) + (32 * _6921) + (32 * _3488) + 224]
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
                    _7030 = mem[_3599 + 96]
                    require uint128(mem[_3599 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7030 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7030 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3599 + 16 len 16] >= uint128(mem[_3599 + 64]) / 2:
                        _7910 = mem[_3599 + 64]
                        require ext_call.return_data[0]
                        _8077 = mem[_3599 + 64]
                        _8385 = mem[_3599 + 32]
                        require uint128(mem[_3599 + 32] - 1) < stor15.length
                        _8493 = mem[_3599 + 96]
                        require uint128(mem[_3599 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7910) / ext_call.return_data[0] << 128) + (uint128(_8077) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8493 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8385 - 1)]
                    else:
                        _7911 = mem[_3599]
                        require ext_call.return_data[0]
                        _8078 = mem[_3599]
                        _8228 = mem[_3599 + 32]
                        require uint128(mem[_3599 + 32] - 1) < stor15.length
                        _8387 = mem[_3599 + 96]
                        require uint128(mem[_3599 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7911) / ext_call.return_data[0] << 128) + uint128(_8078)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8387 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8228 - 1)]
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3491 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3491) + 192
            mem[(32 * _3491) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6925 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3491) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6925) + (32 * _3491) + 224
            mem[(32 * _6925) + (32 * _3491) + mem[64] + 224] = mem[96]
            _10210 = mem[96]
            mem[(32 * _6925) + (32 * _3491) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6925) + (32 * _3491) + 256
            mem[(32 * _10210) + (32 * _6925) + (32 * _3491) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10562 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10210) + (32 * _6925) + (32 * _3491) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[mem[64] + 128] = (32 * _10562) + (32 * _10210) + (32 * _6925) + (32 * _3491) + 288
            mem[(32 * _10562) + (32 * _10210) + (32 * _6925) + (32 * _3491) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10818 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10562) + (32 * _10210) + (32 * _6925) + (32 * _3491) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return 160, 
                   (32 * _3491) + 192,
                   (32 * _6925) + (32 * _3491) + 224,
                   mem[mem[64] + 96],
                   (32 * _10562) + (32 * _10210) + (32 * _6925) + (32 * _3491) + 288,
                   mem[mem[64] + 160 len (32 * _10818) + (32 * _10562) + (32 * _10210) + (32 * _6925) + (32 * _3491) + 160]
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
                        _7032 = mem[_3603 + 96]
                        require uint128(mem[_3603 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7032 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7032 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3603 + 16 len 16] >= uint128(mem[_3603 + 64]) / 2:
                            _7916 = mem[_3603 + 64]
                            require ext_call.return_data[0]
                            _8081 = mem[_3603 + 64]
                            _8388 = mem[_3603 + 32]
                            require uint128(mem[_3603 + 32] - 1) < stor15.length
                            _8497 = mem[_3603 + 96]
                            require uint128(mem[_3603 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7916) / ext_call.return_data[0] << 128) + (uint128(_8081) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8497 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8388 - 1)]
                        else:
                            _7917 = mem[_3603]
                            require ext_call.return_data[0]
                            _8082 = mem[_3603]
                            _8234 = mem[_3603 + 32]
                            require uint128(mem[_3603 + 32] - 1) < stor15.length
                            _8390 = mem[_3603 + 96]
                            require uint128(mem[_3603 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7917) / ext_call.return_data[0] << 128) + uint128(_8082)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8390 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8234 - 1)]
                    idx = idx + 1
                    continue 
                _3492 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3494 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3494) + 192
                mem[(32 * _3494) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6929 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3494) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6929) + (32 * _3494) + 224
                mem[(32 * _6929) + (32 * _3494) + _3492 + 224] = mem[96]
                _10213 = mem[96]
                mem[(32 * _6929) + (32 * _3494) + _3492 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3492 + 96] = (32 * mem[96]) + (32 * _6929) + (32 * _3494) + 256
                mem[(32 * _10213) + (32 * _6929) + (32 * _3494) + _3492 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10565 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10213) + (32 * _6929) + (32 * _3494) + _3492 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3492 + 128] = (32 * _10565) + (32 * _10213) + (32 * _6929) + (32 * _3494) + 288
                mem[(32 * _10565) + (32 * _10213) + (32 * _6929) + (32 * _3494) + _3492 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10821 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10565) + (32 * _10213) + (32 * _6929) + (32 * _3494) + _3492 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10821) + (32 * _10565) + (32 * _10213) + (32 * _6929) + (32 * _3494) + _3492 + -mem[64] + 320
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
                    _7034 = mem[_3607 + 96]
                    require uint128(mem[_3607 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7034 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7034 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3607 + 16 len 16] >= uint128(mem[_3607 + 64]) / 2:
                        _7922 = mem[_3607 + 64]
                        require ext_call.return_data[0]
                        _8085 = mem[_3607 + 64]
                        _8391 = mem[_3607 + 32]
                        require uint128(mem[_3607 + 32] - 1) < stor15.length
                        _8501 = mem[_3607 + 96]
                        require uint128(mem[_3607 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7922) / ext_call.return_data[0] << 128) + (uint128(_8085) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8501 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8391 - 1)]
                    else:
                        _7923 = mem[_3607]
                        require ext_call.return_data[0]
                        _8086 = mem[_3607]
                        _8240 = mem[_3607 + 32]
                        require uint128(mem[_3607 + 32] - 1) < stor15.length
                        _8393 = mem[_3607 + 96]
                        require uint128(mem[_3607 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7923) / ext_call.return_data[0] << 128) + uint128(_8086)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8393 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8240 - 1)]
                idx = idx + 1
                continue 
            _3495 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3497 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3497) + 192
            mem[(32 * _3497) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6933 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3497) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6933) + (32 * _3497) + 224
            mem[(32 * _6933) + (32 * _3497) + _3495 + 224] = mem[96]
            _10216 = mem[96]
            mem[(32 * _6933) + (32 * _3497) + _3495 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3495 + 96] = (32 * mem[96]) + (32 * _6933) + (32 * _3497) + 256
            mem[(32 * _10216) + (32 * _6933) + (32 * _3497) + _3495 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10568 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10216) + (32 * _6933) + (32 * _3497) + _3495 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3495 + 128] = (32 * _10568) + (32 * _10216) + (32 * _6933) + (32 * _3497) + 288
            mem[(32 * _10568) + (32 * _10216) + (32 * _6933) + (32 * _3497) + _3495 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10824 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10568) + (32 * _10216) + (32 * _6933) + (32 * _3497) + _3495 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10824) + (32 * _10568) + (32 * _10216) + (32 * _6933) + (32 * _3497) + _3495 + -mem[64] + 320
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
                    _7036 = mem[_3611 + 96]
                    require uint128(mem[_3611 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7036 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7036 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3611 + 16 len 16] >= uint128(mem[_3611 + 64]) / 2:
                        _7928 = mem[_3611 + 64]
                        require ext_call.return_data[0]
                        _8089 = mem[_3611 + 64]
                        _8394 = mem[_3611 + 32]
                        require uint128(mem[_3611 + 32] - 1) < stor15.length
                        _8505 = mem[_3611 + 96]
                        require uint128(mem[_3611 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7928) / ext_call.return_data[0] << 128) + (uint128(_8089) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8505 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8394 - 1)]
                    else:
                        _7929 = mem[_3611]
                        require ext_call.return_data[0]
                        _8090 = mem[_3611]
                        _8246 = mem[_3611 + 32]
                        require uint128(mem[_3611 + 32] - 1) < stor15.length
                        _8396 = mem[_3611 + 96]
                        require uint128(mem[_3611 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7929) / ext_call.return_data[0] << 128) + uint128(_8090)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8396 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8246 - 1)]
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3500 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3500) + 192
            mem[(32 * _3500) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6937 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3500) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6937) + (32 * _3500) + 224
            mem[(32 * _6937) + (32 * _3500) + mem[64] + 224] = mem[96]
            _10219 = mem[96]
            mem[(32 * _6937) + (32 * _3500) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6937) + (32 * _3500) + 256
            mem[(32 * _10219) + (32 * _6937) + (32 * _3500) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10571 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10219) + (32 * _6937) + (32 * _3500) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[mem[64] + 128] = (32 * _10571) + (32 * _10219) + (32 * _6937) + (32 * _3500) + 288
            mem[(32 * _10571) + (32 * _10219) + (32 * _6937) + (32 * _3500) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10827 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10571) + (32 * _10219) + (32 * _6937) + (32 * _3500) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return 160, 
                   (32 * _3500) + 192,
                   (32 * _6937) + (32 * _3500) + 224,
                   mem[mem[64] + 96],
                   (32 * _10571) + (32 * _10219) + (32 * _6937) + (32 * _3500) + 288,
                   mem[mem[64] + 160 len (32 * _10827) + (32 * _10571) + (32 * _10219) + (32 * _6937) + (32 * _3500) + 160]
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
                _7038 = mem[_3615 + 96]
                require uint128(mem[_3615 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_7038 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_7038 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3615 + 16 len 16] >= uint128(mem[_3615 + 64]) / 2:
                    _7934 = mem[_3615 + 64]
                    require ext_call.return_data[0]
                    _8093 = mem[_3615 + 64]
                    _8397 = mem[_3615 + 32]
                    require uint128(mem[_3615 + 32] - 1) < stor15.length
                    _8509 = mem[_3615 + 96]
                    require uint128(mem[_3615 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7934) / ext_call.return_data[0] << 128) + (uint128(_8093) / 2)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8509 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8397 - 1)]
                else:
                    _7935 = mem[_3615]
                    require ext_call.return_data[0]
                    _8094 = mem[_3615]
                    _8252 = mem[_3615 + 32]
                    require uint128(mem[_3615 + 32] - 1) < stor15.length
                    _8399 = mem[_3615 + 96]
                    require uint128(mem[_3615 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (10^18 * uint128(_7935) / ext_call.return_data[0] << 128) + uint128(_8094)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8399 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8252 - 1)]
            idx = idx + 1
            continue 
        _3501 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3503 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3503) + 192
        mem[(32 * _3503) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6941 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3503) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6941) + (32 * _3503) + 224
        mem[(32 * _6941) + (32 * _3503) + _3501 + 224] = mem[96]
        _10222 = mem[96]
        mem[(32 * _6941) + (32 * _3503) + _3501 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3501 + 96] = (32 * mem[96]) + (32 * _6941) + (32 * _3503) + 256
        mem[(32 * _10222) + (32 * _6941) + (32 * _3503) + _3501 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10574 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10222) + (32 * _6941) + (32 * _3503) + _3501 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3501 + 128] = (32 * _10574) + (32 * _10222) + (32 * _6941) + (32 * _3503) + 288
        mem[(32 * _10574) + (32 * _10222) + (32 * _6941) + (32 * _3503) + _3501 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10830 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10574) + (32 * _10222) + (32 * _6941) + (32 * _3503) + _3501 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10830) + (32 * _10574) + (32 * _10222) + (32 * _6941) + (32 * _3503) + _3501 + -mem[64] + 320
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
                        _3619 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_3619 len 128] = call.data[calldata.size len 128]
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
                                    if uint128(0 / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                        mem[_3619] = uint128(0 / incentive / 10^18)
                                        mem[_3619 + 32] = uint128(s + 1)
                                    if 0 > mem[_3619 + 80 len 16]:
                                        mem[_3619 + 64] = 0
                                        mem[_3619 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                        mem[_3619] = uint128(0 / incentive / 10^18)
                                        mem[_3619 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3619 + 80 len 16]:
                                        mem[_3619 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3619 + 96] = uint128(s + 1)
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
                                        if uint128(0 / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                            mem[_3619] = uint128(0 / incentive / 10^18)
                                            mem[_3619 + 32] = uint128(s + 1)
                                        if 0 > mem[_3619 + 80 len 16]:
                                            mem[_3619 + 64] = 0
                                            mem[_3619 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(0 / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                            mem[_3619] = uint128(0 / incentive / 10^18)
                                            mem[_3619 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3619 + 80 len 16]:
                                            mem[_3619 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3619 + 96] = uint128(s + 1)
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
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                            mem[_3619] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3619 + 32] = uint128(s + 1)
                                        if 0 > mem[_3619 + 80 len 16]:
                                            mem[_3619 + 64] = 0
                                            mem[_3619 + 96] = uint128(s + 1)
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        ext_call.return_data[101 len 27],
                                                        mem[mem[64] + 128 len 4]
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3619 + 16 len 16]:
                                            mem[_3619] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                            mem[_3619 + 32] = uint128(s + 1)
                                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3619 + 80 len 16]:
                                            mem[_3619 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                            mem[_3619 + 96] = uint128(s + 1)
                            s = s + 1
                            continue 
                        if not mem[_3619 + 112 len 16]:
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
                            _7040 = mem[_3619 + 96]
                            require uint128(mem[_3619 + 96] - 1) < stor15.length
                            mem[0] = 15
                            mem[mem[64] + 4] = stor15[uint128(_7040 - 1)]
                            require ext_code.size(priceOracleAddress)
                            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args stor15[uint128(_7040 - 1)]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if mem[_3619 + 16 len 16] >= uint128(mem[_3619 + 64]) / 2:
                                _7940 = mem[_3619 + 64]
                                require ext_call.return_data[0]
                                _8097 = mem[_3619 + 64]
                                _8400 = mem[_3619 + 32]
                                require uint128(mem[_3619 + 32] - 1) < stor15.length
                                _8513 = mem[_3619 + 96]
                                require uint128(mem[_3619 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7940) / ext_call.return_data[0] << 128) + (uint128(_8097) / 2)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8513 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8400 - 1)]
                            else:
                                _7941 = mem[_3619]
                                require ext_call.return_data[0]
                                _8098 = mem[_3619]
                                _8258 = mem[_3619 + 32]
                                require uint128(mem[_3619 + 32] - 1) < stor15.length
                                _8402 = mem[_3619 + 96]
                                require uint128(mem[_3619 + 96] - 1) < stor15.length
                                mem[0] = 15
                                require idx < mem[(98 * ('cd', 4).length) + 192]
                                require idx < mem[(131 * ('cd', 4).length) + 224]
                                require idx < mem[96]
                                require idx < mem[(32 * ('cd', 4).length) + 128]
                                require idx < mem[(64 * ('cd', 4).length) + 160]
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                                mem[(32 * idx) + 128] = (10^18 * uint128(_7941) / ext_call.return_data[0] << 128) + uint128(_8098)
                                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8402 - 1)]
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8258 - 1)]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 160
                    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                    _3506 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                    mem[mem[64] + 32] = (32 * _3506) + 192
                    mem[(32 * _3506) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                    _6945 = mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * _3506) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                    mem[mem[64] + 64] = (32 * _6945) + (32 * _3506) + 224
                    mem[(32 * _6945) + (32 * _3506) + mem[64] + 224] = mem[96]
                    _10225 = mem[96]
                    mem[(32 * _6945) + (32 * _3506) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6945) + (32 * _3506) + 256
                    mem[(32 * _10225) + (32 * _6945) + (32 * _3506) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
                    _10577 = mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * _10225) + (32 * _6945) + (32 * _3506) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                    mem[mem[64] + 128] = (32 * _10577) + (32 * _10225) + (32 * _6945) + (32 * _3506) + 288
                    mem[(32 * _10577) + (32 * _10225) + (32 * _6945) + (32 * _3506) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
                    _10833 = mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * _10577) + (32 * _10225) + (32 * _6945) + (32 * _3506) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                    return 160, 
                           (32 * _3506) + 192,
                           (32 * _6945) + (32 * _3506) + 224,
                           mem[mem[64] + 96],
                           (32 * _10577) + (32 * _10225) + (32 * _6945) + (32 * _3506) + 288,
                           mem[mem[64] + 160 len (32 * _10833) + (32 * _10577) + (32 * _10225) + (32 * _6945) + (32 * _3506) + 160]
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    _3623 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3623 len 128] = call.data[calldata.size len 128]
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
                                if uint128(0 / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                    mem[_3623] = uint128(0 / incentive / 10^18)
                                    mem[_3623 + 32] = uint128(s + 1)
                                if 0 > mem[_3623 + 80 len 16]:
                                    mem[_3623 + 64] = 0
                                    mem[_3623 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                    mem[_3623] = uint128(0 / incentive / 10^18)
                                    mem[_3623 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3623 + 80 len 16]:
                                    mem[_3623 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3623 + 96] = uint128(s + 1)
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
                                    if uint128(0 / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                        mem[_3623] = uint128(0 / incentive / 10^18)
                                        mem[_3623 + 32] = uint128(s + 1)
                                    if 0 > mem[_3623 + 80 len 16]:
                                        mem[_3623 + 64] = 0
                                        mem[_3623 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                        mem[_3623] = uint128(0 / incentive / 10^18)
                                        mem[_3623 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3623 + 80 len 16]:
                                        mem[_3623 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3623 + 96] = uint128(s + 1)
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
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                        mem[_3623] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3623 + 32] = uint128(s + 1)
                                    if 0 > mem[_3623 + 80 len 16]:
                                        mem[_3623 + 64] = 0
                                        mem[_3623 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3623 + 16 len 16]:
                                        mem[_3623] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3623 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3623 + 80 len 16]:
                                        mem[_3623 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3623 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3623 + 112 len 16]:
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
                        _7042 = mem[_3623 + 96]
                        require uint128(mem[_3623 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7042 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7042 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3623 + 16 len 16] >= uint128(mem[_3623 + 64]) / 2:
                            _7946 = mem[_3623 + 64]
                            require ext_call.return_data[0]
                            _8101 = mem[_3623 + 64]
                            _8403 = mem[_3623 + 32]
                            require uint128(mem[_3623 + 32] - 1) < stor15.length
                            _8517 = mem[_3623 + 96]
                            require uint128(mem[_3623 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7946) / ext_call.return_data[0] << 128) + (uint128(_8101) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8517 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8403 - 1)]
                        else:
                            _7947 = mem[_3623]
                            require ext_call.return_data[0]
                            _8102 = mem[_3623]
                            _8264 = mem[_3623 + 32]
                            require uint128(mem[_3623 + 32] - 1) < stor15.length
                            _8405 = mem[_3623 + 96]
                            require uint128(mem[_3623 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7947) / ext_call.return_data[0] << 128) + uint128(_8102)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8405 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8264 - 1)]
                    idx = idx + 1
                    continue 
                _3507 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3509 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3509) + 192
                mem[(32 * _3509) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6949 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3509) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6949) + (32 * _3509) + 224
                mem[(32 * _6949) + (32 * _3509) + _3507 + 224] = mem[96]
                _10228 = mem[96]
                mem[(32 * _6949) + (32 * _3509) + _3507 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3507 + 96] = (32 * mem[96]) + (32 * _6949) + (32 * _3509) + 256
                mem[(32 * _10228) + (32 * _6949) + (32 * _3509) + _3507 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10580 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10228) + (32 * _6949) + (32 * _3509) + _3507 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3507 + 128] = (32 * _10580) + (32 * _10228) + (32 * _6949) + (32 * _3509) + 288
                mem[(32 * _10580) + (32 * _10228) + (32 * _6949) + (32 * _3509) + _3507 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10836 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10580) + (32 * _10228) + (32 * _6949) + (32 * _3509) + _3507 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10836) + (32 * _10580) + (32 * _10228) + (32 * _6949) + (32 * _3509) + _3507 + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    _3627 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3627 len 128] = call.data[calldata.size len 128]
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
                                if uint128(0 / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                    mem[_3627] = uint128(0 / incentive / 10^18)
                                    mem[_3627 + 32] = uint128(s + 1)
                                if 0 > mem[_3627 + 80 len 16]:
                                    mem[_3627 + 64] = 0
                                    mem[_3627 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                    mem[_3627] = uint128(0 / incentive / 10^18)
                                    mem[_3627 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3627 + 80 len 16]:
                                    mem[_3627 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3627 + 96] = uint128(s + 1)
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
                                    if uint128(0 / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                        mem[_3627] = uint128(0 / incentive / 10^18)
                                        mem[_3627 + 32] = uint128(s + 1)
                                    if 0 > mem[_3627 + 80 len 16]:
                                        mem[_3627 + 64] = 0
                                        mem[_3627 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                        mem[_3627] = uint128(0 / incentive / 10^18)
                                        mem[_3627 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3627 + 80 len 16]:
                                        mem[_3627 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3627 + 96] = uint128(s + 1)
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
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                        mem[_3627] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3627 + 32] = uint128(s + 1)
                                    if 0 > mem[_3627 + 80 len 16]:
                                        mem[_3627 + 64] = 0
                                        mem[_3627 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3627 + 16 len 16]:
                                        mem[_3627] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3627 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3627 + 80 len 16]:
                                        mem[_3627 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3627 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3627 + 112 len 16]:
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
                        _7044 = mem[_3627 + 96]
                        require uint128(mem[_3627 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7044 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7044 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3627 + 16 len 16] >= uint128(mem[_3627 + 64]) / 2:
                            _7952 = mem[_3627 + 64]
                            require ext_call.return_data[0]
                            _8105 = mem[_3627 + 64]
                            _8406 = mem[_3627 + 32]
                            require uint128(mem[_3627 + 32] - 1) < stor15.length
                            _8521 = mem[_3627 + 96]
                            require uint128(mem[_3627 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7952) / ext_call.return_data[0] << 128) + (uint128(_8105) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8521 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8406 - 1)]
                        else:
                            _7953 = mem[_3627]
                            require ext_call.return_data[0]
                            _8106 = mem[_3627]
                            _8270 = mem[_3627 + 32]
                            require uint128(mem[_3627 + 32] - 1) < stor15.length
                            _8408 = mem[_3627 + 96]
                            require uint128(mem[_3627 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7953) / ext_call.return_data[0] << 128) + uint128(_8106)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8408 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8270 - 1)]
                    idx = idx + 1
                    continue 
                _3510 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3512 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3512) + 192
                mem[(32 * _3512) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6953 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3512) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6953) + (32 * _3512) + 224
                mem[(32 * _6953) + (32 * _3512) + _3510 + 224] = mem[96]
                _10231 = mem[96]
                mem[(32 * _6953) + (32 * _3512) + _3510 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3510 + 96] = (32 * mem[96]) + (32 * _6953) + (32 * _3512) + 256
                mem[(32 * _10231) + (32 * _6953) + (32 * _3512) + _3510 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10583 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10231) + (32 * _6953) + (32 * _3512) + _3510 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3510 + 128] = (32 * _10583) + (32 * _10231) + (32 * _6953) + (32 * _3512) + 288
                mem[(32 * _10583) + (32 * _10231) + (32 * _6953) + (32 * _3512) + _3510 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10839 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10583) + (32 * _10231) + (32 * _6953) + (32 * _3512) + _3510 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10839) + (32 * _10583) + (32 * _10231) + (32 * _6953) + (32 * _3512) + _3510 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3631 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3631 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                mem[_3631] = uint128(0 / incentive / 10^18)
                                mem[_3631 + 32] = uint128(s + 1)
                            if 0 > mem[_3631 + 80 len 16]:
                                mem[_3631 + 64] = 0
                                mem[_3631 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                mem[_3631] = uint128(0 / incentive / 10^18)
                                mem[_3631 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3631 + 80 len 16]:
                                mem[_3631 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3631 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                    mem[_3631] = uint128(0 / incentive / 10^18)
                                    mem[_3631 + 32] = uint128(s + 1)
                                if 0 > mem[_3631 + 80 len 16]:
                                    mem[_3631 + 64] = 0
                                    mem[_3631 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                    mem[_3631] = uint128(0 / incentive / 10^18)
                                    mem[_3631 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3631 + 80 len 16]:
                                    mem[_3631 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3631 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                    mem[_3631] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3631 + 32] = uint128(s + 1)
                                if 0 > mem[_3631 + 80 len 16]:
                                    mem[_3631 + 64] = 0
                                    mem[_3631 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3631 + 16 len 16]:
                                    mem[_3631] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3631 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3631 + 80 len 16]:
                                    mem[_3631 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3631 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3631 + 112 len 16]:
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
                    _7046 = mem[_3631 + 96]
                    require uint128(mem[_3631 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7046 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7046 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3631 + 16 len 16] >= uint128(mem[_3631 + 64]) / 2:
                        _7958 = mem[_3631 + 64]
                        require ext_call.return_data[0]
                        _8109 = mem[_3631 + 64]
                        _8409 = mem[_3631 + 32]
                        require uint128(mem[_3631 + 32] - 1) < stor15.length
                        _8525 = mem[_3631 + 96]
                        require uint128(mem[_3631 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7958) / ext_call.return_data[0] << 128) + (uint128(_8109) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8525 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8409 - 1)]
                    else:
                        _7959 = mem[_3631]
                        require ext_call.return_data[0]
                        _8110 = mem[_3631]
                        _8276 = mem[_3631 + 32]
                        require uint128(mem[_3631 + 32] - 1) < stor15.length
                        _8411 = mem[_3631 + 96]
                        require uint128(mem[_3631 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7959) / ext_call.return_data[0] << 128) + uint128(_8110)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8411 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8276 - 1)]
                idx = idx + 1
                continue 
            _3513 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3515 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3515) + 192
            mem[(32 * _3515) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6957 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3515) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6957) + (32 * _3515) + 224
            mem[(32 * _6957) + (32 * _3515) + _3513 + 224] = mem[96]
            _10234 = mem[96]
            mem[(32 * _6957) + (32 * _3515) + _3513 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3513 + 96] = (32 * mem[96]) + (32 * _6957) + (32 * _3515) + 256
            mem[(32 * _10234) + (32 * _6957) + (32 * _3515) + _3513 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10586 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10234) + (32 * _6957) + (32 * _3515) + _3513 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3513 + 128] = (32 * _10586) + (32 * _10234) + (32 * _6957) + (32 * _3515) + 288
            mem[(32 * _10586) + (32 * _10234) + (32 * _6957) + (32 * _3515) + _3513 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10842 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10586) + (32 * _10234) + (32 * _6957) + (32 * _3515) + _3513 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10842) + (32 * _10586) + (32 * _10234) + (32 * _6957) + (32 * _3515) + _3513 + -mem[64] + 320
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
                    _3635 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3635 len 128] = call.data[calldata.size len 128]
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
                                if uint128(0 / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                    mem[_3635] = uint128(0 / incentive / 10^18)
                                    mem[_3635 + 32] = uint128(s + 1)
                                if 0 > mem[_3635 + 80 len 16]:
                                    mem[_3635 + 64] = 0
                                    mem[_3635 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                    mem[_3635] = uint128(0 / incentive / 10^18)
                                    mem[_3635 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3635 + 80 len 16]:
                                    mem[_3635 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3635 + 96] = uint128(s + 1)
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
                                    if uint128(0 / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                        mem[_3635] = uint128(0 / incentive / 10^18)
                                        mem[_3635 + 32] = uint128(s + 1)
                                    if 0 > mem[_3635 + 80 len 16]:
                                        mem[_3635 + 64] = 0
                                        mem[_3635 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                        mem[_3635] = uint128(0 / incentive / 10^18)
                                        mem[_3635 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3635 + 80 len 16]:
                                        mem[_3635 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3635 + 96] = uint128(s + 1)
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
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                        mem[_3635] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3635 + 32] = uint128(s + 1)
                                    if 0 > mem[_3635 + 80 len 16]:
                                        mem[_3635 + 64] = 0
                                        mem[_3635 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3635 + 16 len 16]:
                                        mem[_3635] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3635 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3635 + 80 len 16]:
                                        mem[_3635 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3635 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3635 + 112 len 16]:
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
                        _7048 = mem[_3635 + 96]
                        require uint128(mem[_3635 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7048 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7048 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3635 + 16 len 16] >= uint128(mem[_3635 + 64]) / 2:
                            _7964 = mem[_3635 + 64]
                            require ext_call.return_data[0]
                            _8113 = mem[_3635 + 64]
                            _8412 = mem[_3635 + 32]
                            require uint128(mem[_3635 + 32] - 1) < stor15.length
                            _8529 = mem[_3635 + 96]
                            require uint128(mem[_3635 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7964) / ext_call.return_data[0] << 128) + (uint128(_8113) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8529 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8412 - 1)]
                        else:
                            _7965 = mem[_3635]
                            require ext_call.return_data[0]
                            _8114 = mem[_3635]
                            _8282 = mem[_3635 + 32]
                            require uint128(mem[_3635 + 32] - 1) < stor15.length
                            _8414 = mem[_3635 + 96]
                            require uint128(mem[_3635 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7965) / ext_call.return_data[0] << 128) + uint128(_8114)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8414 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8282 - 1)]
                    idx = idx + 1
                    continue 
                _3516 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3518 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3518) + 192
                mem[(32 * _3518) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6961 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3518) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6961) + (32 * _3518) + 224
                mem[(32 * _6961) + (32 * _3518) + _3516 + 224] = mem[96]
                _10237 = mem[96]
                mem[(32 * _6961) + (32 * _3518) + _3516 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3516 + 96] = (32 * mem[96]) + (32 * _6961) + (32 * _3518) + 256
                mem[(32 * _10237) + (32 * _6961) + (32 * _3518) + _3516 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10589 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10237) + (32 * _6961) + (32 * _3518) + _3516 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3516 + 128] = (32 * _10589) + (32 * _10237) + (32 * _6961) + (32 * _3518) + 288
                mem[(32 * _10589) + (32 * _10237) + (32 * _6961) + (32 * _3518) + _3516 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10845 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10589) + (32 * _10237) + (32 * _6961) + (32 * _3518) + _3516 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10845) + (32 * _10589) + (32 * _10237) + (32 * _6961) + (32 * _3518) + _3516 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3639 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3639 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                mem[_3639] = uint128(0 / incentive / 10^18)
                                mem[_3639 + 32] = uint128(s + 1)
                            if 0 > mem[_3639 + 80 len 16]:
                                mem[_3639 + 64] = 0
                                mem[_3639 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                mem[_3639] = uint128(0 / incentive / 10^18)
                                mem[_3639 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3639 + 80 len 16]:
                                mem[_3639 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3639 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                    mem[_3639] = uint128(0 / incentive / 10^18)
                                    mem[_3639 + 32] = uint128(s + 1)
                                if 0 > mem[_3639 + 80 len 16]:
                                    mem[_3639 + 64] = 0
                                    mem[_3639 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                    mem[_3639] = uint128(0 / incentive / 10^18)
                                    mem[_3639 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3639 + 80 len 16]:
                                    mem[_3639 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3639 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                    mem[_3639] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3639 + 32] = uint128(s + 1)
                                if 0 > mem[_3639 + 80 len 16]:
                                    mem[_3639 + 64] = 0
                                    mem[_3639 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3639 + 16 len 16]:
                                    mem[_3639] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3639 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3639 + 80 len 16]:
                                    mem[_3639 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3639 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3639 + 112 len 16]:
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
                    _7050 = mem[_3639 + 96]
                    require uint128(mem[_3639 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7050 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7050 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3639 + 16 len 16] >= uint128(mem[_3639 + 64]) / 2:
                        _7970 = mem[_3639 + 64]
                        require ext_call.return_data[0]
                        _8117 = mem[_3639 + 64]
                        _8415 = mem[_3639 + 32]
                        require uint128(mem[_3639 + 32] - 1) < stor15.length
                        _8533 = mem[_3639 + 96]
                        require uint128(mem[_3639 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7970) / ext_call.return_data[0] << 128) + (uint128(_8117) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8533 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8415 - 1)]
                    else:
                        _7971 = mem[_3639]
                        require ext_call.return_data[0]
                        _8118 = mem[_3639]
                        _8288 = mem[_3639 + 32]
                        require uint128(mem[_3639 + 32] - 1) < stor15.length
                        _8417 = mem[_3639 + 96]
                        require uint128(mem[_3639 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7971) / ext_call.return_data[0] << 128) + uint128(_8118)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8417 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8288 - 1)]
                idx = idx + 1
                continue 
            _3519 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3521 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3521) + 192
            mem[(32 * _3521) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6965 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3521) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6965) + (32 * _3521) + 224
            mem[(32 * _6965) + (32 * _3521) + _3519 + 224] = mem[96]
            _10240 = mem[96]
            mem[(32 * _6965) + (32 * _3521) + _3519 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3519 + 96] = (32 * mem[96]) + (32 * _6965) + (32 * _3521) + 256
            mem[(32 * _10240) + (32 * _6965) + (32 * _3521) + _3519 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10592 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10240) + (32 * _6965) + (32 * _3521) + _3519 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3519 + 128] = (32 * _10592) + (32 * _10240) + (32 * _6965) + (32 * _3521) + 288
            mem[(32 * _10592) + (32 * _10240) + (32 * _6965) + (32 * _3521) + _3519 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10848 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10592) + (32 * _10240) + (32 * _6965) + (32 * _3521) + _3519 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10848) + (32 * _10592) + (32 * _10240) + (32 * _6965) + (32 * _3521) + _3519 + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3643 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3643 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                mem[_3643] = uint128(0 / incentive / 10^18)
                                mem[_3643 + 32] = uint128(s + 1)
                            if 0 > mem[_3643 + 80 len 16]:
                                mem[_3643 + 64] = 0
                                mem[_3643 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                mem[_3643] = uint128(0 / incentive / 10^18)
                                mem[_3643 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3643 + 80 len 16]:
                                mem[_3643 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3643 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                    mem[_3643] = uint128(0 / incentive / 10^18)
                                    mem[_3643 + 32] = uint128(s + 1)
                                if 0 > mem[_3643 + 80 len 16]:
                                    mem[_3643 + 64] = 0
                                    mem[_3643 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                    mem[_3643] = uint128(0 / incentive / 10^18)
                                    mem[_3643 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3643 + 80 len 16]:
                                    mem[_3643 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3643 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                    mem[_3643] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3643 + 32] = uint128(s + 1)
                                if 0 > mem[_3643 + 80 len 16]:
                                    mem[_3643 + 64] = 0
                                    mem[_3643 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3643 + 16 len 16]:
                                    mem[_3643] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3643 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3643 + 80 len 16]:
                                    mem[_3643 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3643 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3643 + 112 len 16]:
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
                    _7052 = mem[_3643 + 96]
                    require uint128(mem[_3643 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7052 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7052 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3643 + 16 len 16] >= uint128(mem[_3643 + 64]) / 2:
                        _7976 = mem[_3643 + 64]
                        require ext_call.return_data[0]
                        _8121 = mem[_3643 + 64]
                        _8418 = mem[_3643 + 32]
                        require uint128(mem[_3643 + 32] - 1) < stor15.length
                        _8537 = mem[_3643 + 96]
                        require uint128(mem[_3643 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7976) / ext_call.return_data[0] << 128) + (uint128(_8121) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8537 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8418 - 1)]
                    else:
                        _7977 = mem[_3643]
                        require ext_call.return_data[0]
                        _8122 = mem[_3643]
                        _8294 = mem[_3643 + 32]
                        require uint128(mem[_3643 + 32] - 1) < stor15.length
                        _8420 = mem[_3643 + 96]
                        require uint128(mem[_3643 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7977) / ext_call.return_data[0] << 128) + uint128(_8122)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8420 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8294 - 1)]
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3524 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3524) + 192
            mem[(32 * _3524) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6969 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3524) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6969) + (32 * _3524) + 224
            mem[(32 * _6969) + (32 * _3524) + mem[64] + 224] = mem[96]
            _10243 = mem[96]
            mem[(32 * _6969) + (32 * _3524) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6969) + (32 * _3524) + 256
            mem[(32 * _10243) + (32 * _6969) + (32 * _3524) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10595 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10243) + (32 * _6969) + (32 * _3524) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[mem[64] + 128] = (32 * _10595) + (32 * _10243) + (32 * _6969) + (32 * _3524) + 288
            mem[(32 * _10595) + (32 * _10243) + (32 * _6969) + (32 * _3524) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10851 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10595) + (32 * _10243) + (32 * _6969) + (32 * _3524) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return 160, 
                   (32 * _3524) + 192,
                   (32 * _6969) + (32 * _3524) + 224,
                   mem[mem[64] + 96],
                   (32 * _10595) + (32 * _10243) + (32 * _6969) + (32 * _3524) + 288,
                   mem[mem[64] + 160 len (32 * _10851) + (32 * _10595) + (32 * _10243) + (32 * _6969) + (32 * _3524) + 160]
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3647 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3647 len 128] = call.data[calldata.size len 128]
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
                        if uint128(0 / incentive / 10^18) > mem[_3647 + 16 len 16]:
                            mem[_3647] = uint128(0 / incentive / 10^18)
                            mem[_3647 + 32] = uint128(s + 1)
                        if 0 > mem[_3647 + 80 len 16]:
                            mem[_3647 + 64] = 0
                            mem[_3647 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3647 + 16 len 16]:
                            mem[_3647] = uint128(0 / incentive / 10^18)
                            mem[_3647 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3647 + 80 len 16]:
                            mem[_3647 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3647 + 96] = uint128(s + 1)
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
                            if uint128(0 / incentive / 10^18) > mem[_3647 + 16 len 16]:
                                mem[_3647] = uint128(0 / incentive / 10^18)
                                mem[_3647 + 32] = uint128(s + 1)
                            if 0 > mem[_3647 + 80 len 16]:
                                mem[_3647 + 64] = 0
                                mem[_3647 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3647 + 16 len 16]:
                                mem[_3647] = uint128(0 / incentive / 10^18)
                                mem[_3647 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3647 + 80 len 16]:
                                mem[_3647 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3647 + 96] = uint128(s + 1)
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
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3647 + 16 len 16]:
                                mem[_3647] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3647 + 32] = uint128(s + 1)
                            if 0 > mem[_3647 + 80 len 16]:
                                mem[_3647 + 64] = 0
                                mem[_3647 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3647 + 16 len 16]:
                                mem[_3647] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3647 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3647 + 80 len 16]:
                                mem[_3647 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3647 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3647 + 112 len 16]:
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
                _7054 = mem[_3647 + 96]
                require uint128(mem[_3647 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_7054 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_7054 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3647 + 16 len 16] >= uint128(mem[_3647 + 64]) / 2:
                    _7982 = mem[_3647 + 64]
                    require ext_call.return_data[0]
                    _8125 = mem[_3647 + 64]
                    _8421 = mem[_3647 + 32]
                    require uint128(mem[_3647 + 32] - 1) < stor15.length
                    _8541 = mem[_3647 + 96]
                    require uint128(mem[_3647 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7982) / ext_call.return_data[0] << 128) + (uint128(_8125) / 2)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8541 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8421 - 1)]
                else:
                    _7983 = mem[_3647]
                    require ext_call.return_data[0]
                    _8126 = mem[_3647]
                    _8300 = mem[_3647 + 32]
                    require uint128(mem[_3647 + 32] - 1) < stor15.length
                    _8423 = mem[_3647 + 96]
                    require uint128(mem[_3647 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (10^18 * uint128(_7983) / ext_call.return_data[0] << 128) + uint128(_8126)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8423 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8300 - 1)]
            idx = idx + 1
            continue 
        _3525 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3527 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3527) + 192
        mem[(32 * _3527) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6973 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3527) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6973) + (32 * _3527) + 224
        mem[(32 * _6973) + (32 * _3527) + _3525 + 224] = mem[96]
        _10246 = mem[96]
        mem[(32 * _6973) + (32 * _3527) + _3525 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3525 + 96] = (32 * mem[96]) + (32 * _6973) + (32 * _3527) + 256
        mem[(32 * _10246) + (32 * _6973) + (32 * _3527) + _3525 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10598 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10246) + (32 * _6973) + (32 * _3527) + _3525 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3525 + 128] = (32 * _10598) + (32 * _10246) + (32 * _6973) + (32 * _3527) + 288
        mem[(32 * _10598) + (32 * _10246) + (32 * _6973) + (32 * _3527) + _3525 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10854 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10598) + (32 * _10246) + (32 * _6973) + (32 * _3527) + _3525 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10854) + (32 * _10598) + (32 * _10246) + (32 * _6973) + (32 * _3527) + _3525 + -mem[64] + 320
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
                    _3651 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3651 len 128] = call.data[calldata.size len 128]
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
                                if uint128(0 / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                    mem[_3651] = uint128(0 / incentive / 10^18)
                                    mem[_3651 + 32] = uint128(s + 1)
                                if 0 > mem[_3651 + 80 len 16]:
                                    mem[_3651 + 64] = 0
                                    mem[_3651 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                    mem[_3651] = uint128(0 / incentive / 10^18)
                                    mem[_3651 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3651 + 80 len 16]:
                                    mem[_3651 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3651 + 96] = uint128(s + 1)
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
                                    if uint128(0 / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                        mem[_3651] = uint128(0 / incentive / 10^18)
                                        mem[_3651 + 32] = uint128(s + 1)
                                    if 0 > mem[_3651 + 80 len 16]:
                                        mem[_3651 + 64] = 0
                                        mem[_3651 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(0 / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                        mem[_3651] = uint128(0 / incentive / 10^18)
                                        mem[_3651 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3651 + 80 len 16]:
                                        mem[_3651 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3651 + 96] = uint128(s + 1)
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
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                        mem[_3651] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3651 + 32] = uint128(s + 1)
                                    if 0 > mem[_3651 + 80 len 16]:
                                        mem[_3651 + 64] = 0
                                        mem[_3651 + 96] = uint128(s + 1)
                                else:
                                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    ext_call.return_data[101 len 27],
                                                    mem[mem[64] + 128 len 4]
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3651 + 16 len 16]:
                                        mem[_3651] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                        mem[_3651 + 32] = uint128(s + 1)
                                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3651 + 80 len 16]:
                                        mem[_3651 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                        mem[_3651 + 96] = uint128(s + 1)
                        s = s + 1
                        continue 
                    if not mem[_3651 + 112 len 16]:
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
                        _7056 = mem[_3651 + 96]
                        require uint128(mem[_3651 + 96] - 1) < stor15.length
                        mem[0] = 15
                        mem[mem[64] + 4] = stor15[uint128(_7056 - 1)]
                        require ext_code.size(priceOracleAddress)
                        staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                                gas gas_remaining wei
                               args stor15[uint128(_7056 - 1)]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if mem[_3651 + 16 len 16] >= uint128(mem[_3651 + 64]) / 2:
                            _7988 = mem[_3651 + 64]
                            require ext_call.return_data[0]
                            _8129 = mem[_3651 + 64]
                            _8424 = mem[_3651 + 32]
                            require uint128(mem[_3651 + 32] - 1) < stor15.length
                            _8545 = mem[_3651 + 96]
                            require uint128(mem[_3651 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7988) / ext_call.return_data[0] << 128) + (uint128(_8129) / 2)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8545 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8424 - 1)]
                        else:
                            _7989 = mem[_3651]
                            require ext_call.return_data[0]
                            _8130 = mem[_3651]
                            _8306 = mem[_3651 + 32]
                            require uint128(mem[_3651 + 32] - 1) < stor15.length
                            _8426 = mem[_3651 + 96]
                            require uint128(mem[_3651 + 96] - 1) < stor15.length
                            mem[0] = 15
                            require idx < mem[(98 * ('cd', 4).length) + 192]
                            require idx < mem[(131 * ('cd', 4).length) + 224]
                            require idx < mem[96]
                            require idx < mem[(32 * ('cd', 4).length) + 128]
                            require idx < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                            mem[(32 * idx) + 128] = (10^18 * uint128(_7989) / ext_call.return_data[0] << 128) + uint128(_8130)
                            mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8426 - 1)]
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8306 - 1)]
                    idx = idx + 1
                    continue 
                _3528 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
                _3530 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
                mem[mem[64] + 32] = (32 * _3530) + 192
                mem[(32 * _3530) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
                _6977 = mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * _3530) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
                mem[mem[64] + 64] = (32 * _6977) + (32 * _3530) + 224
                mem[(32 * _6977) + (32 * _3530) + _3528 + 224] = mem[96]
                _10249 = mem[96]
                mem[(32 * _6977) + (32 * _3530) + _3528 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[_3528 + 96] = (32 * mem[96]) + (32 * _6977) + (32 * _3530) + 256
                mem[(32 * _10249) + (32 * _6977) + (32 * _3530) + _3528 + 256] = mem[(32 * ('cd', 4).length) + 128]
                _10601 = mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * _10249) + (32 * _6977) + (32 * _3530) + _3528 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
                mem[_3528 + 128] = (32 * _10601) + (32 * _10249) + (32 * _6977) + (32 * _3530) + 288
                mem[(32 * _10601) + (32 * _10249) + (32 * _6977) + (32 * _3530) + _3528 + 288] = mem[(64 * ('cd', 4).length) + 160]
                _10857 = mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * _10601) + (32 * _10249) + (32 * _6977) + (32 * _3530) + _3528 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
                return memory
                  from mem[64]
                   len (32 * _10857) + (32 * _10601) + (32 * _10249) + (32 * _6977) + (32 * _3530) + _3528 + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _3655 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3655 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                mem[_3655] = uint128(0 / incentive / 10^18)
                                mem[_3655 + 32] = uint128(s + 1)
                            if 0 > mem[_3655 + 80 len 16]:
                                mem[_3655 + 64] = 0
                                mem[_3655 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                mem[_3655] = uint128(0 / incentive / 10^18)
                                mem[_3655 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3655 + 80 len 16]:
                                mem[_3655 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3655 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                    mem[_3655] = uint128(0 / incentive / 10^18)
                                    mem[_3655 + 32] = uint128(s + 1)
                                if 0 > mem[_3655 + 80 len 16]:
                                    mem[_3655 + 64] = 0
                                    mem[_3655 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                    mem[_3655] = uint128(0 / incentive / 10^18)
                                    mem[_3655 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3655 + 80 len 16]:
                                    mem[_3655 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3655 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                    mem[_3655] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3655 + 32] = uint128(s + 1)
                                if 0 > mem[_3655 + 80 len 16]:
                                    mem[_3655 + 64] = 0
                                    mem[_3655 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3655 + 16 len 16]:
                                    mem[_3655] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3655 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3655 + 80 len 16]:
                                    mem[_3655 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3655 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3655 + 112 len 16]:
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
                    _7058 = mem[_3655 + 96]
                    require uint128(mem[_3655 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7058 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7058 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3655 + 16 len 16] >= uint128(mem[_3655 + 64]) / 2:
                        _7994 = mem[_3655 + 64]
                        require ext_call.return_data[0]
                        _8133 = mem[_3655 + 64]
                        _8427 = mem[_3655 + 32]
                        require uint128(mem[_3655 + 32] - 1) < stor15.length
                        _8549 = mem[_3655 + 96]
                        require uint128(mem[_3655 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_7994) / ext_call.return_data[0] << 128) + (uint128(_8133) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8549 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8427 - 1)]
                    else:
                        _7995 = mem[_3655]
                        require ext_call.return_data[0]
                        _8134 = mem[_3655]
                        _8312 = mem[_3655 + 32]
                        require uint128(mem[_3655 + 32] - 1) < stor15.length
                        _8429 = mem[_3655 + 96]
                        require uint128(mem[_3655 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_7995) / ext_call.return_data[0] << 128) + uint128(_8134)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8429 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8312 - 1)]
                idx = idx + 1
                continue 
            _3531 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3533 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3533) + 192
            mem[(32 * _3533) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6981 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3533) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6981) + (32 * _3533) + 224
            mem[(32 * _6981) + (32 * _3533) + _3531 + 224] = mem[96]
            _10252 = mem[96]
            mem[(32 * _6981) + (32 * _3533) + _3531 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3531 + 96] = (32 * mem[96]) + (32 * _6981) + (32 * _3533) + 256
            mem[(32 * _10252) + (32 * _6981) + (32 * _3533) + _3531 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10604 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10252) + (32 * _6981) + (32 * _3533) + _3531 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3531 + 128] = (32 * _10604) + (32 * _10252) + (32 * _6981) + (32 * _3533) + 288
            mem[(32 * _10604) + (32 * _10252) + (32 * _6981) + (32 * _3533) + _3531 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10860 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10604) + (32 * _10252) + (32 * _6981) + (32 * _3533) + _3531 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10860) + (32 * _10604) + (32 * _10252) + (32 * _6981) + (32 * _3533) + _3531 + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _3659 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3659 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                mem[_3659] = uint128(0 / incentive / 10^18)
                                mem[_3659 + 32] = uint128(s + 1)
                            if 0 > mem[_3659 + 80 len 16]:
                                mem[_3659 + 64] = 0
                                mem[_3659 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                mem[_3659] = uint128(0 / incentive / 10^18)
                                mem[_3659 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3659 + 80 len 16]:
                                mem[_3659 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3659 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                    mem[_3659] = uint128(0 / incentive / 10^18)
                                    mem[_3659 + 32] = uint128(s + 1)
                                if 0 > mem[_3659 + 80 len 16]:
                                    mem[_3659 + 64] = 0
                                    mem[_3659 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                    mem[_3659] = uint128(0 / incentive / 10^18)
                                    mem[_3659 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3659 + 80 len 16]:
                                    mem[_3659 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3659 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                    mem[_3659] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3659 + 32] = uint128(s + 1)
                                if 0 > mem[_3659 + 80 len 16]:
                                    mem[_3659 + 64] = 0
                                    mem[_3659 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3659 + 16 len 16]:
                                    mem[_3659] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3659 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3659 + 80 len 16]:
                                    mem[_3659 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3659 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3659 + 112 len 16]:
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
                    _7060 = mem[_3659 + 96]
                    require uint128(mem[_3659 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7060 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7060 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3659 + 16 len 16] >= uint128(mem[_3659 + 64]) / 2:
                        _8000 = mem[_3659 + 64]
                        require ext_call.return_data[0]
                        _8137 = mem[_3659 + 64]
                        _8430 = mem[_3659 + 32]
                        require uint128(mem[_3659 + 32] - 1) < stor15.length
                        _8553 = mem[_3659 + 96]
                        require uint128(mem[_3659 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8000) / ext_call.return_data[0] << 128) + (uint128(_8137) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8553 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8430 - 1)]
                    else:
                        _8001 = mem[_3659]
                        require ext_call.return_data[0]
                        _8138 = mem[_3659]
                        _8318 = mem[_3659 + 32]
                        require uint128(mem[_3659 + 32] - 1) < stor15.length
                        _8432 = mem[_3659 + 96]
                        require uint128(mem[_3659 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_8001) / ext_call.return_data[0] << 128) + uint128(_8138)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8432 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8318 - 1)]
                idx = idx + 1
                continue 
            _3534 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3536 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3536) + 192
            mem[(32 * _3536) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6985 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3536) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6985) + (32 * _3536) + 224
            mem[(32 * _6985) + (32 * _3536) + _3534 + 224] = mem[96]
            _10255 = mem[96]
            mem[(32 * _6985) + (32 * _3536) + _3534 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3534 + 96] = (32 * mem[96]) + (32 * _6985) + (32 * _3536) + 256
            mem[(32 * _10255) + (32 * _6985) + (32 * _3536) + _3534 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10607 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10255) + (32 * _6985) + (32 * _3536) + _3534 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3534 + 128] = (32 * _10607) + (32 * _10255) + (32 * _6985) + (32 * _3536) + 288
            mem[(32 * _10607) + (32 * _10255) + (32 * _6985) + (32 * _3536) + _3534 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10863 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10607) + (32 * _10255) + (32 * _6985) + (32 * _3536) + _3534 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10863) + (32 * _10607) + (32 * _10255) + (32 * _6985) + (32 * _3536) + _3534 + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3663 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3663 len 128] = call.data[calldata.size len 128]
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
                        if uint128(0 / incentive / 10^18) > mem[_3663 + 16 len 16]:
                            mem[_3663] = uint128(0 / incentive / 10^18)
                            mem[_3663 + 32] = uint128(s + 1)
                        if 0 > mem[_3663 + 80 len 16]:
                            mem[_3663 + 64] = 0
                            mem[_3663 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3663 + 16 len 16]:
                            mem[_3663] = uint128(0 / incentive / 10^18)
                            mem[_3663 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3663 + 80 len 16]:
                            mem[_3663 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3663 + 96] = uint128(s + 1)
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
                            if uint128(0 / incentive / 10^18) > mem[_3663 + 16 len 16]:
                                mem[_3663] = uint128(0 / incentive / 10^18)
                                mem[_3663 + 32] = uint128(s + 1)
                            if 0 > mem[_3663 + 80 len 16]:
                                mem[_3663 + 64] = 0
                                mem[_3663 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3663 + 16 len 16]:
                                mem[_3663] = uint128(0 / incentive / 10^18)
                                mem[_3663 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3663 + 80 len 16]:
                                mem[_3663 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3663 + 96] = uint128(s + 1)
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
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3663 + 16 len 16]:
                                mem[_3663] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3663 + 32] = uint128(s + 1)
                            if 0 > mem[_3663 + 80 len 16]:
                                mem[_3663 + 64] = 0
                                mem[_3663 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3663 + 16 len 16]:
                                mem[_3663] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3663 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3663 + 80 len 16]:
                                mem[_3663 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3663 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3663 + 112 len 16]:
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
                _7062 = mem[_3663 + 96]
                require uint128(mem[_3663 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_7062 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_7062 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3663 + 16 len 16] >= uint128(mem[_3663 + 64]) / 2:
                    _8006 = mem[_3663 + 64]
                    require ext_call.return_data[0]
                    _8141 = mem[_3663 + 64]
                    _8433 = mem[_3663 + 32]
                    require uint128(mem[_3663 + 32] - 1) < stor15.length
                    _8557 = mem[_3663 + 96]
                    require uint128(mem[_3663 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8006) / ext_call.return_data[0] << 128) + (uint128(_8141) / 2)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8557 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8433 - 1)]
                else:
                    _8007 = mem[_3663]
                    require ext_call.return_data[0]
                    _8142 = mem[_3663]
                    _8324 = mem[_3663 + 32]
                    require uint128(mem[_3663 + 32] - 1) < stor15.length
                    _8435 = mem[_3663 + 96]
                    require uint128(mem[_3663 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (10^18 * uint128(_8007) / ext_call.return_data[0] << 128) + uint128(_8142)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8435 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8324 - 1)]
            idx = idx + 1
            continue 
        _3537 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3539 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3539) + 192
        mem[(32 * _3539) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6989 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3539) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6989) + (32 * _3539) + 224
        mem[(32 * _6989) + (32 * _3539) + _3537 + 224] = mem[96]
        _10258 = mem[96]
        mem[(32 * _6989) + (32 * _3539) + _3537 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_3537 + 96] = (32 * mem[96]) + (32 * _6989) + (32 * _3539) + 256
        mem[(32 * _10258) + (32 * _6989) + (32 * _3539) + _3537 + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10610 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10258) + (32 * _6989) + (32 * _3539) + _3537 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[_3537 + 128] = (32 * _10610) + (32 * _10258) + (32 * _6989) + (32 * _3539) + 288
        mem[(32 * _10610) + (32 * _10258) + (32 * _6989) + (32 * _3539) + _3537 + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10866 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10610) + (32 * _10258) + (32 * _6989) + (32 * _3539) + _3537 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return memory
          from mem[64]
           len (32 * _10866) + (32 * _10610) + (32 * _10258) + (32 * _6989) + (32 * _3539) + _3537 + -mem[64] + 320
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
                _3667 = mem[64]
                mem[64] = mem[64] + 128
                mem[_3667 len 128] = call.data[calldata.size len 128]
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
                            if uint128(0 / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                mem[_3667] = uint128(0 / incentive / 10^18)
                                mem[_3667 + 32] = uint128(s + 1)
                            if 0 > mem[_3667 + 80 len 16]:
                                mem[_3667 + 64] = 0
                                mem[_3667 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                mem[_3667] = uint128(0 / incentive / 10^18)
                                mem[_3667 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3667 + 80 len 16]:
                                mem[_3667 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3667 + 96] = uint128(s + 1)
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
                                if uint128(0 / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                    mem[_3667] = uint128(0 / incentive / 10^18)
                                    mem[_3667 + 32] = uint128(s + 1)
                                if 0 > mem[_3667 + 80 len 16]:
                                    mem[_3667 + 64] = 0
                                    mem[_3667 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(0 / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                    mem[_3667] = uint128(0 / incentive / 10^18)
                                    mem[_3667 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3667 + 80 len 16]:
                                    mem[_3667 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3667 + 96] = uint128(s + 1)
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
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                    mem[_3667] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3667 + 32] = uint128(s + 1)
                                if 0 > mem[_3667 + 80 len 16]:
                                    mem[_3667 + 64] = 0
                                    mem[_3667 + 96] = uint128(s + 1)
                            else:
                                if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                ext_call.return_data[101 len 27],
                                                mem[mem[64] + 128 len 4]
                                if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3667 + 16 len 16]:
                                    mem[_3667] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                    mem[_3667 + 32] = uint128(s + 1)
                                if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3667 + 80 len 16]:
                                    mem[_3667 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                    mem[_3667 + 96] = uint128(s + 1)
                    s = s + 1
                    continue 
                if not mem[_3667 + 112 len 16]:
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
                    _7064 = mem[_3667 + 96]
                    require uint128(mem[_3667 + 96] - 1) < stor15.length
                    mem[0] = 15
                    mem[mem[64] + 4] = stor15[uint128(_7064 - 1)]
                    require ext_code.size(priceOracleAddress)
                    staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                            gas gas_remaining wei
                           args stor15[uint128(_7064 - 1)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[_3667 + 16 len 16] >= uint128(mem[_3667 + 64]) / 2:
                        _8012 = mem[_3667 + 64]
                        require ext_call.return_data[0]
                        _8145 = mem[_3667 + 64]
                        _8436 = mem[_3667 + 32]
                        require uint128(mem[_3667 + 32] - 1) < stor15.length
                        _8561 = mem[_3667 + 96]
                        require uint128(mem[_3667 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8012) / ext_call.return_data[0] << 128) + (uint128(_8145) / 2)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8561 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8436 - 1)]
                    else:
                        _8013 = mem[_3667]
                        require ext_call.return_data[0]
                        _8146 = mem[_3667]
                        _8330 = mem[_3667 + 32]
                        require uint128(mem[_3667 + 32] - 1) < stor15.length
                        _8438 = mem[_3667 + 96]
                        require uint128(mem[_3667 + 96] - 1) < stor15.length
                        mem[0] = 15
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        require idx < mem[(131 * ('cd', 4).length) + 224]
                        require idx < mem[96]
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                        mem[(32 * idx) + 128] = (10^18 * uint128(_8013) / ext_call.return_data[0] << 128) + uint128(_8146)
                        mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8438 - 1)]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8330 - 1)]
                idx = idx + 1
                continue 
            _3540 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
            _3542 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
            mem[mem[64] + 32] = (32 * _3542) + 192
            mem[(32 * _3542) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
            _6993 = mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * _3542) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
            mem[mem[64] + 64] = (32 * _6993) + (32 * _3542) + 224
            mem[(32 * _6993) + (32 * _3542) + _3540 + 224] = mem[96]
            _10261 = mem[96]
            mem[(32 * _6993) + (32 * _3542) + _3540 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_3540 + 96] = (32 * mem[96]) + (32 * _6993) + (32 * _3542) + 256
            mem[(32 * _10261) + (32 * _6993) + (32 * _3542) + _3540 + 256] = mem[(32 * ('cd', 4).length) + 128]
            _10613 = mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * _10261) + (32 * _6993) + (32 * _3542) + _3540 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
            mem[_3540 + 128] = (32 * _10613) + (32 * _10261) + (32 * _6993) + (32 * _3542) + 288
            mem[(32 * _10613) + (32 * _10261) + (32 * _6993) + (32 * _3542) + _3540 + 288] = mem[(64 * ('cd', 4).length) + 160]
            _10869 = mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * _10613) + (32 * _10261) + (32 * _6993) + (32 * _3542) + _3540 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
            return memory
              from mem[64]
               len (32 * _10869) + (32 * _10613) + (32 * _10261) + (32 * _6993) + (32 * _3542) + _3540 + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _3671 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3671 len 128] = call.data[calldata.size len 128]
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
                        if uint128(0 / incentive / 10^18) > mem[_3671 + 16 len 16]:
                            mem[_3671] = uint128(0 / incentive / 10^18)
                            mem[_3671 + 32] = uint128(s + 1)
                        if 0 > mem[_3671 + 80 len 16]:
                            mem[_3671 + 64] = 0
                            mem[_3671 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3671 + 16 len 16]:
                            mem[_3671] = uint128(0 / incentive / 10^18)
                            mem[_3671 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3671 + 80 len 16]:
                            mem[_3671 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3671 + 96] = uint128(s + 1)
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
                            if uint128(0 / incentive / 10^18) > mem[_3671 + 16 len 16]:
                                mem[_3671] = uint128(0 / incentive / 10^18)
                                mem[_3671 + 32] = uint128(s + 1)
                            if 0 > mem[_3671 + 80 len 16]:
                                mem[_3671 + 64] = 0
                                mem[_3671 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3671 + 16 len 16]:
                                mem[_3671] = uint128(0 / incentive / 10^18)
                                mem[_3671 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3671 + 80 len 16]:
                                mem[_3671 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3671 + 96] = uint128(s + 1)
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
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3671 + 16 len 16]:
                                mem[_3671] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3671 + 32] = uint128(s + 1)
                            if 0 > mem[_3671 + 80 len 16]:
                                mem[_3671 + 64] = 0
                                mem[_3671 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3671 + 16 len 16]:
                                mem[_3671] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3671 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3671 + 80 len 16]:
                                mem[_3671 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3671 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3671 + 112 len 16]:
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
                _7066 = mem[_3671 + 96]
                require uint128(mem[_3671 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_7066 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_7066 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3671 + 16 len 16] >= uint128(mem[_3671 + 64]) / 2:
                    _8018 = mem[_3671 + 64]
                    require ext_call.return_data[0]
                    _8149 = mem[_3671 + 64]
                    _8439 = mem[_3671 + 32]
                    require uint128(mem[_3671 + 32] - 1) < stor15.length
                    _8565 = mem[_3671 + 96]
                    require uint128(mem[_3671 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8018) / ext_call.return_data[0] << 128) + (uint128(_8149) / 2)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8565 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8439 - 1)]
                else:
                    _8019 = mem[_3671]
                    require ext_call.return_data[0]
                    _8150 = mem[_3671]
                    _8336 = mem[_3671 + 32]
                    require uint128(mem[_3671 + 32] - 1) < stor15.length
                    _8441 = mem[_3671 + 96]
                    require uint128(mem[_3671 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (10^18 * uint128(_8019) / ext_call.return_data[0] << 128) + uint128(_8150)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8441 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8336 - 1)]
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3545 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3545) + 192
        mem[(32 * _3545) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _6997 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3545) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _6997) + (32 * _3545) + 224
        mem[(32 * _6997) + (32 * _3545) + mem[64] + 224] = mem[96]
        _10264 = mem[96]
        mem[(32 * _6997) + (32 * _3545) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _6997) + (32 * _3545) + 256
        mem[(32 * _10264) + (32 * _6997) + (32 * _3545) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10616 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * _10264) + (32 * _6997) + (32 * _3545) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[mem[64] + 128] = (32 * _10616) + (32 * _10264) + (32 * _6997) + (32 * _3545) + 288
        mem[(32 * _10616) + (32 * _10264) + (32 * _6997) + (32 * _3545) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10872 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10616) + (32 * _10264) + (32 * _6997) + (32 * _3545) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return 160, 
               (32 * _3545) + 192,
               (32 * _6997) + (32 * _3545) + 224,
               mem[mem[64] + 96],
               (32 * _10616) + (32 * _10264) + (32 * _6997) + (32 * _3545) + 288,
               mem[mem[64] + 160 len (32 * _10872) + (32 * _10616) + (32 * _10264) + (32 * _6997) + (32 * _3545) + 160]
    mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[64] = (164 * ('cd', 4).length) + 256
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _3675 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3675 len 128] = call.data[calldata.size len 128]
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
                        if uint128(0 / incentive / 10^18) > mem[_3675 + 16 len 16]:
                            mem[_3675] = uint128(0 / incentive / 10^18)
                            mem[_3675 + 32] = uint128(s + 1)
                        if 0 > mem[_3675 + 80 len 16]:
                            mem[_3675 + 64] = 0
                            mem[_3675 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3675 + 16 len 16]:
                            mem[_3675] = uint128(0 / incentive / 10^18)
                            mem[_3675 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3675 + 80 len 16]:
                            mem[_3675 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3675 + 96] = uint128(s + 1)
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
                            if uint128(0 / incentive / 10^18) > mem[_3675 + 16 len 16]:
                                mem[_3675] = uint128(0 / incentive / 10^18)
                                mem[_3675 + 32] = uint128(s + 1)
                            if 0 > mem[_3675 + 80 len 16]:
                                mem[_3675 + 64] = 0
                                mem[_3675 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(0 / incentive / 10^18) > mem[_3675 + 16 len 16]:
                                mem[_3675] = uint128(0 / incentive / 10^18)
                                mem[_3675 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3675 + 80 len 16]:
                                mem[_3675 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3675 + 96] = uint128(s + 1)
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
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3675 + 16 len 16]:
                                mem[_3675] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3675 + 32] = uint128(s + 1)
                            if 0 > mem[_3675 + 80 len 16]:
                                mem[_3675 + 64] = 0
                                mem[_3675 + 96] = uint128(s + 1)
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[101 len 27],
                                            mem[mem[64] + 128 len 4]
                            if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3675 + 16 len 16]:
                                mem[_3675] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                                mem[_3675 + 32] = uint128(s + 1)
                            if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3675 + 80 len 16]:
                                mem[_3675 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                                mem[_3675 + 96] = uint128(s + 1)
                s = s + 1
                continue 
            if not mem[_3675 + 112 len 16]:
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
                _7068 = mem[_3675 + 96]
                require uint128(mem[_3675 + 96] - 1) < stor15.length
                mem[0] = 15
                mem[mem[64] + 4] = stor15[uint128(_7068 - 1)]
                require ext_code.size(priceOracleAddress)
                staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args stor15[uint128(_7068 - 1)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[_3675 + 16 len 16] >= uint128(mem[_3675 + 64]) / 2:
                    _8024 = mem[_3675 + 64]
                    require ext_call.return_data[0]
                    _8153 = mem[_3675 + 64]
                    _8442 = mem[_3675 + 32]
                    require uint128(mem[_3675 + 32] - 1) < stor15.length
                    _8569 = mem[_3675 + 96]
                    require uint128(mem[_3675 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8024) / ext_call.return_data[0] << 128) + (uint128(_8153) / 2)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8569 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8442 - 1)]
                else:
                    _8025 = mem[_3675]
                    require ext_call.return_data[0]
                    _8154 = mem[_3675]
                    _8342 = mem[_3675 + 32]
                    require uint128(mem[_3675 + 32] - 1) < stor15.length
                    _8444 = mem[_3675 + 96]
                    require uint128(mem[_3675 + 96] - 1) < stor15.length
                    mem[0] = 15
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    require idx < mem[(131 * ('cd', 4).length) + 224]
                    require idx < mem[96]
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                    mem[(32 * idx) + 128] = (10^18 * uint128(_8025) / ext_call.return_data[0] << 128) + uint128(_8154)
                    mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8444 - 1)]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8342 - 1)]
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
        _3548 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
        mem[mem[64] + 32] = (32 * _3548) + 192
        mem[(32 * _3548) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
        _7001 = mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * _3548) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
        mem[mem[64] + 64] = (32 * _7001) + (32 * _3548) + 224
        mem[(32 * _7001) + (32 * _3548) + mem[64] + 224] = mem[96]
        _10267 = mem[96]
        mem[(32 * _7001) + (32 * _3548) + mem[64] + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _7001) + (32 * _3548) + 256
        mem[(32 * mem[96]) + (32 * _7001) + (32 * _3548) + mem[64] + 256] = mem[(32 * ('cd', 4).length) + 128]
        _10619 = mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * mem[96]) + (32 * _7001) + (32 * _3548) + mem[64] + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
        mem[mem[64] + 128] = (32 * _10619) + (32 * mem[96]) + (32 * _7001) + (32 * _3548) + 288
        mem[(32 * _10619) + (32 * _10267) + (32 * _7001) + (32 * _3548) + mem[64] + 288] = mem[(64 * ('cd', 4).length) + 160]
        _10875 = mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * _10619) + (32 * _10267) + (32 * _7001) + (32 * _3548) + mem[64] + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
        return 160, 
               (32 * _3548) + 192,
               (32 * _7001) + (32 * _3548) + 224,
               mem[mem[64] + 96 len (32 * _10875) + (32 * _10619) + (32 * _10267) + (32 * _7001) + (32 * _3548) + 224]
    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        _3679 = mem[64]
        mem[64] = mem[64] + 128
        mem[_3679 len 128] = call.data[calldata.size len 128]
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
                    if uint128(0 / incentive / 10^18) > mem[_3679 + 16 len 16]:
                        mem[_3679] = uint128(0 / incentive / 10^18)
                        mem[_3679 + 32] = uint128(s + 1)
                    if 0 > mem[_3679 + 80 len 16]:
                        mem[_3679 + 64] = 0
                        mem[_3679 + 96] = uint128(s + 1)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[101 len 27],
                                    mem[mem[64] + 128 len 4]
                    if uint128(0 / incentive / 10^18) > mem[_3679 + 16 len 16]:
                        mem[_3679] = uint128(0 / incentive / 10^18)
                        mem[_3679 + 32] = uint128(s + 1)
                    if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3679 + 80 len 16]:
                        mem[_3679 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                        mem[_3679 + 96] = uint128(s + 1)
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
                        if uint128(0 / incentive / 10^18) > mem[_3679 + 16 len 16]:
                            mem[_3679] = uint128(0 / incentive / 10^18)
                            mem[_3679 + 32] = uint128(s + 1)
                        if 0 > mem[_3679 + 80 len 16]:
                            mem[_3679 + 64] = 0
                            mem[_3679 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(0 / incentive / 10^18) > mem[_3679 + 16 len 16]:
                            mem[_3679] = uint128(0 / incentive / 10^18)
                            mem[_3679 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3679 + 80 len 16]:
                            mem[_3679 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3679 + 96] = uint128(s + 1)
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
                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3679 + 16 len 16]:
                            mem[_3679] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                            mem[_3679 + 32] = uint128(s + 1)
                        if 0 > mem[_3679 + 80 len 16]:
                            mem[_3679 + 64] = 0
                            mem[_3679 + 96] = uint128(s + 1)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[64] / ext_call.return_data[64] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[101 len 27],
                                        mem[mem[64] + 128 len 4]
                        if uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18) > mem[_3679 + 16 len 16]:
                            mem[_3679] = uint128(ext_call.return_data[0] * ext_call.return_data[96] * ext_call.return_data[32] / incentive / 10^18)
                            mem[_3679 + 32] = uint128(s + 1)
                        if uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18) > mem[_3679 + 80 len 16]:
                            mem[_3679 + 64] = uint128(ext_call.return_data[0] * ext_call.return_data[64] / 10^18)
                            mem[_3679 + 96] = uint128(s + 1)
            s = s + 1
            continue 
        if not mem[_3679 + 112 len 16]:
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
            _7070 = mem[_3679 + 96]
            require uint128(mem[_3679 + 96] - 1) < stor15.length
            mem[0] = 15
            mem[mem[64] + 4] = stor15[uint128(_7070 - 1)]
            require ext_code.size(priceOracleAddress)
            staticcall priceOracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args stor15[uint128(_7070 - 1)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[_3679 + 16 len 16] >= uint128(mem[_3679 + 64]) / 2:
                _8030 = mem[_3679 + 64]
                require ext_call.return_data[0]
                _8157 = mem[_3679 + 64]
                _8445 = mem[_3679 + 32]
                require uint128(mem[_3679 + 32] - 1) < stor15.length
                _8573 = mem[_3679 + 96]
                require uint128(mem[_3679 + 96] - 1) < stor15.length
                mem[0] = 15
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = (5 * 10^17 * uint128(_8030) / ext_call.return_data[0] << 128) + (uint128(_8157) / 2)
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8573 - 1)]
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8445 - 1)]
            else:
                _8031 = mem[_3679]
                require ext_call.return_data[0]
                _8158 = mem[_3679]
                _8348 = mem[_3679 + 32]
                require uint128(mem[_3679 + 32] - 1) < stor15.length
                _8447 = mem[_3679 + 96]
                require uint128(mem[_3679 + 96] - 1) < stor15.length
                mem[0] = 15
                require idx < mem[(98 * ('cd', 4).length) + 192]
                require idx < mem[(131 * ('cd', 4).length) + 224]
                require idx < mem[96]
                require idx < mem[(32 * ('cd', 4).length) + 128]
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = 0
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = 0
                mem[(32 * idx) + 128] = (10^18 * uint128(_8031) / ext_call.return_data[0] << 128) + uint128(_8158)
                mem[(32 * idx) + (131 * ('cd', 4).length) + 256] = stor15[uint128(_8447 - 1)]
                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = stor15[uint128(_8348 - 1)]
        idx = idx + 1
        continue 
    _3549 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[(98 * ('cd', 4).length) + 192]
    _3551 = mem[(98 * ('cd', 4).length) + 192]
    mem[mem[64] + 192 len floor32(mem[(98 * ('cd', 4).length) + 192])] = mem[(98 * ('cd', 4).length) + 224 len floor32(mem[(98 * ('cd', 4).length) + 192])]
    mem[mem[64] + 32] = (32 * _3551) + 192
    mem[(32 * _3551) + mem[64] + 192] = mem[(131 * ('cd', 4).length) + 224]
    _7005 = mem[(131 * ('cd', 4).length) + 224]
    mem[(32 * _3551) + mem[64] + 224 len floor32(mem[(131 * ('cd', 4).length) + 224])] = mem[(131 * ('cd', 4).length) + 256 len floor32(mem[(131 * ('cd', 4).length) + 224])]
    mem[mem[64] + 64] = (32 * _7005) + (32 * _3551) + 224
    mem[(32 * _7005) + (32 * _3551) + _3549 + 224] = mem[96]
    _10270 = mem[96]
    mem[(32 * _7005) + (32 * _3551) + _3549 + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_3549 + 96] = (32 * mem[96]) + (32 * _7005) + (32 * _3551) + 256
    mem[(32 * _10270) + (32 * _7005) + (32 * _3551) + _3549 + 256] = mem[(32 * ('cd', 4).length) + 128]
    _10622 = mem[(32 * ('cd', 4).length) + 128]
    mem[(32 * _10270) + (32 * _7005) + (32 * _3551) + _3549 + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    mem[_3549 + 128] = (32 * _10622) + (32 * _10270) + (32 * _7005) + (32 * _3551) + 288
    mem[(32 * _10622) + (32 * _10270) + (32 * _7005) + (32 * _3551) + _3549 + 288] = mem[(64 * ('cd', 4).length) + 160]
    _10878 = mem[(64 * ('cd', 4).length) + 160]
    mem[(32 * _10622) + (32 * _10270) + (32 * _7005) + (32 * _3551) + _3549 + 320 len floor32(mem[(64 * ('cd', 4).length) + 160])] = mem[(64 * ('cd', 4).length) + 192 len floor32(mem[(64 * ('cd', 4).length) + 160])]
    return memory
      from mem[64]
       len (32 * _10878) + (32 * _10622) + (32 * _10270) + (32 * _7005) + (32 * _3551) + _3549 + -mem[64] + 320
}



}
