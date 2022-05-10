contract main {




// =====================  Runtime code  =====================


address owner;
address addressesProvider;
address cEtherAddress;
address curveAddress;
uint32 stor4;
address curvePoolAddress;
address sub_ada58d14Address;
address sub_feaa524dAddress;
address USDCAddress;
address sub_085684a2Address;
address WAVAXAddress;
array of address sub_4fbc2a03;
mapping of uint256 stor13;

function sub_085684a2(?) {
    return sub_085684a2Address
}

function curvePool() {
    return address(curvePoolAddress)
}

function sub_4fbc2a03(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_4fbc2a03[arg1])
    return address(sub_4fbc2a03[arg1][arg2])
}

function CEther() {
    return cEtherAddress
}

function curve() {
    return curveAddress
}

function WAVAX() {
    return WAVAXAddress
}

function USDC() {
    return USDCAddress
}

function owner() {
    return owner
}

function sub_ada58d14(?) {
    return sub_ada58d14Address
}

function addressesProvider() {
    return addressesProvider
}

function sub_feaa524d(?) {
    return sub_feaa524dAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_4d2e3d92(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
    stor13[address(arg1)] = arg2
}

function sub_10e4912e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
    require ext_code.size(curveAddress)
    call curveAddress.0x7981c43e with:
         gas gas_remaining wei
        args 0, uint32(stor4), 2, 0, arg1, 95 * 10^10 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_73342b1b(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), USDCAddress, 100000, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8912dc0a(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
    uint256(sub_4fbc2a03[address(cd[4])]) = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while uint256(sub_4fbc2a03[address(cd[4])]) > idx:
            address(sub_4fbc2a03[address(cd[4])][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(sub_4fbc2a03[address(cd[4])][s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while uint256(sub_4fbc2a03[address(cd[4])]) > idx:
            address(sub_4fbc2a03[address(cd[4])][idx]) = 0
            idx = idx + 1
            continue 
}

function approveToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
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
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), address(arg2) << 64, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), address(arg2) << 64, 0, -1
        if not approve(address arg1, uint256 arg2), address(arg2) << 64:
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '?Ownable: caller is not the owne'
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
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
        emit LogWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function sub_b3ee123d(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x29bc969d with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[(64 * ('cd', 4).length) + 164] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
        staticcall address(cd[((32 * idx) + cd[36] + 36)]).getCollateralLeft(address arg1) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[(64 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 64
    mem[(64 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[(64 * ('cd', 4).length) + 256 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    mem[(64 * ('cd', 4).length) + 192] = (32 * ('cd', 4).length) + 96
    mem[(98 * ('cd', 4).length) + 256] = mem[(32 * ('cd', 4).length) + 128]
    mem[(98 * ('cd', 4).length) + 288 len floor32(mem[(32 * ('cd', 4).length) + 128])] = mem[(32 * ('cd', 4).length) + 160 len floor32(mem[(32 * ('cd', 4).length) + 128])]
    return memory
      from (64 * ('cd', 4).length) + 160
       len (32 * mem[(32 * ('cd', 4).length) + 128]) + (32 * ('cd', 4).length) + 128
}

function executeOperation(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg2 > eth.balance(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x6c496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                        mem[210 len 18]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        46,
                        0x6c496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                        mem[210 len 18]
    require ext_code.size(addressesProvider)
    staticcall addressesProvider.getLendingPoolCore() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call ext_call.return_data[12 len 20] with:
           value arg3 + arg2 wei
             gas gas_remaining wei
        if bool(ext_call.success) != 1:
            revert with 0, 'Couldn't transfer ETH'
    else:
        mem[132] = ext_call.return_data[12 len 20]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, arg3 + arg2) >> 32
        mem[324 len 0] = 0
        call arg1.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(224, 32, arg3 + arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], arg3 + arg2
            if not 0, mem[132 len 28]:
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



}
