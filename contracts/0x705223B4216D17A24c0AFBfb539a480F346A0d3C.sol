contract main {




// =====================  Runtime code  =====================


const sub_19cab6a5(?) = 0x1337bedc9d22ecbe766df105c9623922a27963ec

const sub_280718e2(?) = 0x5b5cfe992adac0c9d48e05854b2d91c73a003858


address owner;
address ADDRESSES_PROVIDER;
address LENDING_POOLAddress;
uint256 stor3;
address curveAddress;
uint32 stor5;
address curvePoolAddress;
uint32 stor6;
address sub_ada58d14Address;
uint256 stor6;
address DAIAddress;
address USDCAddress;
address USDTAddress;
address sub_feaa524dAddress;
address stor11;
address stor12;

function ADDRESSES_PROVIDER() {
    return ADDRESSES_PROVIDER
}

function curvePool() {
    return address(curvePoolAddress)
}

function curve() {
    return curveAddress
}

function USDC() {
    return USDCAddress
}

function owner() {
    return owner
}

function sub_ada58d14(?) {
    return address(sub_ada58d14Address)
}

function LENDING_POOL() {
    return LENDING_POOLAddress
}

function USDT() {
    return USDTAddress
}

function DAI() {
    return DAIAddress
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
    require ext_code.size(stor11)
    call stor11.exit(address arg1, uint256 arg2) with:
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

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    stor3 = 0
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[804 len 0] = None
    mem[932 len 0] = None
    mem[1060 len 0] = None
    require ext_code.size(LENDING_POOLAddress)
    call LENDING_POOLAddress.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args this.address, 224, 352, 480, this.address, 608, 0, 3, mem[804 len 96], 3, mem[932 len 96], 3, mem[1060 len 96], 0
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

function unstake() {
    stor3 = 1
    require ext_code.size(stor11)
    staticcall stor11.getAssetBalance(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[612 len 0] = None
    mem[676 len 0] = None
    mem[740 len 0] = None
    require ext_code.size(LENDING_POOLAddress)
    call LENDING_POOLAddress.flashLoan(address arg1, address[] arg2, uint256[] arg3, uint256[] arg4, address arg5, bytes arg6, uint16 arg7) with:
         gas gas_remaining wei
        args address(this.address), 224, 288, 352, this.address, 416, 0, 1, mem[612], 1, mem[676], 1, mem[740], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(DAIAddress)
    staticcall DAIAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(USDTAddress)
    staticcall USDTAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_ada58d14Address))
    call address(sub_ada58d14Address).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0] >> 512, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
    staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
    staticcall 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor12)
    call stor12.enter(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor11)
    call stor11.joinAndMint(uint256 arg1, uint256 arg2) with:
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
    if 0 == stor3:
        require ext_code.size(DAIAddress)
        staticcall DAIAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(USDCAddress)
        staticcall USDCAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(USDTAddress)
        staticcall USDTAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_ada58d14Address))
        call address(sub_ada58d14Address).add_liquidity(uint256[3] arg1, uint256 arg2, bool arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] >> 512, 0, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x1337bedc9d22ecbe766df105c9623922a27963ec)
        staticcall 0x1337bedc9d22ecbe766df105c9623922a27963ec.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
        call 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x5b5cfe992adac0c9d48e05854b2d91c73a003858)
        staticcall 0x5b5cfe992adac0c9d48e05854b2d91c73a003858.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        call stor12.enter(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        staticcall stor11.0x2d26e5cd with:
                gas gas_remaining wei
               args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.joinAndMint(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 995 * ext_call.return_data[0] / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args address(curvePoolAddress), 0, 1, 995 * ext_call.return_data[0] / 1000 / 3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args address(curvePoolAddress), 0, 2, 995 * ext_call.return_data[0] / 1000 / 3, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args address(curvePoolAddress), 0, 3, 995 * ext_call.return_data[0] / 1000 / 3, 0
    else:
        require 0 < arg2.length
        require ext_code.size(curveAddress)
        call curveAddress.0x7981c43e with:
             gas gas_remaining wei
            args 0, uint32(stor5), 2, 0, cd[(arg2 + 36)], 95 * 10^10 * cd[(arg2 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor11)
        call stor11.repaySystemCoin(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor11)
        staticcall stor11.0x29bc969d with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor11)
        call stor11.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        staticcall stor12.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor12)
        call stor12.leave(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor12)
        staticcall stor12.stakeToken() with:
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
        call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).lp_token() with:
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
        if not ext_call.return_data[0]:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(sub_ada58d14Address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            Mask(80, 0, cd[(arg2 + 36)])
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, cd[(arg2 + 36)]) >> 224
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address arg1, uint256 arg2), Mask(224, 0, stor6):
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
        require ext_code.size(address(sub_ada58d14Address))
        call address(sub_ada58d14Address).remove_liquidity_one_coin(uint256 arg1, int128 arg2, uint256 arg3, bool arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 1, 0, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
