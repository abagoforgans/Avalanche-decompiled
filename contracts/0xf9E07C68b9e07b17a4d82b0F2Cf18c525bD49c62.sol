contract main {




// =====================  Runtime code  =====================


const sub_19cab6a5(?) = 0x1337bedc9d22ecbe766df105c9623922a27963ec

const melt = 0x47eb6f7525c1aa999fbc9ee92715f5231eb1241d


address owner;
address ADDRESSES_PROVIDER;
address LENDING_POOLAddress;
uint256 index;
address sub_462e4cdaAddress;
uint32 stor5;
address underlyingAddress;
address vaultAddress;
address sub_2b4116f7Address;
address curveAddress;
address sub_413d823aAddress;
uint32 stor10;
address curvePoolAddress;
address sub_feaa524dAddress;
uint32 stor12;
address DAIAddress;

function ADDRESSES_PROVIDER() {
    return ADDRESSES_PROVIDER
}

function curvePool() {
    return address(curvePoolAddress)
}

function index() {
    return index
}

function sub_2b4116f7(?) {
    return sub_2b4116f7Address
}

function sub_413d823a(?) {
    return sub_413d823aAddress
}

function sub_462e4cda(?) {
    return sub_462e4cdaAddress
}

function underlying() {
    return address(underlyingAddress)
}

function curve() {
    return curveAddress
}

function owner() {
    return owner
}

function LENDING_POOL() {
    return LENDING_POOLAddress
}

function DAI() {
    return address(DAIAddress)
}

function vault() {
    return vaultAddress
}

function sub_feaa524d(?) {
    return sub_feaa524dAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function exit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.exit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    index = 1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getAssetBalance(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[580 len 0] = None
    mem[644 len 0] = None
    mem[708 len 0] = None
    require ext_code.size(LENDING_POOLAddress)
    call LENDING_POOLAddress.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, this.address, 416, 0, 1, mem[580], 1, mem[644], 1, mem[708], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit LogWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    index = 0
    require ext_code.size(address(DAIAddress))
    staticcall address(DAIAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[580 len 0] = None
    mem[644 len 0] = None
    mem[708 len 0] = None
    require ext_code.size(LENDING_POOLAddress)
    call LENDING_POOLAddress.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args this.address, 224, 288, 352, this.address, 416, 0, 1, mem[580], 1, mem[644], 1, mem[708], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(DAIAddress))
    staticcall address(DAIAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_413d823aAddress)
    call sub_413d823aAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(DAIAddress), address(underlyingAddress), ext_call.return_data[0], 0, this.address, block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(underlyingAddress))
    staticcall address(underlyingAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    call sub_462e4cdaAddress.0xa0712d68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_462e4cdaAddress)
    staticcall sub_462e4cdaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_2b4116f7Address)
    call sub_2b4116f7Address.enter(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_2b4116f7Address)
    staticcall sub_2b4116f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    call vaultAddress.joinAndMint(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address[] arg1, uint256[] arg2, uint256[] arg3, address arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(address(DAIAddress))
    staticcall address(DAIAddress).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 == index:
        require ext_code.size(sub_413d823aAddress)
        call sub_413d823aAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, uint32(stor12), address(underlyingAddress), ext_call.return_data[0], 0, this.address, block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(underlyingAddress))
        staticcall address(underlyingAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        call sub_462e4cdaAddress.0xa0712d68 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_462e4cdaAddress)
        staticcall sub_462e4cdaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2b4116f7Address)
        call sub_2b4116f7Address.enter(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_2b4116f7Address)
        staticcall sub_2b4116f7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x2d26e5cd with:
                gas gas_remaining wei
               args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        call vaultAddress.joinAndMint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 990 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_feaa524dAddress)
        staticcall sub_feaa524dAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args 0, ext_call.return_data[32], 0, 1, ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args 0, uint32(stor10), 1, 0, ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        call vaultAddress.repaySystemCoin(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.0x29bc969d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(vaultAddress)
        call vaultAddress.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_2b4116f7Address)
        staticcall sub_2b4116f7Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_2b4116f7Address)
        call sub_2b4116f7Address.leave(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_2b4116f7Address)
        staticcall sub_2b4116f7Address.stakeToken() with:
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
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).redeemUnderlying(uint256 arg1) with:
             gas gas_remaining wei
            args -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(underlyingAddress))
        staticcall address(underlyingAddress).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_413d823aAddress)
        call sub_413d823aAddress.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args 0, uint32(stor5), address(DAIAddress), ext_call.return_data[0], 0, this.address, block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
    return 1
}



}
