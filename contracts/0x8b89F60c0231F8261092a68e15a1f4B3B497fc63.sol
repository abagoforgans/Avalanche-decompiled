contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const UniswapV2Router = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const getBlockNumber = block.number

const getCloseFactor = ext_call.return_data[0]

const expScale = 10^18

const cETH = 0xdc13687554205e5b89ac783db14bb5bba4a1edac

const factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const WETH_ADDRESS = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const COMPTROLLER = 0xdc13687554205e5b89ac783db14bb5bba4a1edac


uint32 stor0;
address owner;
uint256 stor0;

function owner() {
    return address(owner)
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == address(owner))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_e5977729(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_4f721e99(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg4.length
    _3 = mem[128]
    require 2 < arg4.length
    _5 = mem[192]
    mem[(32 * arg4.length) + 132] = mem[140 len 20]
    require ext_code.size(address(_5))
    staticcall address(_5).borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.closeFactorMantissa() with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 128] = 26
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
        if 0 < arg1:
        require 0 < arg4.length
        require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
        staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = arg5.length
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 448
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 256] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 288] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 352] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 384] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (4 * ceil32(return_data.size)) + 192
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 512] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 544] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 576] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 640] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 736] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 768
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 672] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
        if address(arg3) == address(ext_call.return_data[0]):
            if address(arg3) == ext_call.return_data[12 len 20]:
                _968 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
                idx = 0
                s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
                t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
                while idx < _968:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 804] = 0
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 836] = 0
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 868] = this.address
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 900] = 128
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 932] = (96 * arg4.length) + (32 * _968) + 320
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 964 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * _968) + 31) + 10 > (96 * arg4.length) + (32 * _968) + 320:
                    mem[(161 * arg4.length) + (64 * _968) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _968) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg2))
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_code.hash(address(arg2)):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
                if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                    mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _968) + 968] = 0
                call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904 len (17 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904] = 32
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 936] = 32
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 968] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900
                           len (127 * arg4.length) + 100
                    if not arg4.length:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if mem[128]:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 936] = 42
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 968] = 'SafeERC20: ERC20 operation did n'
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900
                       len (127 * arg4.length) + 132
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 905] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 937] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901
                       len (127 * arg4.length) + 100
                if not return_data.size:
                require return_data.size >= 32
                require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932])
                if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 937] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 132
            _969 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _969:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 804] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 836] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 932] = (96 * arg4.length) + (32 * _969) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 964 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _969) + 31) + 10 > (96 * arg4.length) + (32 * _969) + 320:
                mem[(161 * arg4.length) + (64 * _969) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _969) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg2)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _969) + 968] = 0
            call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        if address(arg3) == ext_call.return_data[12 len 20]:
            _970 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _970:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 804] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 836] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 932] = (96 * arg4.length) + (32 * _970) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 964 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _970) + 31) + 10 > (96 * arg4.length) + (32 * _970) + 320:
                mem[(161 * arg4.length) + (64 * _970) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _970) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg2)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _970) + 968] = 0
            call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        _971 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _971:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 804] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 836] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 932] = (96 * arg4.length) + (32 * _971) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 964 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _971) + 31) + 10 > (96 * arg4.length) + (32 * _971) + 320:
            mem[(161 * arg4.length) + (64 * _971) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _971) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _971) + 968] = 0
        call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 128] = 26
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < arg1:
    require 0 < arg4.length
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args mem[140 len 20]
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[64]:
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = arg5.length
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 228] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 260] = address(arg2)
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 448
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 256] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 288] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 352] = 96
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (4 * ceil32(return_data.size)) + 192
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480] = 32
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 512] = 0
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 544] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 576] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 640] = 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 736] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 768
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
    if address(arg3) == address(ext_call.return_data[0]):
        if address(arg3) == ext_call.return_data[12 len 20]:
            _964 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _964:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 804] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 932] = (96 * arg4.length) + (32 * _964) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 964 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _964) + 31) + 10 > (96 * arg4.length) + (32 * _964) + 320:
                mem[(161 * arg4.length) + (64 * _964) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), Array(len=(96 * arg4.length) + (32 * _964) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg2))
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg2)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _964) + 968] = 0
            call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        _965 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _965:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 804] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 836] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 932] = (96 * arg4.length) + (32 * _965) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 964 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _965) + 31) + 10 > (96 * arg4.length) + (32 * _965) + 320:
            mem[(161 * arg4.length) + (64 * _965) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0, address(this.address), 128, (96 * arg4.length) + (32 * _965) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _965) + 968] = 0
        call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    if address(arg3) == ext_call.return_data[12 len 20]:
        _966 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _966:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 804] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 932] = (96 * arg4.length) + (32 * _966) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 964 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _966) + 31) + 10 > (96 * arg4.length) + (32 * _966) + 320:
            mem[(161 * arg4.length) + (64 * _966) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, (96 * arg4.length) + (32 * _966) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg2)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _966) + 968] = 0
        call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    _967 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
    idx = 0
    s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
    t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
    while idx < _967:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 804] = 0
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 836] = 0
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 868] = this.address
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 900] = 128
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 932] = (96 * arg4.length) + (32 * _967) + 320
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 964 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10]
    if floor32((96 * arg4.length) + (32 * _967) + 31) + 10 > (96 * arg4.length) + (32 * _967) + 320:
        mem[(161 * arg4.length) + (64 * _967) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _967) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_code.hash(address(arg2)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg2)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
    if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
        mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _967) + 968] = 0
    call address(arg2).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len 4] with:
         gas gas_remaining wei
        args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904 len (17 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 936] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 968] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 936] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 968] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900
           len (127 * arg4.length) + 132
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 937] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932])
    if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932]:
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 905] = 32
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 937] = 42
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901
       len (127 * arg4.length) + 132
}

