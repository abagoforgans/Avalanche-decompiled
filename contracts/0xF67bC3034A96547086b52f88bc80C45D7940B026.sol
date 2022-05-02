contract main {




// =====================  Runtime code  =====================


#
#  - sub_c500e214(?)
#  - sub_cf5e39ad(?)
#  - sub_f74f08cd(?)
#
address owner;
address pendingOwner;
address joeAddress;
address wavaxAddress;
address joeFactoryAddress;
address sub_4e57afe0Address;
address sub_2c9e2b05Address;

function wavax() payable {
    return wavaxAddress
}

function sub_2c9e2b05(?) payable {
    return sub_2c9e2b05Address
}

function sub_4e57afe0(?) payable {
    return sub_4e57afe0Address
}

function joeFactory() payable {
    return joeFactoryAddress
}

function owner() payable {
    return owner
}

function joe() payable {
    return joeAddress
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable: caller != pending owner'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_6e57c0fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function transferOwnership(address arg1, bool arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        pendingOwner = arg1
    else:
        if not arg1:
            if not arg3:
                revert with 0, 'Ownable: zero address'
        emit OwnershipTransferred(owner, arg1);
        owner = arg1
        pendingOwner = 0
}

function sub_f260526e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return ext_call.return_data[12 len 20]
}

function sub_2615f326(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 480 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    return ext_call.return_data[12 len 20], ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function sub_ea77e966(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 352 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        return 0
    require 10^uint8(-ext_call.return_data[0] + 18)
    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != ext_call.return_data[0]:
        revert with 0, 'SafeMath: Mul Overflow'
    return (ext_call.return_data[0] * 10^uint8(-ext_call.return_data[0] + 18))
}

function sub_0929b20e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] <= test266151307()
    if ext_call.return_data[0]:
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480
        mem[var32001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
            s = s + 32
            idx = idx - 1
            continue 
    idx = 0
    while idx < ext_call.return_data[0]:
        idx = idx + 1
        continue 
    return 0
}

function sub_7e608a7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 480
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
    mem[var32001] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
    s = var32001
    idx = var32002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 320] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 352] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 384] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 416] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 448] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64]] = mem[ceil32(return_data.size) + 96]
    return memory
      from mem[64]
       len 32
}

function sub_6a94c7d9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 608 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require ext_code.size(address(arg1))
        staticcall address(arg1).totalAllocPoint() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).joePerSec() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return address(arg1), 0, ext_call.return_data[0], ext_call.return_data[0]
    require 10^uint8(-ext_call.return_data[0] + 18)
    if ext_call.return_data[0] * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != ext_call.return_data[0]:
        revert with 0, 'SafeMath: Mul Overflow'
    require ext_code.size(address(arg1))
    staticcall address(arg1).totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).joePerSec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return address(arg1), 
           ext_call.return_data[0] * 10^uint8(-ext_call.return_data[0] + 18),
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getPriceInAvax(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == wavaxAddress:
        return 10^18
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wavaxAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(ext_call.return_data[0]) != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18))
    else:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
        else:
            if 10^uint8(-ext_call.return_data[0] + 18):
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18))
    revert
}

