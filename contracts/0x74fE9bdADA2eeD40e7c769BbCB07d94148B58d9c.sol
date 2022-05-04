contract main {




// =====================  Runtime code  =====================


#
#  - sub_4f721e99(?)
#  - withdraw(bool arg1, address arg2, address arg3, uint256 arg4)
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
const UniswapV2Router = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const getBlockNumber = block.number

const getCloseFactor = ext_call.return_data[0]

const expScale = 10^18

const cETH = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const factory = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const WETH_ADDRESS = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const COMPTROLLER = 0x486af39519b4dc9a7fccd318217352830e8ad9b4


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
    staticcall address(arg2).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.closeFactorMantissa() with:
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
    staticcall address(_5).borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args address(_3)
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.closeFactorMantissa() with:
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
        require 2 < arg4.length
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require 1 < arg4.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require 0 < arg4.length
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address arg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
        mem[(32 * arg4.length) + (7 * ceil32(return_data.size)) + 192] = arg5.length
        mem[(32 * arg4.length) + (7 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 448
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 224] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 256] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 288] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 352] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 384] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (7 * ceil32(return_data.size)) + 192
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 512] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 544] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 576] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 640] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 736] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 768
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 672] = 0
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 768] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 800
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 804] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 836] = 0
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 868] = this.address
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 900] = 128
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 932] = (96 * arg4.length) + (32 * arg5.length) + 320
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 964 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
            mem[(161 * arg4.length) + (98 * arg5.length) + (11 * ceil32(return_data.size)) + 1284] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 128] = 26
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < arg1:
        require 2 < arg4.length
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * arg4.length) + (2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require 1 < arg4.length
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].accrueInterest() with:
             gas gas_remaining wei
        mem[(32 * arg4.length) + (4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require 0 < arg4.length
        require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
        staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.getAccountLiquidity(address arg1) with:
                gas gas_remaining wei
               args mem[140 len 20]
        mem[(32 * arg4.length) + (6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        if not ext_call.return_data[64]:
        mem[(32 * arg4.length) + (7 * ceil32(return_data.size)) + 192] = arg5.length
        mem[(32 * arg4.length) + (7 * ceil32(return_data.size)) + 224 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 228] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 260] = address(arg2)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg3), address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * arg5.length) + (32 * arg4.length) + (10 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 448
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 224] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 256] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 288] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 320] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 352] = 96
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 384] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 416] = (32 * arg4.length) + (7 * ceil32(return_data.size)) + 192
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480] = 32
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 512] = 1
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 544] = address(arg2)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 576] = address(arg3)
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 608] = address(ext_call.return_data[0])
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 640] = 224
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 736] = arg4.length
        idx = 0
        s = 128
        t = (32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 768
        while idx < arg4.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 672] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
        mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 704] = (32 * arg4.length) + 256
        mem[(32 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 768] = arg5.length
        idx = 0
        s = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 416] + 32
        t = (32 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 800
        while idx < arg5.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 800] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if address(arg3) == address(ext_call.return_data[0]):
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 804] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 868] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 900] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 932] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 964 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (11 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), Array(len=(96 * arg4.length) + (32 * arg5.length) + 320, data=mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10])
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 836] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 868] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 900] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 932] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 964 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (11 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
        else:
            mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 804] = 0
            if address(arg3) == ext_call.return_data[12 len 20]:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * ext_call.return_data[0] / 10^18
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 868] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 900] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 932] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 964 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (11 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0] * ext_call.return_data[0] / 10^18, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
            else:
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 836] = 0
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 868] = this.address
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 900] = 128
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 932] = (96 * arg4.length) + (32 * arg5.length) + 320
                mem[(64 * arg5.length) + (64 * arg4.length) + (11 * ceil32(return_data.size)) + 964 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10] = mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
                if floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10 > (96 * arg4.length) + (32 * arg5.length) + 320:
                    mem[(161 * arg4.length) + (98 * arg5.length) + (11 * ceil32(return_data.size)) + 1284] = 0
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, (96 * arg4.length) + (32 * arg5.length) + 320, mem[(32 * arg5.length) + (32 * arg4.length) + (11 * ceil32(return_data.size)) + 480 len floor32((96 * arg4.length) + (32 * arg5.length) + 31) + 10]
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
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900 len 28]
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 968] = 0
    call address(arg3).mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 904 len 64]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 904] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 936] = 32
            mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 968] = 'SafeERC20: low-level call failed'
            revert with memory
              from (64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900
               len (127 * arg4.length) + 100
        if not arg4.length:
        require arg4.length >= 32
        require mem[128] == bool(mem[128])
        if mem[128]:
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 904] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 936] = 42
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 968] = 'SafeERC20: ERC20 operation did n'
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 1000] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 900
           len (127 * arg4.length) + 132
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 932 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] = 32
        mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 969] = 'SafeERC20: low-level call failed'
        revert with memory
          from (64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 901
           len (127 * arg4.length) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 932] == bool(mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 932])
    if mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + 932]:
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 901] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = 32
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] = 42
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 969] = 'SafeERC20: ERC20 operation did n'
    mem[(64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 1001] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (64 * arg5.length) + (64 * arg4.length) + (12 * ceil32(return_data.size)) + ceil32(return_data.size) + 901
       len (127 * arg4.length) + 132
}



}