function sub_b8155e48(?) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require arg4.length
    _3 = mem[128]
    require 2 < arg4.length
    _5 = mem[192]
    mem[(32 * arg4.length) + 132] = mem[140 len 20]
    require ext_code.size(address(_5))
    staticcall address(_5).borrowBalanceStored(address rg1) with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.closeFactorMantissa() with:
            gas gas_remaining wei
    mem[(32 * arg4.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 128] = 26
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
        if 0 < arg1:
        require 0 < arg4.length
        require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
        staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.getAccountLiquidity(address rg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = arg5.length
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 448
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 256] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 288] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 352] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 384] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (4 * ceil32(return_data.size)) + 192
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 512] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 544] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 576] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 640] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 736] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 768
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 672] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
        if address(arg3) == address(ext_call.return_data[0]):
            if address(arg3) == ext_call.return_data[12 len 20]:
                _968 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
                idx = 0
                s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
                t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
                while idx < _968:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 804] = 0
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 836] = 0
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 868] = this.address
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 900] = 128
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 932] = (96 * arg4.length) + (32 * _968) + 320
                mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _968) + 964 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * _968) + 31) + 10 > (96 * arg4.length) + (32 * _968) + 320:
                    mem[(161 * arg4.length) + (64 * _968) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _968) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _968) + 31) + 10]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg3))
                staticcall address(arg3).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if not ext_code.hash(address(arg3)):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
                if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                    mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _968) + 968] = 0
                call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900 len 4] with:
                     gas gas_remaining wei
                    args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904 len (17 * ceil32(return_data.size)) + 64]
                if not return_data.size:
                    if not ext_call.success:
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904] = 32
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 936] = 32
                        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 968] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900
                           len (127 * arg4.length) + 100
                    if not arg4.length:
                    require arg4.length >= 32
                    require mem[128] == bool(mem[128])
                    if mem[128]:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 936] = 42
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 968] = 'SafeERC20: ERC20 operation did n'
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 900
                       len (127 * arg4.length) + 132
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 905] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 937] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901
                       len (127 * arg4.length) + 100
                if not return_data.size:
                require return_data.size >= 32
                require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932])
                if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + 932]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 937] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _968) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 132
            _969 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _969:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 804] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 836] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 932] = (96 * arg4.length) + (32 * _969) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _969) + 964 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _969) + 31) + 10 > (96 * arg4.length) + (32 * _969) + 320:
                mem[(161 * arg4.length) + (64 * _969) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _969) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _969) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg3)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _969) + 968] = 0
            call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _969) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        if address(arg3) == ext_call.return_data[12 len 20]:
            _970 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _970:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 804] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 836] = 0
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 932] = (96 * arg4.length) + (32 * _970) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _970) + 964 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _970) + 31) + 10 > (96 * arg4.length) + (32 * _970) + 320:
                mem[(161 * arg4.length) + (64 * _970) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _970) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _970) + 31) + 10]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg3)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _970) + 968] = 0
            call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _970) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        _971 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _971:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 804] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 836] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 932] = (96 * arg4.length) + (32 * _971) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _971) + 964 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _971) + 31) + 10 > (96 * arg4.length) + (32 * _971) + 320:
            mem[(161 * arg4.length) + (64 * _971) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _971) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _971) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg3)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _971) + 968] = 0
        call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _971) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 128] = 26
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < arg1:
    require 0 < arg4.length
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    staticcall 0xdc13687554205e5b89ac783db14bb5bba4a1edac.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args mem[140 len 20]
    mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if not ext_call.return_data[64]:
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = arg5.length
    mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 228] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 260] = address(arg2)
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 448
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = 1
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 256] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 288] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 352] = 96
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (4 * ceil32(return_data.size)) + 192
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480] = 32
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 512] = 1
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 544] = address(arg2)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 576] = address(arg3)
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 640] = 224
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 736] = arg4.length
    idx = 0
    s = 128
    t = (32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 768
    while idx < arg4.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 672] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
    mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
    if address(arg3) == address(ext_call.return_data[0]):
        if address(arg3) == ext_call.return_data[12 len 20]:
            _964 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
            idx = 0
            s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
            t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
            while idx < _964:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 804] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 868] = this.address
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 900] = 128
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 932] = (96 * arg4.length) + (32 * _964) + 320
            mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _964) + 964 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10]
            if floor32((96 * arg4.length) + (32 * _964) + 31) + 10 > (96 * arg4.length) + (32 * _964) + 320:
                mem[(161 * arg4.length) + (64 * _964) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), Array(len=(96 * arg4.length) + (32 * _964) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _964) + 31) + 10])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(arg3))
            staticcall address(arg3).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if not ext_code.hash(address(arg3)):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
            if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
                mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _964) + 968] = 0
            call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900 len 4] with:
                 gas gas_remaining wei
                args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904 len (17 * ceil32(return_data.size)) + 64]
            if not return_data.size:
                if not ext_call.success:
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 936] = 32
                    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 968] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900
                       len (127 * arg4.length) + 100
                if not arg4.length:
                require arg4.length >= 32
                require mem[128] == bool(mem[128])
                if mem[128]:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 936] = 42
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 968] = 'SafeERC20: ERC20 operation did n'
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 900
                   len (127 * arg4.length) + 132
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 905] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 937] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901
                   len (127 * arg4.length) + 100
            if not return_data.size:
            require return_data.size >= 32
            require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932])
            if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + 932]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 937] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _964) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 132
        _965 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _965:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 804] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 836] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 932] = (96 * arg4.length) + (32 * _965) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _965) + 964 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _965) + 31) + 10 > (96 * arg4.length) + (32 * _965) + 320:
            mem[(161 * arg4.length) + (64 * _965) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0, address(this.address), 128, (96 * arg4.length) + (32 * _965) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _965) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg3)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _965) + 968] = 0
        call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _965) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    if address(arg3) == ext_call.return_data[12 len 20]:
        _966 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
        while idx < _966:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 804] = 0
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 868] = this.address
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 900] = 128
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 932] = (96 * arg4.length) + (32 * _966) + 320
        mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _966) + 964 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * _966) + 31) + 10 > (96 * arg4.length) + (32 * _966) + 320:
            mem[(161 * arg4.length) + (64 * _966) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, (96 * arg4.length) + (32 * _966) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _966) + 31) + 10]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(arg3))
        staticcall address(arg3).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_code.hash(address(arg3)):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
        if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
            mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _966) + 968] = 0
        call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900 len 4] with:
             gas gas_remaining wei
            args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904 len (17 * ceil32(return_data.size)) + 64]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 936] = 32
                mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 968] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900
                   len (127 * arg4.length) + 100
            if not arg4.length:
            require arg4.length >= 32
            require mem[128] == bool(mem[128])
            if mem[128]:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 936] = 42
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 968] = 'SafeERC20: ERC20 operation did n'
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 900
               len (127 * arg4.length) + 132
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 905] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 937] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901
               len (127 * arg4.length) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932])
        if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + 932]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 937] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _966) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 132
    _967 = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 768] = mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192]
    idx = 0
    s = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 416] + 32
    t = (32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + 800
    while idx < _967:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 804] = 0
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 836] = 0
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 868] = this.address
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 900] = 128
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 932] = (96 * arg4.length) + (32 * _967) + 320
    mem[(32 * arg5.length) + (64 * arg4.length) + (8 * ceil32(return_data.size)) + (32 * _967) + 964 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10]
    if floor32((96 * arg4.length) + (32 * _967) + 31) + 10 > (96 * arg4.length) + (32 * _967) + 320:
        mem[(161 * arg4.length) + (64 * _967) + (32 * arg5.length) + (8 * ceil32(return_data.size)) + 1284] = 0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * _967) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * _967) + 31) + 10]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_code.hash(address(arg3)):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(address(arg3)) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len floor32((16 * ceil32(return_data.size)) + 99)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len floor32((16 * ceil32(return_data.size)) + 99) - 68]
    if floor32((16 * ceil32(return_data.size)) + 99) > (16 * ceil32(return_data.size)) + 68:
        mem[(27 * ceil32(return_data.size)) + (32 * arg5.length) + (64 * arg4.length) + (32 * _967) + 968] = 0
    call address(arg3).mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900 len 4] with:
         gas gas_remaining wei
        args mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904 len (17 * ceil32(return_data.size)) + 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 936] = 32
            mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 968] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 904] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 936] = 42
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 968] = 'SafeERC20: ERC20 operation did n'
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 900
           len (127 * arg4.length) + 132
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 905] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 937] = 32
        mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932] == bool(mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932])
    if mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + 932]:
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 905] = 32
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 937] = 42
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
    mem[(32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (32 * arg5.length) + (64 * arg4.length) + (10 * ceil32(return_data.size)) + (32 * _967) + ceil32(return_data.size) + 901
       len (127 * arg4.length) + 132
}



}