function sub_f1952d8b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[352] = 96
    mem[384] = 96
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    mem[544 len 128] = ext_call.return_data[0 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    mem[ceil32(return_data.size) + 576] = ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    mem[ceil32(return_data.size) + 608] = ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    mem[ceil32(return_data.size) + 640] = ext_call.return_data[96]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(ext_call.return_data[12 len 20])
    staticcall ext_call.return_data[12 len 20].token1() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[256] = ext_call.return_data[12 len 20]
    mem[288] = address(ext_call.return_data[0])
    mem[320] = ext_call.return_data[12 len 20]
    mem[(4 * ceil32(return_data.size)) + 672] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 672
    require return_data.size >= 32
    _24 = mem[(4 * ceil32(return_data.size)) + 672]
    require mem[(4 * ceil32(return_data.size)) + 672] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 703 < (4 * ceil32(return_data.size)) + return_data.size + 672
    _25 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 672]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 672] <= test266151307()
    require (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 672]) + 704 <= test266151307() and ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 672]) + 32 >= 0
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 672] + 672]) + 704
    mem[(6 * ceil32(return_data.size)) + 672] = _25
    require _24 + _25 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 704 len ceil32(_25)] = mem[(4 * ceil32(return_data.size)) + _24 + 704 len ceil32(_25)]
    if ceil32(_25) <= _25:
        mem[352] = (6 * ceil32(return_data.size)) + 672
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _117 = mem[_115]
        require mem[_115] <= test266151307()
        require _115 + mem[_115] + 31 < _115 + return_data.size
        _119 = mem[_115 + mem[_115]]
        require mem[_115 + mem[_115]] <= test266151307()
        require _115 + ceil32(return_data.size) + ceil32(mem[_115 + mem[_115]]) + 32 <= test266151307() and ceil32(mem[_115 + mem[_115]]) + 32 >= 0
        mem[64] = _115 + ceil32(return_data.size) + ceil32(mem[_115 + mem[_115]]) + 32
        mem[_115 + ceil32(return_data.size)] = _119
        require _117 + _119 + 32 <= return_data.size
        mem[_115 + ceil32(return_data.size) + 32 len ceil32(_119)] = mem[_115 + _117 + 32 len ceil32(_119)]
        if ceil32(_119) > _119:
            mem[_115 + ceil32(return_data.size) + _119 + 32] = 0
        mem[384] = _115 + ceil32(return_data.size)
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[268 len 20]
        mem[mem[64] + 64] = uint64(ext_call.return_data[0]) << 96
        mem[mem[64] + 96] = mem[332 len 20]
        mem[mem[64] + 128] = 160
        mem[mem[64] + 192] = _25
        mem[mem[64] + 224 len ceil32(_25)] = mem[(6 * ceil32(return_data.size)) + 704 len ceil32(_25)]
        if ceil32(_25) > _25:
            mem[mem[64] + _25 + 224] = 0
        mem[mem[64] + 160] = ceil32(_25) + 192
        mem[mem[64] + ceil32(_25) + 224] = _119
        mem[mem[64] + ceil32(_25) + 256 len ceil32(_119)] = mem[_115 + ceil32(return_data.size) + 32 len ceil32(_119)]
        if ceil32(_119) > _119:
            mem[mem[64] + ceil32(_25) + _119 + 256] = 0
        return 32, mem[mem[64] + 32], 
               ext_call.return_data[0] << 192,
               mem[mem[64] + 96],
               160,
               ceil32(_25) + 192,
               _25,
               mem[mem[64] + 224 len ceil32(_25) + ceil32(_119) + 32]
    mem[(6 * ceil32(return_data.size)) + _25 + 704] = 0
    mem[352] = (6 * ceil32(return_data.size)) + 672
    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x95d89b41 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_116]
    require mem[_116] <= test266151307()
    require _116 + mem[_116] + 31 < _116 + return_data.size
    _120 = mem[_116 + mem[_116]]
    require mem[_116 + mem[_116]] <= test266151307()
    require _116 + ceil32(return_data.size) + ceil32(mem[_116 + mem[_116]]) + 32 <= test266151307() and ceil32(mem[_116 + mem[_116]]) + 32 >= 0
    mem[64] = _116 + ceil32(return_data.size) + ceil32(mem[_116 + mem[_116]]) + 32
    mem[_116 + ceil32(return_data.size)] = _120
    require _118 + _120 + 32 <= return_data.size
    mem[_116 + ceil32(return_data.size) + 32 len ceil32(_120)] = mem[_116 + _118 + 32 len ceil32(_120)]
    if ceil32(_120) > _120:
        mem[_116 + ceil32(return_data.size) + _120 + 32] = 0
    mem[384] = _116 + ceil32(return_data.size)
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[268 len 20]
    mem[mem[64] + 64] = uint64(ext_call.return_data[0]) << 96
    mem[mem[64] + 96] = mem[332 len 20]
    mem[mem[64] + 128] = 160
    mem[mem[64] + 192] = _25
    mem[mem[64] + 224 len ceil32(_25)] = mem[(6 * ceil32(return_data.size)) + 704 len ceil32(_25)]
    if ceil32(_25) > _25:
        mem[mem[64] + _25 + 224] = 0
    mem[mem[64] + 160] = ceil32(_25) + 192
    mem[mem[64] + ceil32(_25) + 224] = _120
    mem[mem[64] + ceil32(_25) + 256 len ceil32(_120)] = mem[_116 + ceil32(return_data.size) + 32 len ceil32(_120)]
    if ceil32(_120) > _120:
        mem[mem[64] + ceil32(_25) + _120 + 256] = 0
    return 32, mem[mem[64] + 32], 
           ext_call.return_data[0] << 192,
           mem[mem[64] + 96],
           160,
           ceil32(_25) + 192,
           _25,
           mem[mem[64] + 224 len ceil32(_25) + ceil32(_120) + 32]
}

