contract main {




// =====================  Runtime code  =====================


address governorAddress; offset 16
uint256 stor0; offset 16
address pendingGovernorAddress;
mapping of uint8 stor67;
address bankAddress;
address sub_5997af12Address;
address factoryAddress;
address routerAddress;
address sub_83bb7957Address;
address wavaxAddress;
array of address sub_6cfdb480;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor67[Mask(32, 224, arg1)])
}

function governor() payable {
    return address(governorAddress)
}

function wavax() payable {
    return wavaxAddress
}

function sub_5997af12(?) payable {
    return sub_5997af12Address
}

function sub_6cfdb480(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_6cfdb480[arg1])
    return address(sub_6cfdb480[arg1][arg2])
}

function bank() payable {
    return bankAddress
}

function sub_83bb7957(?) payable {
    return sub_83bb7957Address
}

function factory() payable {
    return factoryAddress
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_835c4ca6(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    wavaxAddress = arg1
}

function setBank(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    bankAddress = arg1
}

function sub_0107a9e7(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    sub_5997af12Address = arg1
}

function sub_b9b01f19(?) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    sub_83bb7957Address = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    routerAddress = arg1
}

function setFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    factoryAddress = arg1
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0, 'not the pending governor'
    pendingGovernorAddress = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    wavaxAddress = arg1
    bankAddress = arg2
    sub_5997af12Address = arg3
    factoryAddress = arg4
    routerAddress = arg5
    sub_83bb7957Address = arg6
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_f81ad7ae(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    uint256(sub_6cfdb480[address(arg1)]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(sub_6cfdb480[address(arg1)]) > idx:
            address(sub_6cfdb480[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(sub_6cfdb480[address(arg1)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(sub_6cfdb480[address(arg1)]) > idx:
            address(sub_6cfdb480[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
}

function sub_51d17bdf(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x6d6af33400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(bankAddress)
    staticcall bankAddress.getPositionDebts(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _4 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[64] = (32 * _7) + ceil32(return_data.size) + 128
    _20 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + (32 * mem[uint32(arg1), mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _7) + ceil32(return_data.size) + 128] = mem[uint32(arg1), mem[132 len 28] + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 160 len floor32(mem[_20 + 96])] = mem[_20 + 128 len floor32(mem[_20 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require 0 < mem[(32 * _7) + ceil32(return_data.size) + 128]
    return mem[ceil32(return_data.size) + 140 len 20], mem[(32 * _7) + ceil32(return_data.size) + 160]
}

function test1() payable {
    mem[64] = 96
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var18003 len 4] with:
            gas gas_remaining wei
           args mem[var18003 + 4 len var18004 - 4]
    mem[var18005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var22003 >= mem[var22002]:
        return var22004
    mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
    mem[100] = var24001
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var26003 len 4] with:
            gas gas_remaining wei
           args mem[var26003 + 4 len var26004 - 4]
    mem[var26005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x5787d29100000000000000000000000000000000000000000000000000000000
    mem[100] = var30004
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var32003 len 4] with:
            gas gas_remaining wei
           args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    if mem[var36002] > var36004:
        staticcall bankAddress.mem[var43003 len 4] with:
                gas gas_remaining wei
               args mem[var43003 + 4 len var43004 - 4]
        mem[var43005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var47003 >= mem[var47002]:
            return (var38004 + 1)
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var49001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var51003 len 4] with:
                gas gas_remaining wei
               args mem[var51003 + 4 len var51004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        staticcall bankAddress.mem[var42003 len 4] with:
                gas gas_remaining wei
               args mem[var42003 + 4 len var42004 - 4]
        mem[var42005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var46003 >= mem[var46002]:
            return var46004
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var48001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var50003 len 4] with:
                gas gas_remaining wei
               args mem[var50003 + 4 len var50004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        # nil
}

function sub_a08443cd(?) payable {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    mem[96] = 0x6d6af33400000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(bankAddress)
    staticcall bankAddress.getPositionDebts(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _6 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[64] = (32 * _9) + ceil32(return_data.size) + 128
    _151 = uint32(arg1), mem[132 len 28]
    require uint32(arg1), mem[132 len 28] <= 4294967296
    require uint32(arg1), mem[132 len 28] + 32 <= return_data.size
    require mem[uint32(arg1), mem[132 len 28] + 96] <= 4294967296 and uint32(arg1), mem[132 len 28] + (32 * mem[uint32(arg1), mem[132 len 28] + 96]) + 32 <= return_data.size
    mem[(32 * _9) + ceil32(return_data.size) + 128] = mem[uint32(arg1), mem[132 len 28] + 96]
    _155 = mem[_151 + 96]
    mem[(32 * _9) + ceil32(return_data.size) + 160 len floor32(mem[_151 + 96])] = mem[_151 + 128 len floor32(mem[_151 + 96])]
    require 0 < mem[ceil32(return_data.size) + 96]
    require 0 < mem[(32 * _9) + ceil32(return_data.size) + 128]
    require ext_code.size(bankAddress)
    staticcall bankAddress.getPositionInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_5997af12Address)
    staticcall sub_5997af12Address.getUnderlyingToken(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not mem[(32 * _9) + ceil32(return_data.size) + 160]:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == mem[ceil32(return_data.size) + 140 len 20]:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, this.address, 128, 192, arg1, mem[ceil32(return_data.size) + 140 len 20], address(ext_call.return_data[0]), 0, address(ext_call.return_data[32]), ext_call.return_data[64]
    else:
        if arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / mem[(32 * _9) + ceil32(return_data.size) + 160] != arg2:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[(32 * _155) + (32 * _9) + ceil32(return_data.size) + 288 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == mem[ceil32(return_data.size) + 140 len 20]:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] != mem[ceil32(return_data.size) + 140 len 20]:
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, this.address, 128, 192, arg1, mem[ceil32(return_data.size) + 140 len 20], address(ext_call.return_data[0]), arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, address(ext_call.return_data[32]), ext_call.return_data[64]
        else:
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, 0, this.address, 128, 192, arg1, mem[ceil32(return_data.size) + 140 len 20], address(ext_call.return_data[0]), arg2 * mem[(32 * _9) + ceil32(return_data.size) + 160] / 10000, address(ext_call.return_data[32]), ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2e3abf48(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _159 = mem[(32 * idx) + 128]
        if address(governorAddress) != msg.sender:
            revert with 0, 'not the governor'
        mem[mem[64]] = 0x6d6af33400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _159
        require ext_code.size(bankAddress)
        staticcall bankAddress.getPositionDebts(uint256 rg1) with:
                gas gas_remaining wei
               args _159
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _164 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _165 = mem[_164]
        require mem[_164] <= 4294967296
        require mem[_164] + 32 <= return_data.size
        require mem[_164 + mem[_164]] <= 4294967296 and mem[_164] + (32 * mem[_164 + mem[_164]]) + 32 <= return_data.size
        mem[_164 + ceil32(return_data.size)] = mem[_164 + mem[_164]]
        _168 = mem[_164 + _165]
        s = 0
        while s < 32 * _168:
            mem[s + _164 + ceil32(return_data.size) + 32] = mem[s + _164 + _165 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _168) + _164 + ceil32(return_data.size) + 32
        _310 = mem[_164 + 32]
        require mem[_164 + 32] <= 4294967296
        require mem[_164 + 32] + 32 <= return_data.size
        require mem[_164 + mem[_164 + 32]] <= 4294967296 and mem[_164 + 32] + (32 * mem[_164 + mem[_164 + 32]]) + 32 <= return_data.size
        mem[(32 * _168) + _164 + ceil32(return_data.size) + 32] = mem[_164 + mem[_164 + 32]]
        _314 = mem[_164 + _310]
        s = 0
        while s < 32 * _314:
            mem[s + (32 * _168) + _164 + ceil32(return_data.size) + 64] = mem[s + _164 + _310 + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 64
        require 0 < mem[_164 + ceil32(return_data.size)]
        require 0 < mem[(32 * _168) + _164 + ceil32(return_data.size) + 32]
        _455 = mem[(32 * _168) + _164 + ceil32(return_data.size) + 64]
        require ext_code.size(bankAddress)
        staticcall bankAddress.getPositionInfo(uint256 rg1) with:
                gas gas_remaining wei
               args _159
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(sub_5997af12Address)
        staticcall sub_5997af12Address.getUnderlyingToken(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not mem[(32 * _168) + _164 + ceil32(return_data.size) + 64]:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if ext_call.return_data[12 len 20] == mem[_164 + ceil32(return_data.size) + 44 len 20]:
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
            else:
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 96] = _159
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 128] = mem[_164 + ceil32(return_data.size) + 44 len 20]
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 192] = 0
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 224] = address(ext_call.return_data[32])
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 256] = ext_call.return_data[64]
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 64] = 192
            mem[64] = (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 288
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 292] = 0
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 324] = 0
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 356] = this.address
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 388] = 128
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 420] = 192
            s = 0
            while s < 192:
                mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452] = mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, this.address, 128, 192, mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        if arg2 * mem[(32 * _168) + _164 + ceil32(return_data.size) + 64] / mem[(32 * _168) + _164 + ceil32(return_data.size) + 64] != arg2:
            revert with 0, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 27],
                        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 192 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[12 len 20] == mem[_164 + ceil32(return_data.size) + 44 len 20]:
            staticcall address(ext_call.return_data[0]).token1() with:
                    gas gas_remaining wei
        else:
            staticcall address(ext_call.return_data[0]).token0() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 96] = _159
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 128] = mem[_164 + ceil32(return_data.size) + 44 len 20]
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 192] = arg2 * mem[(32 * _168) + _164 + ceil32(return_data.size) + 64] / 10000
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 224] = address(ext_call.return_data[32])
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 256] = ext_call.return_data[64]
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 64] = 192
        mem[64] = (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 288
        mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if ext_call.return_data[12 len 20] != mem[_164 + ceil32(return_data.size) + 44 len 20]:
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 292] = 0
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 324] = arg2 * _455 / 10000
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 356] = this.address
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 388] = 128
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 420] = 192
            s = 0
            while s < 192:
                mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452] = mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, arg2 * _455 / 10000, this.address, 128, 192, mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452 len 192]
        else:
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 292] = arg2 * _455 / 10000
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 324] = 0
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 356] = this.address
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 388] = 128
            mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 420] = 192
            s = 0
            while s < 192:
                mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452] = mem[s + (32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 96]
                s = s + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args arg2 * _455 / 10000, 0, this.address, 128, 192, mem[(32 * _314) + (32 * _168) + _164 + ceil32(return_data.size) + 452 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        s = 193
        continue 
}

function sub_49e87816(?) payable {
    mem[64] = 96
    mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
    require ext_code.size(bankAddress)
    staticcall bankAddress.mem[var20003 len 4] with:
            gas gas_remaining wei
           args mem[var20003 + 4 len var20004 - 4]
    mem[var20005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var24003 >= mem[var24002]:
        require var24004 <= test266151307()
        mem[96] = var24004
        mem[64] = (32 * var24004) + 128
        if not var24004:
            mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var32003 len 4] with:
                    gas gas_remaining wei
                   args mem[var32003 + 4 len var32004 - 4]
            mem[var32005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var36003 >= mem[var36002]:
                mem[(32 * var24004) + 128] = 32
                mem[(32 * var24004) + 160] = var24004
                mem[(32 * var24004) + 192 len floor32(var24004)] = mem[128 len floor32(var24004)]
                return memory
                  from (32 * var24004) + 128
                   len (96 * var24004) + 64
            mem[(32 * var24004) + 128] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var38001
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var40003 len 4] with:
                    gas gas_remaining wei
                   args mem[var40003 + 4 len var40004 - 4]
            mem[var40005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * var24004) + 128] = 0x5787d29100000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var44004
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var46003 len 4] with:
                    gas gas_remaining wei
                   args mem[var46003 + 4 len var46004 - 4]
            mem[var46005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var50002] > var50004:
                if not var53001:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var53005 < var24004
                    require ext_code.size(bankAddress)
                    # nil
            else:
                if var50001:
                    require var54004 < var24004
                    # nil
                else:
                    mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var58003 len 4] with:
                            gas gas_remaining wei
                           args mem[var58003 + 4 len var58004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
        else:
            mem[128 len 32 * var24004] = call.data[calldata.size len 32 * var24004]
            mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var33003 len 4] with:
                    gas gas_remaining wei
                   args mem[var33003 + 4 len var33004 - 4]
            mem[var33005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if var37003 >= mem[var37002]:
                mem[(32 * var24004) + 128] = 32
                mem[(32 * var24004) + 160] = var24004
                mem[(32 * var24004) + 192 len floor32(var24004)] = call.data[calldata.size len floor32(var24004)]
                return memory
                  from (32 * var24004) + 128
                   len (96 * var24004) + 64
            mem[(32 * var24004) + 128] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var39001
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var41003 len 4] with:
                    gas gas_remaining wei
                   args mem[var41003 + 4 len var41004 - 4]
            mem[var41005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * var24004) + 128] = 0x5787d29100000000000000000000000000000000000000000000000000000000
            mem[(32 * var24004) + 132] = var45004
            require ext_code.size(bankAddress)
            staticcall bankAddress.mem[var47003 len 4] with:
                    gas gas_remaining wei
                   args mem[var47003 + 4 len var47004 - 4]
            mem[var47005] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[var51002] > var51004:
                if not var54001:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var54005 < var24004
                    require ext_code.size(bankAddress)
                    # nil
            else:
                if var51001:
                    require var55004 < var24004
                    # nil
                else:
                    mem[(32 * var24004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var59003 len 4] with:
                            gas gas_remaining wei
                           args mem[var59003 + 4 len var59004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
    else:
        mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
        mem[100] = var26001
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var28003 len 4] with:
                gas gas_remaining wei
               args mem[var28003 + 4 len var28004 - 4]
        mem[var28005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x5787d29100000000000000000000000000000000000000000000000000000000
        mem[100] = var32004
        require ext_code.size(bankAddress)
        staticcall bankAddress.mem[var34003 len 4] with:
                gas gas_remaining wei
               args mem[var34003 + 4 len var34004 - 4]
        mem[var34005] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0x899346c700000000000000000000000000000000000000000000000000000000
        require ext_code.size(bankAddress)
        if mem[var38002] > var38004:
            if not var41001:
                staticcall bankAddress.mem[var46003 len 4] with:
                        gas gas_remaining wei
                       args mem[var46003 + 4 len var46004 - 4]
                mem[var46005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var50003 < mem[var50002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var41005 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
            else:
                staticcall bankAddress.mem[var47003 len 4] with:
                        gas gas_remaining wei
                       args mem[var47003 + 4 len var47004 - 4]
                mem[var47005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var51003 < mem[var51002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var41005 + 1 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
        else:
            if var39001:
                staticcall bankAddress.mem[var47003 len 4] with:
                        gas gas_remaining wei
                       args mem[var47003 + 4 len var47004 - 4]
                mem[var47005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var51003 < mem[var51002]:
                    require ext_code.size(bankAddress)
                    # nil
                else:
                    require var42004 + 1 <= test266151307()
                    require ext_code.size(bankAddress)
                    # nil
            else:
                staticcall bankAddress.mem[var46003 len 4] with:
                        gas gas_remaining wei
                       args mem[var46003 + 4 len var46004 - 4]
                mem[var46005] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if var50003 < mem[var50002]:
                    mem[96] = 0xb60dae1200000000000000000000000000000000000000000000000000000000
                    mem[100] = var52001
                    require ext_code.size(bankAddress)
                    staticcall bankAddress.mem[var54003 len 4] with:
                            gas gas_remaining wei
                           args mem[var54003 + 4 len var54004 - 4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    # nil
                else:
                    require var50004 <= test266151307()
                    mem[96] = var50004
                    mem[64] = (32 * var50004) + 128
                    if not var50004:
                        mem[(32 * var50004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(bankAddress)
                        staticcall bankAddress.mem[var58003 len 4] with:
                                gas gas_remaining wei
                               args mem[var58003 + 4 len var58004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
                    else:
                        mem[128 len 32 * var50004] = call.data[calldata.size len 32 * var50004]
                        mem[(32 * var50004) + 128] = 0x899346c700000000000000000000000000000000000000000000000000000000
                        require ext_code.size(bankAddress)
                        staticcall bankAddress.mem[var59003 len 4] with:
                                gas gas_remaining wei
                               args mem[var59003 + 4 len var59004 - 4]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        # nil
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = 2
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 192
    if not arg2:
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        mem[192] = 2
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg4.length >= 192
        if not arg2:
            if not arg2:
                mem[224] = address(ext_call.return_data[0])
                mem[256] = address(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args bankAddress, cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bankAddress)
                call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_5997af12Address)
                staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args this.address, cd[(arg4 + 196)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_5997af12Address)
                call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 196)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                call msg.sender.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not arg2:
                    if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2897 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3041 = mem[_2897 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2897 + 384])] = mem[_2897 + 416 len floor32(mem[_2897 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3041) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3041) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3041) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3041) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3041) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3041) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3041) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3041) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3041) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5633 = mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3041) + ceil32(return_data.size) + mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3041) + ceil32(return_data.size) + mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3041) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3041) + ceil32(return_data.size) + mem[(32 * _3041) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3041) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3041) + ceil32(return_data.size) + _5633 + 512])] = mem[(32 * _3041) + ceil32(return_data.size) + _5633 + 544 len floor32(mem[(32 * _3041) + ceil32(return_data.size) + _5633 + 512])]
                        require 0 < mem[(32 * _3041) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3041) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2899 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3042 = mem[_2899 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2899 + 384])] = mem[_2899 + 416 len floor32(mem[_2899 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3042) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3042) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3042) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3042) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3042) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3042) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3042) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3042) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3042) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5635 = mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3042) + ceil32(return_data.size) + mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3042) + ceil32(return_data.size) + mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3042) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3042) + ceil32(return_data.size) + mem[(32 * _3042) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3042) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3042) + ceil32(return_data.size) + _5635 + 512])] = mem[(32 * _3042) + ceil32(return_data.size) + _5635 + 544 len floor32(mem[(32 * _3042) + ceil32(return_data.size) + _5635 + 512])]
                        require 0 < mem[(32 * _3042) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3042) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                else:
                    if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2901 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3043 = mem[_2901 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2901 + 384])] = mem[_2901 + 416 len floor32(mem[_2901 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3043) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3043) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3043) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3043) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3043) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3043) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3043) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3043) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3043) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5637 = mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3043) + ceil32(return_data.size) + mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3043) + ceil32(return_data.size) + mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3043) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3043) + ceil32(return_data.size) + mem[(32 * _3043) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3043) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3043) + ceil32(return_data.size) + _5637 + 512])] = mem[(32 * _3043) + ceil32(return_data.size) + _5637 + 544 len floor32(mem[(32 * _3043) + ceil32(return_data.size) + _5637 + 512])]
                        require 0 < mem[(32 * _3043) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3043) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2903 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3044 = mem[_2903 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2903 + 384])] = mem[_2903 + 416 len floor32(mem[_2903 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3044) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3044) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3044) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3044) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3044) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3044) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3044) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3044) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3044) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5639 = mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3044) + ceil32(return_data.size) + mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3044) + ceil32(return_data.size) + mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3044) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3044) + ceil32(return_data.size) + mem[(32 * _3044) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3044) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3044) + ceil32(return_data.size) + _5639 + 512])] = mem[(32 * _3044) + ceil32(return_data.size) + _5639 + 544 len floor32(mem[(32 * _3044) + ceil32(return_data.size) + _5639 + 512])]
                        require 0 < mem[(32 * _3044) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3044) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
            else:
                mem[224] = ext_call.return_data[12 len 20]
                mem[256] = address(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args bankAddress, cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bankAddress)
                call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_5997af12Address)
                staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args this.address, cd[(arg4 + 196)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_5997af12Address)
                call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 196)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                call msg.sender.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not arg2:
                    if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2907 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3046 = mem[_2907 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2907 + 384])] = mem[_2907 + 416 len floor32(mem[_2907 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3046) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3046) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3046) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3046) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3046) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3046) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3046) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3046) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3046) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5643 = mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3046) + ceil32(return_data.size) + mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3046) + ceil32(return_data.size) + mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3046) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3046) + ceil32(return_data.size) + mem[(32 * _3046) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3046) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3046) + ceil32(return_data.size) + _5643 + 512])] = mem[(32 * _3046) + ceil32(return_data.size) + _5643 + 544 len floor32(mem[(32 * _3046) + ceil32(return_data.size) + _5643 + 512])]
                        require 0 < mem[(32 * _3046) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3046) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2905 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3045 = mem[_2905 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2905 + 384])] = mem[_2905 + 416 len floor32(mem[_2905 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3045) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3045) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3045) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3045) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3045) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3045) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3045) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3045) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3045) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5641 = mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3045) + ceil32(return_data.size) + mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3045) + ceil32(return_data.size) + mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3045) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3045) + ceil32(return_data.size) + mem[(32 * _3045) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3045) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3045) + ceil32(return_data.size) + _5641 + 512])] = mem[(32 * _3045) + ceil32(return_data.size) + _5641 + 544 len floor32(mem[(32 * _3045) + ceil32(return_data.size) + _5641 + 512])]
                        require 0 < mem[(32 * _3045) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3045) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                else:
                    if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2911 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3048 = mem[_2911 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2911 + 384])] = mem[_2911 + 416 len floor32(mem[_2911 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3048) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3048) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3048) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3048) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3048) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3048) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3048) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3048) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3048) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5647 = mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3048) + ceil32(return_data.size) + mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3048) + ceil32(return_data.size) + mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3048) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3048) + ceil32(return_data.size) + mem[(32 * _3048) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3048) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3048) + ceil32(return_data.size) + _5647 + 512])] = mem[(32 * _3048) + ceil32(return_data.size) + _5647 + 544 len floor32(mem[(32 * _3048) + ceil32(return_data.size) + _5647 + 512])]
                        require 0 < mem[(32 * _3048) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3048) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2909 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3047 = mem[_2909 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2909 + 384])] = mem[_2909 + 416 len floor32(mem[_2909 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3047) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3047) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3047) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3047) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3047) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3047) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3047) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3047) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3047) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5645 = mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3047) + ceil32(return_data.size) + mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3047) + ceil32(return_data.size) + mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3047) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3047) + ceil32(return_data.size) + mem[(32 * _3047) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3047) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3047) + ceil32(return_data.size) + _5645 + 512])] = mem[(32 * _3047) + ceil32(return_data.size) + _5645 + 544 len floor32(mem[(32 * _3047) + ceil32(return_data.size) + _5645 + 512])]
                        require 0 < mem[(32 * _3047) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3047) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
        else:
            if not arg2:
                mem[224] = address(ext_call.return_data[0])
                mem[256] = address(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args bankAddress, cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bankAddress)
                call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_5997af12Address)
                staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args this.address, cd[(arg4 + 196)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_5997af12Address)
                call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 196)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                call msg.sender.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not arg2:
                    if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2913 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3049 = mem[_2913 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2913 + 384])] = mem[_2913 + 416 len floor32(mem[_2913 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3049) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3049) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3049) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3049) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3049) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3049) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3049) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3049) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3049) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5649 = mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3049) + ceil32(return_data.size) + mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3049) + ceil32(return_data.size) + mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3049) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3049) + ceil32(return_data.size) + mem[(32 * _3049) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3049) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3049) + ceil32(return_data.size) + _5649 + 512])] = mem[(32 * _3049) + ceil32(return_data.size) + _5649 + 544 len floor32(mem[(32 * _3049) + ceil32(return_data.size) + _5649 + 512])]
                        require 0 < mem[(32 * _3049) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3049) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2915 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3050 = mem[_2915 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2915 + 384])] = mem[_2915 + 416 len floor32(mem[_2915 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3050) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3050) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3050) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3050) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3050) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3050) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3050) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3050) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3050) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5651 = mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3050) + ceil32(return_data.size) + mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3050) + ceil32(return_data.size) + mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3050) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3050) + ceil32(return_data.size) + mem[(32 * _3050) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3050) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3050) + ceil32(return_data.size) + _5651 + 512])] = mem[(32 * _3050) + ceil32(return_data.size) + _5651 + 544 len floor32(mem[(32 * _3050) + ceil32(return_data.size) + _5651 + 512])]
                        require 0 < mem[(32 * _3050) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3050) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                else:
                    if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2917 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3051 = mem[_2917 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2917 + 384])] = mem[_2917 + 416 len floor32(mem[_2917 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3051) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3051) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3051) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3051) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3051) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3051) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3051) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3051) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3051) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5653 = mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3051) + ceil32(return_data.size) + mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3051) + ceil32(return_data.size) + mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3051) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3051) + ceil32(return_data.size) + mem[(32 * _3051) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3051) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3051) + ceil32(return_data.size) + _5653 + 512])] = mem[(32 * _3051) + ceil32(return_data.size) + _5653 + 544 len floor32(mem[(32 * _3051) + ceil32(return_data.size) + _5653 + 512])]
                        require 0 < mem[(32 * _3051) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3051) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2919 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3052 = mem[_2919 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2919 + 384])] = mem[_2919 + 416 len floor32(mem[_2919 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3052) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3052) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3052) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3052) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3052) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3052) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3052) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3052) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3052) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5655 = mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3052) + ceil32(return_data.size) + mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3052) + ceil32(return_data.size) + mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3052) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3052) + ceil32(return_data.size) + mem[(32 * _3052) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3052) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3052) + ceil32(return_data.size) + _5655 + 512])] = mem[(32 * _3052) + ceil32(return_data.size) + _5655 + 544 len floor32(mem[(32 * _3052) + ceil32(return_data.size) + _5655 + 512])]
                        require 0 < mem[(32 * _3052) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3052) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
            else:
                mem[224] = ext_call.return_data[12 len 20]
                mem[256] = address(ext_call.return_data[0])
                require ext_code.size(address(cd[(arg4 + 68)]))
                call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args bankAddress, cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(bankAddress)
                call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_5997af12Address)
                staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args this.address, cd[(arg4 + 196)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_5997af12Address)
                call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 196)], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                staticcall msg.sender.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(msg.sender)
                call msg.sender.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args routerAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if not arg2:
                    if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2921 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3053 = mem[_2921 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2921 + 384])] = mem[_2921 + 416 len floor32(mem[_2921 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3053) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3053) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3053) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3053) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3053) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3053) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3053) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3053) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3053) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5657 = mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3053) + ceil32(return_data.size) + mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3053) + ceil32(return_data.size) + mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3053) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3053) + ceil32(return_data.size) + mem[(32 * _3053) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3053) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3053) + ceil32(return_data.size) + _5657 + 512])] = mem[(32 * _3053) + ceil32(return_data.size) + _5657 + 544 len floor32(mem[(32 * _3053) + ceil32(return_data.size) + _5657 + 512])]
                        require 0 < mem[(32 * _3053) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3053) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2923 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3054 = mem[_2923 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2923 + 384])] = mem[_2923 + 416 len floor32(mem[_2923 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3054) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3054) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3054) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3054) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3054) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3054) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3054) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3054) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3054) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5659 = mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3054) + ceil32(return_data.size) + mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3054) + ceil32(return_data.size) + mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3054) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3054) + ceil32(return_data.size) + mem[(32 * _3054) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3054) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3054) + ceil32(return_data.size) + _5659 + 512])] = mem[(32 * _3054) + ceil32(return_data.size) + _5659 + 544 len floor32(mem[(32 * _3054) + ceil32(return_data.size) + _5659 + 512])]
                        require 0 < mem[(32 * _3054) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3054) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                else:
                    if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                        if ext_call.return_data[32] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[32]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2927 = mem[384 len 4], ext_call.return_data[32 len 28]
                        require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                        _3056 = mem[_2927 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2927 + 384])] = mem[_2927 + 416 len floor32(mem[_2927 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3056) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3056) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3056) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3056) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3056) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3056) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3056) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3056) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3056) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5663 = mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3056) + ceil32(return_data.size) + mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3056) + ceil32(return_data.size) + mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3056) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3056) + ceil32(return_data.size) + mem[(32 * _3056) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3056) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3056) + ceil32(return_data.size) + _5663 + 512])] = mem[(32 * _3056) + ceil32(return_data.size) + _5663 + 544 len floor32(mem[(32 * _3056) + ceil32(return_data.size) + _5663 + 512])]
                        require 0 < mem[(32 * _3056) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3056) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
                    else:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'debtTokenAmt'
                        mem[288] = 2
                        mem[320] = address(cd[(arg4 + 68)])
                        mem[352] = address(cd[(arg4 + 100)])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[388] = ext_call.return_data[0]
                        mem[420] = 0
                        mem[484] = this.address
                        mem[516] = block.timestamp
                        mem[452] = 160
                        mem[548] = 2
                        mem[580 len 0] = None
                        require ext_code.size(routerAddress)
                        call routerAddress.0x38ed1739 with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 384
                        require return_data.size >= 32
                        _2925 = mem[384 len 4], ext_call.return_data[0 len 28]
                        require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                        _3055 = mem[_2925 + 384]
                        mem[ceil32(return_data.size) + 416 len floor32(mem[_2925 + 384])] = mem[_2925 + 416 len floor32(mem[_2925 + 384])]
                        require ext_code.size(address(cd[(arg4 + 100)]))
                        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _3055) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                        mem[(32 * _3055) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[(32 * _3055) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                        mem[(32 * _3055) + ceil32(return_data.size) + 548] = 64
                        mem[(32 * _3055) + ceil32(return_data.size) + 580] = 2
                        mem[(32 * _3055) + ceil32(return_data.size) + 612 len 0] = None
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                gas gas_remaining wei
                               args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3055) + ceil32(return_data.size) + 612 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _3055) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _3055) + (2 * ceil32(return_data.size)) + 512
                        require return_data.size >= 32
                        _5661 = mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                        require mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                        require mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _3055) + ceil32(return_data.size) + mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3055) + ceil32(return_data.size) + mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                        mem[(32 * _3055) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3055) + ceil32(return_data.size) + mem[(32 * _3055) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                        mem[(32 * _3055) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3055) + ceil32(return_data.size) + _5661 + 512])] = mem[(32 * _3055) + ceil32(return_data.size) + _5661 + 544 len floor32(mem[(32 * _3055) + ceil32(return_data.size) + _5661 + 512])]
                        require 0 < mem[(32 * _3055) + (2 * ceil32(return_data.size)) + 512]
                        if mem[(32 * _3055) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                            revert with 0, 'repay!'
    else:
        require not arg3
        mem[128] = address(ext_call.return_data[0])
        mem[160] = address(ext_call.return_data[0])
        mem[192] = 2
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg4.length >= 192
        if not arg2:
            if not arg2:
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2931 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3058 = mem[_2931 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2931 + 384])] = mem[_2931 + 416 len floor32(mem[_2931 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3058) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3058) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3058) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3058) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3058) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3058) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3058) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3058) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3058) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5667 = mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3058) + ceil32(return_data.size) + mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3058) + ceil32(return_data.size) + mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3058) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3058) + ceil32(return_data.size) + mem[(32 * _3058) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3058) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3058) + ceil32(return_data.size) + _5667 + 512])] = mem[(32 * _3058) + ceil32(return_data.size) + _5667 + 544 len floor32(mem[(32 * _3058) + ceil32(return_data.size) + _5667 + 512])]
                            require 0 < mem[(32 * _3058) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3058) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2929 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3057 = mem[_2929 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2929 + 384])] = mem[_2929 + 416 len floor32(mem[_2929 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3057) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3057) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3057) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3057) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3057) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3057) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3057) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3057) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3057) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5665 = mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3057) + ceil32(return_data.size) + mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3057) + ceil32(return_data.size) + mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3057) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3057) + ceil32(return_data.size) + mem[(32 * _3057) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3057) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3057) + ceil32(return_data.size) + _5665 + 512])] = mem[(32 * _3057) + ceil32(return_data.size) + _5665 + 544 len floor32(mem[(32 * _3057) + ceil32(return_data.size) + _5665 + 512])]
                            require 0 < mem[(32 * _3057) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3057) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2935 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3060 = mem[_2935 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2935 + 384])] = mem[_2935 + 416 len floor32(mem[_2935 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3060) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3060) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3060) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3060) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3060) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3060) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3060) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3060) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3060) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5671 = mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3060) + ceil32(return_data.size) + mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3060) + ceil32(return_data.size) + mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3060) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3060) + ceil32(return_data.size) + mem[(32 * _3060) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3060) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3060) + ceil32(return_data.size) + _5671 + 512])] = mem[(32 * _3060) + ceil32(return_data.size) + _5671 + 544 len floor32(mem[(32 * _3060) + ceil32(return_data.size) + _5671 + 512])]
                            require 0 < mem[(32 * _3060) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3060) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2933 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3059 = mem[_2933 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2933 + 384])] = mem[_2933 + 416 len floor32(mem[_2933 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3059) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3059) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3059) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3059) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3059) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3059) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3059) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3059) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3059) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5669 = mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3059) + ceil32(return_data.size) + mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3059) + ceil32(return_data.size) + mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3059) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3059) + ceil32(return_data.size) + mem[(32 * _3059) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3059) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3059) + ceil32(return_data.size) + _5669 + 512])] = mem[(32 * _3059) + ceil32(return_data.size) + _5669 + 544 len floor32(mem[(32 * _3059) + ceil32(return_data.size) + _5669 + 512])]
                            require 0 < mem[(32 * _3059) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3059) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2939 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3062 = mem[_2939 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2939 + 384])] = mem[_2939 + 416 len floor32(mem[_2939 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3062) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3062) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3062) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3062) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3062) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3062) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3062) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3062) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3062) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5675 = mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3062) + ceil32(return_data.size) + mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3062) + ceil32(return_data.size) + mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3062) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3062) + ceil32(return_data.size) + mem[(32 * _3062) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3062) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3062) + ceil32(return_data.size) + _5675 + 512])] = mem[(32 * _3062) + ceil32(return_data.size) + _5675 + 544 len floor32(mem[(32 * _3062) + ceil32(return_data.size) + _5675 + 512])]
                            require 0 < mem[(32 * _3062) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3062) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2937 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3061 = mem[_2937 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2937 + 384])] = mem[_2937 + 416 len floor32(mem[_2937 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3061) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3061) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3061) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3061) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3061) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3061) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3061) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3061) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3061) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5673 = mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3061) + ceil32(return_data.size) + mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3061) + ceil32(return_data.size) + mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3061) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3061) + ceil32(return_data.size) + mem[(32 * _3061) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3061) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3061) + ceil32(return_data.size) + _5673 + 512])] = mem[(32 * _3061) + ceil32(return_data.size) + _5673 + 544 len floor32(mem[(32 * _3061) + ceil32(return_data.size) + _5673 + 512])]
                            require 0 < mem[(32 * _3061) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3061) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2941 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3063 = mem[_2941 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2941 + 384])] = mem[_2941 + 416 len floor32(mem[_2941 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3063) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3063) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3063) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3063) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3063) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3063) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3063) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3063) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3063) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5677 = mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3063) + ceil32(return_data.size) + mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3063) + ceil32(return_data.size) + mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3063) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3063) + ceil32(return_data.size) + mem[(32 * _3063) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3063) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3063) + ceil32(return_data.size) + _5677 + 512])] = mem[(32 * _3063) + ceil32(return_data.size) + _5677 + 544 len floor32(mem[(32 * _3063) + ceil32(return_data.size) + _5677 + 512])]
                            require 0 < mem[(32 * _3063) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3063) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2943 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3064 = mem[_2943 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2943 + 384])] = mem[_2943 + 416 len floor32(mem[_2943 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3064) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3064) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3064) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3064) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3064) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3064) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3064) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3064) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3064) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5679 = mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3064) + ceil32(return_data.size) + mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3064) + ceil32(return_data.size) + mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3064) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3064) + ceil32(return_data.size) + mem[(32 * _3064) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3064) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3064) + ceil32(return_data.size) + _5679 + 512])] = mem[(32 * _3064) + ceil32(return_data.size) + _5679 + 544 len floor32(mem[(32 * _3064) + ceil32(return_data.size) + _5679 + 512])]
                            require 0 < mem[(32 * _3064) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3064) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
            else:
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    if arg2:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args bankAddress, cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bankAddress)
                        call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5997af12Address)
                        staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args this.address, cd[(arg4 + 196)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_5997af12Address)
                        call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 196)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        staticcall msg.sender.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        call msg.sender.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(routerAddress)
                        call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2949 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3067 = mem[_2949 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2949 + 384])] = mem[_2949 + 416 len floor32(mem[_2949 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3067) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3067) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3067) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3067) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3067) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3067) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3067) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3067) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3067) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5685 = mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3067) + ceil32(return_data.size) + mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3067) + ceil32(return_data.size) + mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3067) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3067) + ceil32(return_data.size) + mem[(32 * _3067) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3067) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3067) + ceil32(return_data.size) + _5685 + 512])] = mem[(32 * _3067) + ceil32(return_data.size) + _5685 + 544 len floor32(mem[(32 * _3067) + ceil32(return_data.size) + _5685 + 512])]
                            require 0 < mem[(32 * _3067) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3067) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2951 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3068 = mem[_2951 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2951 + 384])] = mem[_2951 + 416 len floor32(mem[_2951 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3068) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3068) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3068) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3068) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3068) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3068) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3068) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3068) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3068) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5687 = mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3068) + ceil32(return_data.size) + mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3068) + ceil32(return_data.size) + mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3068) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3068) + ceil32(return_data.size) + mem[(32 * _3068) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3068) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3068) + ceil32(return_data.size) + _5687 + 512])] = mem[(32 * _3068) + ceil32(return_data.size) + _5687 + 544 len floor32(mem[(32 * _3068) + ceil32(return_data.size) + _5687 + 512])]
                            require 0 < mem[(32 * _3068) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3068) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args bankAddress, cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bankAddress)
                        call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5997af12Address)
                        staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args this.address, cd[(arg4 + 196)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_5997af12Address)
                        call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 196)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        staticcall msg.sender.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        call msg.sender.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(routerAddress)
                        call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2945 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3065 = mem[_2945 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2945 + 384])] = mem[_2945 + 416 len floor32(mem[_2945 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3065) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3065) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3065) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3065) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3065) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3065) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3065) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3065) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3065) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5681 = mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3065) + ceil32(return_data.size) + mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3065) + ceil32(return_data.size) + mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3065) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3065) + ceil32(return_data.size) + mem[(32 * _3065) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3065) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3065) + ceil32(return_data.size) + _5681 + 512])] = mem[(32 * _3065) + ceil32(return_data.size) + _5681 + 544 len floor32(mem[(32 * _3065) + ceil32(return_data.size) + _5681 + 512])]
                            require 0 < mem[(32 * _3065) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3065) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2947 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3066 = mem[_2947 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2947 + 384])] = mem[_2947 + 416 len floor32(mem[_2947 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3066) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3066) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3066) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3066) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3066) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3066) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3066) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3066) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3066) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5683 = mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3066) + ceil32(return_data.size) + mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3066) + ceil32(return_data.size) + mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3066) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3066) + ceil32(return_data.size) + mem[(32 * _3066) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3066) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3066) + ceil32(return_data.size) + _5683 + 512])] = mem[(32 * _3066) + ceil32(return_data.size) + _5683 + 544 len floor32(mem[(32 * _3066) + ceil32(return_data.size) + _5683 + 512])]
                            require 0 < mem[(32 * _3066) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3066) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2953 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3069 = mem[_2953 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2953 + 384])] = mem[_2953 + 416 len floor32(mem[_2953 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3069) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3069) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3069) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3069) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3069) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3069) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3069) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3069) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3069) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5689 = mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3069) + ceil32(return_data.size) + mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3069) + ceil32(return_data.size) + mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3069) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3069) + ceil32(return_data.size) + mem[(32 * _3069) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3069) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3069) + ceil32(return_data.size) + _5689 + 512])] = mem[(32 * _3069) + ceil32(return_data.size) + _5689 + 544 len floor32(mem[(32 * _3069) + ceil32(return_data.size) + _5689 + 512])]
                            require 0 < mem[(32 * _3069) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3069) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2955 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3070 = mem[_2955 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2955 + 384])] = mem[_2955 + 416 len floor32(mem[_2955 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3070) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3070) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3070) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3070) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3070) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3070) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3070) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3070) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3070) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5691 = mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3070) + ceil32(return_data.size) + mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3070) + ceil32(return_data.size) + mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3070) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3070) + ceil32(return_data.size) + mem[(32 * _3070) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3070) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3070) + ceil32(return_data.size) + _5691 + 512])] = mem[(32 * _3070) + ceil32(return_data.size) + _5691 + 544 len floor32(mem[(32 * _3070) + ceil32(return_data.size) + _5691 + 512])]
                            require 0 < mem[(32 * _3070) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3070) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2957 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3071 = mem[_2957 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2957 + 384])] = mem[_2957 + 416 len floor32(mem[_2957 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3071) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3071) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3071) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3071) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3071) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3071) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3071) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3071) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3071) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5693 = mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3071) + ceil32(return_data.size) + mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3071) + ceil32(return_data.size) + mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3071) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3071) + ceil32(return_data.size) + mem[(32 * _3071) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3071) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3071) + ceil32(return_data.size) + _5693 + 512])] = mem[(32 * _3071) + ceil32(return_data.size) + _5693 + 544 len floor32(mem[(32 * _3071) + ceil32(return_data.size) + _5693 + 512])]
                            require 0 < mem[(32 * _3071) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3071) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2959 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3072 = mem[_2959 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2959 + 384])] = mem[_2959 + 416 len floor32(mem[_2959 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3072) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3072) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3072) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3072) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3072) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3072) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3072) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3072) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3072) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5695 = mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3072) + ceil32(return_data.size) + mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3072) + ceil32(return_data.size) + mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3072) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3072) + ceil32(return_data.size) + mem[(32 * _3072) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3072) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3072) + ceil32(return_data.size) + _5695 + 512])] = mem[(32 * _3072) + ceil32(return_data.size) + _5695 + 544 len floor32(mem[(32 * _3072) + ceil32(return_data.size) + _5695 + 512])]
                            require 0 < mem[(32 * _3072) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3072) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
        else:
            if not arg2:
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2963 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3074 = mem[_2963 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2963 + 384])] = mem[_2963 + 416 len floor32(mem[_2963 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3074) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3074) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3074) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3074) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3074) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3074) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3074) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3074) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3074) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5699 = mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3074) + ceil32(return_data.size) + mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3074) + ceil32(return_data.size) + mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3074) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3074) + ceil32(return_data.size) + mem[(32 * _3074) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3074) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3074) + ceil32(return_data.size) + _5699 + 512])] = mem[(32 * _3074) + ceil32(return_data.size) + _5699 + 544 len floor32(mem[(32 * _3074) + ceil32(return_data.size) + _5699 + 512])]
                            require 0 < mem[(32 * _3074) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3074) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2961 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3073 = mem[_2961 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2961 + 384])] = mem[_2961 + 416 len floor32(mem[_2961 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3073) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3073) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3073) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3073) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3073) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3073) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3073) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3073) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3073) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5697 = mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3073) + ceil32(return_data.size) + mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3073) + ceil32(return_data.size) + mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3073) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3073) + ceil32(return_data.size) + mem[(32 * _3073) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3073) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3073) + ceil32(return_data.size) + _5697 + 512])] = mem[(32 * _3073) + ceil32(return_data.size) + _5697 + 544 len floor32(mem[(32 * _3073) + ceil32(return_data.size) + _5697 + 512])]
                            require 0 < mem[(32 * _3073) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3073) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2965 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3075 = mem[_2965 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2965 + 384])] = mem[_2965 + 416 len floor32(mem[_2965 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3075) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3075) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3075) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3075) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3075) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3075) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3075) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3075) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3075) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5701 = mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3075) + ceil32(return_data.size) + mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3075) + ceil32(return_data.size) + mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3075) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3075) + ceil32(return_data.size) + mem[(32 * _3075) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3075) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3075) + ceil32(return_data.size) + _5701 + 512])] = mem[(32 * _3075) + ceil32(return_data.size) + _5701 + 544 len floor32(mem[(32 * _3075) + ceil32(return_data.size) + _5701 + 512])]
                            require 0 < mem[(32 * _3075) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3075) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2967 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3076 = mem[_2967 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2967 + 384])] = mem[_2967 + 416 len floor32(mem[_2967 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3076) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3076) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3076) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3076) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3076) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3076) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3076) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3076) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3076) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5703 = mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3076) + ceil32(return_data.size) + mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3076) + ceil32(return_data.size) + mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3076) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3076) + ceil32(return_data.size) + mem[(32 * _3076) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3076) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3076) + ceil32(return_data.size) + _5703 + 512])] = mem[(32 * _3076) + ceil32(return_data.size) + _5703 + 544 len floor32(mem[(32 * _3076) + ceil32(return_data.size) + _5703 + 512])]
                            require 0 < mem[(32 * _3076) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3076) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2969 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3077 = mem[_2969 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2969 + 384])] = mem[_2969 + 416 len floor32(mem[_2969 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3077) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3077) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3077) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3077) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3077) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3077) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3077) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3077) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3077) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5705 = mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3077) + ceil32(return_data.size) + mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3077) + ceil32(return_data.size) + mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3077) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3077) + ceil32(return_data.size) + mem[(32 * _3077) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3077) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3077) + ceil32(return_data.size) + _5705 + 512])] = mem[(32 * _3077) + ceil32(return_data.size) + _5705 + 544 len floor32(mem[(32 * _3077) + ceil32(return_data.size) + _5705 + 512])]
                            require 0 < mem[(32 * _3077) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3077) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2971 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3078 = mem[_2971 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2971 + 384])] = mem[_2971 + 416 len floor32(mem[_2971 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3078) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3078) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3078) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3078) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3078) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3078) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3078) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3078) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3078) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5707 = mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3078) + ceil32(return_data.size) + mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3078) + ceil32(return_data.size) + mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3078) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3078) + ceil32(return_data.size) + mem[(32 * _3078) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3078) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3078) + ceil32(return_data.size) + _5707 + 512])] = mem[(32 * _3078) + ceil32(return_data.size) + _5707 + 544 len floor32(mem[(32 * _3078) + ceil32(return_data.size) + _5707 + 512])]
                            require 0 < mem[(32 * _3078) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3078) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2975 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3080 = mem[_2975 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2975 + 384])] = mem[_2975 + 416 len floor32(mem[_2975 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3080) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3080) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3080) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3080) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3080) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3080) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3080) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3080) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3080) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5711 = mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3080) + ceil32(return_data.size) + mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3080) + ceil32(return_data.size) + mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3080) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3080) + ceil32(return_data.size) + mem[(32 * _3080) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3080) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3080) + ceil32(return_data.size) + _5711 + 512])] = mem[(32 * _3080) + ceil32(return_data.size) + _5711 + 544 len floor32(mem[(32 * _3080) + ceil32(return_data.size) + _5711 + 512])]
                            require 0 < mem[(32 * _3080) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3080) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2973 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3079 = mem[_2973 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2973 + 384])] = mem[_2973 + 416 len floor32(mem[_2973 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3079) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3079) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3079) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3079) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3079) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3079) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3079) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3079) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3079) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5709 = mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3079) + ceil32(return_data.size) + mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3079) + ceil32(return_data.size) + mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3079) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3079) + ceil32(return_data.size) + mem[(32 * _3079) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3079) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3079) + ceil32(return_data.size) + _5709 + 512])] = mem[(32 * _3079) + ceil32(return_data.size) + _5709 + 544 len floor32(mem[(32 * _3079) + ceil32(return_data.size) + _5709 + 512])]
                            require 0 < mem[(32 * _3079) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3079) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
            else:
                if not arg2:
                    mem[224] = address(ext_call.return_data[0])
                    mem[256] = address(ext_call.return_data[0])
                    require ext_code.size(address(cd[(arg4 + 68)]))
                    call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args bankAddress, cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(bankAddress)
                    call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_5997af12Address)
                    staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args this.address, cd[(arg4 + 196)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_5997af12Address)
                    call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 196)], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    staticcall msg.sender.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(msg.sender)
                    call msg.sender.approve(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args routerAddress, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if not arg2:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2979 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3082 = mem[_2979 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2979 + 384])] = mem[_2979 + 416 len floor32(mem[_2979 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3082) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3082) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3082) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3082) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3082) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3082) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3082) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3082) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3082) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5715 = mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3082) + ceil32(return_data.size) + mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3082) + ceil32(return_data.size) + mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3082) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3082) + ceil32(return_data.size) + mem[(32 * _3082) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3082) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3082) + ceil32(return_data.size) + _5715 + 512])] = mem[(32 * _3082) + ceil32(return_data.size) + _5715 + 544 len floor32(mem[(32 * _3082) + ceil32(return_data.size) + _5715 + 512])]
                            require 0 < mem[(32 * _3082) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3082) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2977 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3081 = mem[_2977 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2977 + 384])] = mem[_2977 + 416 len floor32(mem[_2977 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3081) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3081) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3081) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3081) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3081) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3081) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3081) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3081) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3081) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5713 = mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3081) + ceil32(return_data.size) + mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3081) + ceil32(return_data.size) + mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3081) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3081) + ceil32(return_data.size) + mem[(32 * _3081) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3081) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3081) + ceil32(return_data.size) + _5713 + 512])] = mem[(32 * _3081) + ceil32(return_data.size) + _5713 + 544 len floor32(mem[(32 * _3081) + ceil32(return_data.size) + _5713 + 512])]
                            require 0 < mem[(32 * _3081) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3081) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        if address(cd[(arg4 + 100)]) == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2983 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3084 = mem[_2983 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2983 + 384])] = mem[_2983 + 416 len floor32(mem[_2983 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3084) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3084) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3084) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3084) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3084) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3084) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3084) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3084) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3084) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5719 = mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3084) + ceil32(return_data.size) + mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3084) + ceil32(return_data.size) + mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3084) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3084) + ceil32(return_data.size) + mem[(32 * _3084) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3084) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3084) + ceil32(return_data.size) + _5719 + 512])] = mem[(32 * _3084) + ceil32(return_data.size) + _5719 + 544 len floor32(mem[(32 * _3084) + ceil32(return_data.size) + _5719 + 512])]
                            require 0 < mem[(32 * _3084) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3084) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2981 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3083 = mem[_2981 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2981 + 384])] = mem[_2981 + 416 len floor32(mem[_2981 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3083) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3083) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3083) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3083) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3083) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3083) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3083) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3083) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3083) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5717 = mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3083) + ceil32(return_data.size) + mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3083) + ceil32(return_data.size) + mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3083) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3083) + ceil32(return_data.size) + mem[(32 * _3083) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3083) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3083) + ceil32(return_data.size) + _5717 + 512])] = mem[(32 * _3083) + ceil32(return_data.size) + _5717 + 544 len floor32(mem[(32 * _3083) + ceil32(return_data.size) + _5717 + 512])]
                            require 0 < mem[(32 * _3083) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3083) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                else:
                    mem[224] = ext_call.return_data[12 len 20]
                    if not arg2:
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args bankAddress, cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bankAddress)
                        call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5997af12Address)
                        staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args this.address, cd[(arg4 + 196)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_5997af12Address)
                        call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 196)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        staticcall msg.sender.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        call msg.sender.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(routerAddress)
                        call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2985 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3085 = mem[_2985 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2985 + 384])] = mem[_2985 + 416 len floor32(mem[_2985 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3085) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3085) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3085) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3085) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3085) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3085) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3085) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3085) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3085) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5721 = mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3085) + ceil32(return_data.size) + mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3085) + ceil32(return_data.size) + mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3085) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3085) + ceil32(return_data.size) + mem[(32 * _3085) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3085) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3085) + ceil32(return_data.size) + _5721 + 512])] = mem[(32 * _3085) + ceil32(return_data.size) + _5721 + 544 len floor32(mem[(32 * _3085) + ceil32(return_data.size) + _5721 + 512])]
                            require 0 < mem[(32 * _3085) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3085) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2987 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3086 = mem[_2987 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2987 + 384])] = mem[_2987 + 416 len floor32(mem[_2987 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3086) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3086) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3086) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3086) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3086) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3086) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3086) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3086) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3086) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5723 = mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3086) + ceil32(return_data.size) + mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3086) + ceil32(return_data.size) + mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3086) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3086) + ceil32(return_data.size) + mem[(32 * _3086) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3086) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3086) + ceil32(return_data.size) + _5723 + 512])] = mem[(32 * _3086) + ceil32(return_data.size) + _5723 + 544 len floor32(mem[(32 * _3086) + ceil32(return_data.size) + _5723 + 512])]
                            require 0 < mem[(32 * _3086) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3086) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                    else:
                        mem[256] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[(arg4 + 68)]))
                        call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args bankAddress, cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(bankAddress)
                        call bankAddress.liquidate(uint256 rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], address(cd[(arg4 + 68)]), cd[(arg4 + 132)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_5997af12Address)
                        staticcall sub_5997af12Address.balanceOf(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args this.address, cd[(arg4 + 196)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_5997af12Address)
                        call sub_5997af12Address.burn(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 196)], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        staticcall msg.sender.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(msg.sender)
                        call msg.sender.approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args routerAddress, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(routerAddress)
                        call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), address(ext_call.return_data[0]), ext_call.return_data[0], 0, 0, this.address, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if address(cd[(arg4 + 100)]) != address(ext_call.return_data[0]):
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[0]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2989 = mem[384 len 4], ext_call.return_data[0 len 28]
                            require mem[384 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[0 len 28] + 384]
                            _3087 = mem[_2989 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2989 + 384])] = mem[_2989 + 416 len floor32(mem[_2989 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3087) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3087) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3087) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3087) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3087) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3087) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3087) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3087) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3087) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5725 = mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3087) + ceil32(return_data.size) + mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3087) + ceil32(return_data.size) + mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3087) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3087) + ceil32(return_data.size) + mem[(32 * _3087) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3087) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3087) + ceil32(return_data.size) + _5725 + 512])] = mem[(32 * _3087) + ceil32(return_data.size) + _5725 + 544 len floor32(mem[(32 * _3087) + ceil32(return_data.size) + _5725 + 512])]
                            require 0 < mem[(32 * _3087) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3087) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
                        else:
                            if ext_call.return_data[32] <= 0:
                                revert with 0, 'debtTokenAmt'
                            mem[288] = 2
                            mem[320] = address(cd[(arg4 + 68)])
                            mem[352] = address(cd[(arg4 + 100)])
                            require ext_code.size(address(cd[(arg4 + 68)]))
                            call address(cd[(arg4 + 68)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args routerAddress, ext_call.return_data[32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[388] = ext_call.return_data[32]
                            mem[420] = 0
                            mem[484] = this.address
                            mem[516] = block.timestamp
                            mem[452] = 160
                            mem[548] = 2
                            mem[580 len 0] = None
                            require ext_code.size(routerAddress)
                            call routerAddress.0x38ed1739 with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, this.address, block.timestamp, 2, mem[580 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 384
                            require return_data.size >= 32
                            _2991 = mem[384 len 4], ext_call.return_data[32 len 28]
                            require mem[384 len 4], ext_call.return_data[32 len 28] <= 4294967296
                            require mem[384 len 4], ext_call.return_data[32 len 28] + 32 <= return_data.size
                            require mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384] <= 4294967296 and mem[384 len 4], ext_call.return_data[32 len 28] + (32 * mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], ext_call.return_data[32 len 28] + 384]
                            _3088 = mem[_2991 + 384]
                            mem[ceil32(return_data.size) + 416 len floor32(mem[_2991 + 384])] = mem[_2991 + 416 len floor32(mem[_2991 + 384])]
                            require ext_code.size(address(cd[(arg4 + 100)]))
                            staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _3088) + ceil32(return_data.size) + 480] = address(cd[(arg4 + 68)])
                            mem[(32 * _3088) + ceil32(return_data.size) + 512] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                            mem[(32 * _3088) + ceil32(return_data.size) + 516] = cd[(arg4 + 132)]
                            mem[(32 * _3088) + ceil32(return_data.size) + 548] = 64
                            mem[(32 * _3088) + ceil32(return_data.size) + 580] = 2
                            mem[(32 * _3088) + ceil32(return_data.size) + 612 len 0] = None
                            require ext_code.size(routerAddress)
                            staticcall routerAddress.getAmountsIn(uint256 rg1, address[] rg2) with:
                                    gas gas_remaining wei
                                   args cd[(arg4 + 132)], Array(len=2, data=mem[(32 * _3088) + ceil32(return_data.size) + 612 len 64])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _3088) + ceil32(return_data.size) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _3088) + (2 * ceil32(return_data.size)) + 512
                            require return_data.size >= 32
                            _5727 = mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32
                            require mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 <= 4294967296
                            require mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _3088) + ceil32(return_data.size) + mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512] <= 4294967296 and mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + (32 * mem[(32 * _3088) + ceil32(return_data.size) + mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]) + 32 <= return_data.size
                            mem[(32 * _3088) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _3088) + ceil32(return_data.size) + mem[(32 * _3088) + ceil32(return_data.size) + 512 len 4], Mask(224, 32, cd[(arg4 + 132)]) >> 32 + 512]
                            mem[(32 * _3088) + (2 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _3088) + ceil32(return_data.size) + _5727 + 512])] = mem[(32 * _3088) + ceil32(return_data.size) + _5727 + 544 len floor32(mem[(32 * _3088) + ceil32(return_data.size) + _5727 + 512])]
                            require 0 < mem[(32 * _3088) + (2 * ceil32(return_data.size)) + 512]
                            if mem[(32 * _3088) + (2 * ceil32(return_data.size)) + 544] <= ext_call.return_data[0]:
                                revert with 0, 'repay!'
    revert with 0, 'SafeMath: subtraction overflow'
}



}