function getAvaxPrice() payable {
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            return (3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return (3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    return (3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3)
}

function getPriceInUsd(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == wavaxAddress:
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        if ext_call.return_data[12 len 20] != wavaxAddress:
                            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not 10^uint8(-ext_call.return_data[0] + 18):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: Add Overflow'
                                if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: Add Overflow'
                                if 10^18 * 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 / 10^18 != 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3:
                                    revert with 0, 'SafeMath: Mul Overflow'
                                return (10^18 * 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 / 10^18)
                            require 10^uint8(-ext_call.return_data[0] + 18)
                            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                revert with 0, 'SafeMath: Mul Overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[0])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 / 10^18 != 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 / 10^18 != 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if 10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18 != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return (10^18 * (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if 10^18 * 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 / 10^18 != 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return (10^18 * 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 / 10^18)
    require ext_code.size(joeFactoryAddress)
    staticcall joeFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wavaxAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if address(ext_call.return_data[0]) != wavaxAddress:
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32])
            revert with 0, 'SafeMath: Mul Overflow'
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                        if ext_call.return_data[12 len 20] != wavaxAddress:
                            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                            if not 10^uint8(-ext_call.return_data[0] + 18):
                                require Mask(112, 0, ext_call.return_data[32])
                                if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: Add Overflow'
                                if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                    revert with 0, 'SafeMath: Add Overflow'
                                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                    return 0
                                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                                if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3:
                                    revert with 0, 'SafeMath: Mul Overflow'
                                return (3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                            require 10^uint8(-ext_call.return_data[0] + 18)
                            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Mul Overflow'
                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                revert with 0, 'SafeMath: Mul Overflow'
                            require Mask(112, 0, ext_call.return_data[32])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[0])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[0])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return (3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18)
        if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return (3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0])
        revert with 0, 'SafeMath: Mul Overflow'
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                    if ext_call.return_data[12 len 20] != wavaxAddress:
                        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not 10^uint8(-ext_call.return_data[0] + 18):
                            require Mask(112, 0, ext_call.return_data[32])
                            if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'SafeMath: Add Overflow'
                            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                                return 0
                            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                            if 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3:
                                revert with 0, 'SafeMath: Mul Overflow'
                            return (3 * 0 / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                        require 10^uint8(-ext_call.return_data[0] + 18)
                        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Mul Overflow'
                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                            revert with 0, 'SafeMath: Mul Overflow'
                        require Mask(112, 0, ext_call.return_data[32])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[0])
                        if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[0])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    staticcall 0xed8cbd9f0ce3c6986b22002f03c6475ceb7a6256.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
                if ext_call.return_data[12 len 20] != wavaxAddress:
                    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not 10^uint8(-ext_call.return_data[0] + 18):
                        require Mask(112, 0, ext_call.return_data[32])
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: Add Overflow'
                        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                            return 0
                        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                            revert with 0, 'SafeMath: Mul Overflow'
                        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                    require 10^uint8(-ext_call.return_data[0] + 18)
                    if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Mul Overflow'
                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                        revert with 0, 'SafeMath: Mul Overflow'
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[0])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return (3 * 0 / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if 2 * 0 / Mask(112, 0, ext_call.return_data[0]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((0 / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x87dee1cc9ffd464b79e058ba20387c1984aed86a)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
            if ext_call.return_data[12 len 20] != wavaxAddress:
                staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not 10^uint8(-ext_call.return_data[0] + 18):
                    require Mask(112, 0, ext_call.return_data[32])
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: Add Overflow'
                    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                        return 0
                    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                    if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                        revert with 0, 'SafeMath: Mul Overflow'
                    return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
                require 10^uint8(-ext_call.return_data[0] + 18)
                if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Mul Overflow'
                if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                    revert with 0, 'SafeMath: Mul Overflow'
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[0])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    staticcall 0x87dee1cc9ffd464b79e058ba20387c1984aed86a.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
        if ext_call.return_data[12 len 20] != wavaxAddress:
            staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not 10^uint8(-ext_call.return_data[0] + 18):
                require Mask(112, 0, ext_call.return_data[32])
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: Add Overflow'
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: Add Overflow'
                if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                    return 0
                require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
                if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                    revert with 0, 'SafeMath: Mul Overflow'
                return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
            require 10^uint8(-ext_call.return_data[0] + 18)
            if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Mul Overflow'
            if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
                revert with 0, 'SafeMath: Mul Overflow'
            require Mask(112, 0, ext_call.return_data[32])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[0])
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (2 * 0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[0])
        if (10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xa389f9430876455c36478deea9769b7ca4e3ddb1)
    if ext_call.return_data[12 len 20] != wavaxAddress:
        staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not 10^uint8(-ext_call.return_data[0] + 18):
            require Mask(112, 0, ext_call.return_data[32])
            if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'SafeMath: Add Overflow'
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) < 0 / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: Add Overflow'
            if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
                return 0
            require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
            if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3:
                revert with 0, 'SafeMath: Mul Overflow'
            return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
        require 10^uint8(-ext_call.return_data[0] + 18)
        if Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Mul Overflow'
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18):
            revert with 0, 'SafeMath: Mul Overflow'
        require Mask(112, 0, ext_call.return_data[32])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) < 10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (10^18 * Mask(112, 0, ext_call.return_data[0]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[32])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    staticcall 0xa389f9430876455c36478deea9769b7ca4e3ddb1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not 10^uint8(-ext_call.return_data[0] + 18):
        require Mask(112, 0, ext_call.return_data[0])
        if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) < 0 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'SafeMath: Add Overflow'
        if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
            return 0
        require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
        if (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != (2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3:
            revert with 0, 'SafeMath: Mul Overflow'
        return ((2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0])) + (0 / Mask(112, 0, ext_call.return_data[0])) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
    require 10^uint8(-ext_call.return_data[0] + 18)
    if Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^uint8(-ext_call.return_data[0] + 18) != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'SafeMath: Mul Overflow'
    if 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 != Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        revert with 0, 'SafeMath: Mul Overflow'
    require Mask(112, 0, ext_call.return_data[0])
    if 2 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) < 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'SafeMath: Add Overflow'
    if not 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18):
        return 0
    require 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18)
    if 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) != 3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3:
        revert with 0, 'SafeMath: Mul Overflow'
    return (3 * 10^18 * Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / Mask(112, 0, ext_call.return_data[0]) / 3 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) * 10^uint8(-ext_call.return_data[0] + 18) / 10^18)
}



}
